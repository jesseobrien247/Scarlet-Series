project "Scarlet-Engine"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("%{wks.location}/Scarlet-Bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Scarlet-Bin-Int/" .. outputdir .. "/%{prj.name}")

	pchheader "Scarletpch.h"
	pchsource "Source/Scarletpch.cpp"

	files
	{
		"Source/**.h",
		"Source/**.cpp"
	}

	includedirs
	{
		"Source",
		"Vendor/spdlog/include",
		"Vendor/asio/include",

		"%{wks.location}/Scarlet-Interface/Source",
		"%{wks.location}/Scarlet-Interface/Vendor"
	}

	links 
	{
		"Scarlet-Interface"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"SCARLET_INTERFACE_EXPORT"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"		
		runtime "Debug"
		symbols "on"
		defines "SCARLET_DEBUG"
		buildoptions "/MDd"

	filter "configurations:Profile"
		runtime "Debug"
		symbols "on"
		buildoptions "/MDd"
		defines
		{ 
			"SCARLET_DEBUG",
			"SCARLET_PROFILE"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		defines "SCARLET_RELEASE"
		buildoptions "/MD"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"		
		defines "SCARLET_DIST"
		buildoptions "/MD"