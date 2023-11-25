-- Blueprint 0: a C++ template
-- author: midnight-the-rock

workspace "Blueprint"
    configurations {
       "debug",
       "release",
    }

filter "configurations:debug"
    defines { "DEBUG" }
    symbols "On"

filter "configurations:release"
    defines { "NDEBUG" }
    optimize "On"

include "../app"
include "../core"
