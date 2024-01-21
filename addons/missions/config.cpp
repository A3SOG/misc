#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"sog_misc_main", "A3_Data_F_Enoch_Loadorder"};
		authors[] = {"J. Schmidt"};
		author = "SOG";
		VERSION_CONFIG;
	};
};

// configs go here
#include "CfgMissions.hpp"