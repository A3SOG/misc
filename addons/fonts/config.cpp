#include "script_component.hpp"

// information on this addon specifically
class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"sog_misc_main", "A3_UIFonts_F"};
		authors[] = {"J. Schmidt"}; // sub array of authors, considered for the specific addon, can be removed or left empty {}
		author = "SOG"; // primary author name, either yours or your team's, considered for the whole mod
		VERSION_CONFIG;
	};
};

// configs go here
#include "CfgEventHandlers.hpp"
#include "CfgFontFamilies.hpp"