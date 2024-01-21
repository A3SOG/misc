params ["_branch"];

_display = findDisplay 0;
_ctrl1 = _display displayCtrl 1806;
_ctrl2 = _display displayCtrl 1807;
_ctrl3 = _display displayCtrl 1808;
_ctrl4 = _display displayCtrl 1809;

switch (_branch) do {
	case "army": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton01On_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton03Off_ca.paa";
		_ctrl4 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton04Off_ca.paa";
		ctrlEnable [1607, true];
		ctrlEnable [1608, true];
		ctrlEnable [1609, true];
	};
	case "usaf": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton01Off_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton03Off_ca.paa";
		_ctrl4 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton04On_ca.paa";
		ctrlEnable [1606, true];
		ctrlEnable [1607, true];
		ctrlEnable [1608, true];
	};
	case "usmc": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton01Off_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton02On_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton03Off_ca.paa";
		_ctrl4 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton04Off_ca.paa";
		ctrlEnable [1606, true];
		ctrlEnable [1608, true];
		ctrlEnable [1609, true];
	};
	case "usn": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton01Off_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton03On_ca.paa";
		_ctrl4 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton04Off_ca.paa";
		ctrlEnable [1606, true];
		ctrlEnable [1607, true];
		ctrlEnable [1609, true];
	};
	default {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton01On_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton03Off_ca.paa";
		_ctrl4 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuRight\SOG_UI_MenuRightButton04Off_ca.paa";
		ctrlEnable [1607, true];
		ctrlEnable [1608, true];
		ctrlEnable [1609, true];
	};
};