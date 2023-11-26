project "core"
    kind "StaticLib"
    language "C++"

    files {
       "../core/**.h",
       "../core/**.hpp",
       "../core/**.cc",
       "../core/**.cpp",
    }
