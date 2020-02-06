module LibFreeType

using CEnum
using FreeType2_jll

const ptrdiff_t = Cint
const SHRT_MAX = 32767
const USHRT_MAX = 65535
const CHAR_BIT = 8
const INT_MAX = typemax(Cint)
const INT_MIN = typemin(Cint)
const UINT_MAX = typemax(Cuint)
const UINT_MIN = typemin(Cuint)
const LONG_MAX = typemax(Clong)
const LONG_MIN = typemin(Clong)
const ULONG_MAX = typemax(Culong)

include(joinpath(@__DIR__, "..", "gen", "libfreetype_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libfreetype_api.jl"))

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "FT_") || startswith(string(s), "ft_")
       @eval export $s
   end
end

end # module
