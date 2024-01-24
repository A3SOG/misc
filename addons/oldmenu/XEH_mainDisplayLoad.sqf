params ["_display"];

[
	profileNamespace getVariable ["sog_intro_customLogo", true],
	profileNamespace getVariable ["sog_intro_disableSpotlight", true]
] params ["_enableCustomLogo", "_disableSpotlight"];

// Handle logo
if (_enableCustomLogo) then {
	{
		_x ctrlSetTooltip "";
		_x ctrlSetText QUOTE(PATHTOF(data\sogmenu_ca.paa));
	} forEach ((allControls _display) select {(ctrlClassName _x) in ["Logo", "LogoApex"]});
};

// Disable spotlights
if (_disableSpotlight) then {
	{
		ctrlDelete _x;
	} forEach ([
		_display displayCtrl IDC_MAIN_SPOTLIGHT_GROUP_1,
		_display displayCtrl IDC_MAIN_SPOTLIGHT_GROUP_2,
		_display displayCtrl IDC_MAIN_SPOTLIGHT_GROUP_3,
		_display displayCtrl IDC_MAIN_SPOTLIGHT_PREV,
		_display displayCtrl IDC_MAIN_SPOTLIGHT_NEXT,
		_display displayCtrl IDC_MAIN_INFOMODS
	] + ((allControls _display) select {(ctrlClassName _x) in [
		"BackgroundSpotlight",
		"BackgroundSpotlightLeft",
		"BackgroundSpotlightRight",
		"InfoMods"
	]}));
};