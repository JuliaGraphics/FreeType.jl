module LibFreeType

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("FreeType was not build properly. Please run Pkg.build(\"FreeType\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

using CEnum

include(joinpath(@__DIR__, "..", "gen", "libfreetype_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libfreetype_api.jl"))

# export everything
foreach(names(@__MODULE__, all=true)) do s
   if startswith(string(s), "FT_") || startswith(string(s), "ft_")
       @eval export $s
   end
end

end # module
