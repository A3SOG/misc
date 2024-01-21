#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"sog_misc_main"};
		authors[] = {"J. Schmidt"};
		author = "SOG";
		VERSION_CONFIG;
	};
};

// configs go here
#include "CfgEventHandlers.hpp"
#include "CfgWrapperUI.hpp"