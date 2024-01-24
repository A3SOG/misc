[
	"sog_intro_customLogo",
	"CHECKBOX",
	["Replace Arma 3 Logo", "Replaces main menu Arma 3 logo"],
	["SOG", "Main Menu"],
	true,
	2,
	{ profileNamespace setVariable [_thisSetting, _this] },
	true
] call CBA_fnc_addSetting;

[
	"sog_intro_disableSpotlight",
	"CHECKBOX",
	["Disable main menu spotlight", "Hides the central three main menu spotlight boxes"],
	["SOG", "Main Menu"],
	true,
	2,
	{ profileNamespace setVariable [_thisSetting, _this] },
	true
] call CBA_fnc_addSetting;
