project "App"
    kind "ConsoleApp"
    language "C++"

    links {
       "Core",
    }

    files {
       "../app/**.h",
       "../app/**.hpp",
       "../app/**.cc",
       "../app/**.cpp",
    }
