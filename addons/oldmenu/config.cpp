#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {"sog_misc_main", "sog_misc_missions", "sog_misc_rmnewmenu"};
		authors[] = {"J. Schmidt"};
		author = "SOG";
		VERSION_CONFIG;
	};
};

// configs go here
#include "CfgEventHandlers.hpp"
#include "CfgMissions.hpp"
#include "CfgScriptPaths.hpp"
#include "CfgWorlds.hpp"
#include "ui\RscCommon.hpp"
#include "ui\RscDisplayMain.hpp"