workspace "Scarlet-Series"
	architecture "x86_64"
	startproject "Scarlet-Sandbox"

	configurations
	{
		"Debug",
		"Profile",
		"Release",
		"Dist"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Scarlet-Core"
	include "Scarlet-Engine"
	include "Scarlet-Interface"

group ""

include "Scarlet-Additions"
include "Scarlet-Sandbox"