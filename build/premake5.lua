-- Blueprint 0: a C++ template
-- author: midnight-the-rock

local project_name = "blueprint"

workspace (project_name)
    configurations {
       "debug",
       "release",
    }

include "../app"
include "../core"

project (project_name)
    kind "ConsoleApp"
    links {
      "app",
      "core",
    }

filter "configurations:debug"
    defines { "DEBUG" }
    buildoptions {
      "-ggdb",
      "-std=c++20",
    }

filter "configurations:release"
    defines { "NDEBUG" }
    buildoptions {
      "-O3",
      "-std=c++20",
      "-march=native",
      "-mtune=native",
    }
