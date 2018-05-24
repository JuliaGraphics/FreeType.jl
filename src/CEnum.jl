# This file is part of the VulkanCore.jl package which is licensed under the MIT "Expat" License:
#Copyright (c) 2016: Valentin Churavy.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
# Software, and to permit persons to whom the Software is furnished to do so, subject
# to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
# FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

module CEnum

abstract type Cenum{T} end
Base.:|(a::T, b::T) where {T<:Cenum} = UInt32(a) | UInt32(b)
Base.:&(a::T, b::T) where {T<:Cenum} = UInt32(a) & UInt32(b)
Base.:(==)(a::Integer, b::Cenum) = a == UInt32(b)
Base.:(==)(a::Cenum, b::Integer) = b == a

# typemin and typemax won't change for an enum, so we might as well inline them per type
function Base.typemax{T<:Cenum}(::Type{T})
    last(enum_values(T))
end
function Base.typemin{T<:Cenum}(::Type{T})
    first(enum_values(T))
end
Base.convert{T<:Integer}(::Type{Integer}, x::Cenum{T}) = Base.bitcast(T, x)
Base.convert{T<:Integer,T2<:Integer}(::Type{T}, x::Cenum{T2}) = convert(T, Base.bitcast(T2, x))

Base.write(io::IO, x::Cenum) = write(io, Int32(x))
Base.read(io::IO, ::Type{T}) where {T<:Cenum} = T(read(io, Int32))

enum_values{T<:Cenum}(::T) = enum_values(T)
enum_names{T<:Cenum}(::T) = enum_names(T)

function is_member{T<:Cenum}(::Type{T}, x::Integer)
    is_member(T, enum_values(T), x)
end
@inline is_member{T<:Cenum}(::Type{T}, r::UnitRange, x::Integer) = x in r
@inline function is_member{T<:Cenum}(::Type{T}, values::Tuple, x::Integer)
    lo, hi = typemin(T), typemax(T)
    x<lo || x>hi && return false
    for val in values
        val == x && return true
        val > x && return false # is sorted
    end
    return false
end

function enum_name(x::T) where T<:Cenum
    index = findfirst(enum_values(T), Int(x))
    if index != 0
        return enum_names(T)[index]
    end
    error("Invalid enum: $(Int(x)), name not found")
end
function Base.show(io::IO, x::Cenum)
    print(io, enum_name(x), "($(Int(x)))")
end

function islinear(array)
    isempty(array) && return false # false, really? it's kinda undefined?
    lastval = first(array)
    for val in Iterators.rest(array, 2)
        val-lastval == 1 || return false
    end
    return true
end


macro cenum(name, args...)
    if !isa(name, Symbol)
        error("Name must be symbol or Name{Type}. Found: $name")
    end
    lastval = -1
    name_values = map([args...]) do arg
        if isa(arg, Symbol)
            lastval += 1
            val = lastval
            sym = arg
        elseif arg.head == :(=) || arg.head == :kw
            sym,val = arg.args
        else
            error("Expression of type $arg not supported. Try only symbol or name = value")
        end
        (sym, val)
    end
    sort!(name_values, by=last) # sort for values
    values = map(last, name_values)

    if islinear(values) # optimize for linear values
        values = :($(first(values)):$(last(values)))
    else
        values = :(tuple($(values...)))
    end
    value_block = Expr(:block)
    typename = esc(name)
    for (ename, value) in name_values
        push!(value_block.args, :(const $(esc(ename)) = $typename($value)))
    end

    expr = quote
        primitive type $typename <: CEnum.Cenum{UInt32} 32 end
        function Base.convert(::Type{$typename}, x::Integer)
            is_member($typename, x) || Base.Enums.enum_argument_error($(Expr(:quote, name)), x)
            Base.bitcast($typename, convert(Int32, x))
        end
        CEnum.enum_names(::Type{$typename}) = tuple($(map(x-> Expr(:quote, first(x)), name_values)...))
        CEnum.enum_values(::Type{$typename}) = $values
        $value_block
    end
    expr
end
export @cenum

end # module
