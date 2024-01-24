#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"A3_Data_F_Mod_Loadorder", "A3_Data_F_Enoch_Loadorder", "CBA_settings", "ace_arsenal"};
		authors[] = {"J. Schmidt"};
		author = "SOG";
		VERSION_CONFIG;
	};
};

// information on the whole mod (only needed once)
class CfgMods {
    class PREFIX {
        dir = "@sog_misc";
        name = "SOG Misc";
        author = "SOG";
        picture         = "title_co.paa";       // Picture displayed from the expansions menu. Optimal size is 2048x1024
        hideName        = "false";              // Hide the extension name in main menu and extension menu
        hidePicture     = "false";              // Hide the extension picture in the extension menu
        action          = "https://a3sog.org"; // Website URL, that can accessed from the expansions menu 
        actionName      = "today?";              // label of button/tooltip in extension menu
        description     = "It's unclear where this will show"; // Probably in context with action
        dlcColor[] = {0.45, 0.47, 0.41, 1}; // Color used for DLC stripes and backgrounds (RGBA)
    };
};

// Configs go here
#include "CfgModuleCategories.hpp"