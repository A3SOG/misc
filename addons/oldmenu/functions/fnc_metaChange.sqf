params ["_meta"];

_display = findDisplay 0;
_ctrl1 = _display displayCtrl 1820;
_ctrl2 = _display displayCtrl 1821;
_ctrl3 = _display displayCtrl 1822;

switch (_meta) do {
	case "dossier": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton01On_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton03Off_ca.paa";
		ctrlEnable [1621, true];
		ctrlEnable [1622, true];
	};
	case "stats": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton01Off_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton02On_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton03Off_ca.paa";
		ctrlEnable [1620, true];
		ctrlEnable [1622, true];
	};
	case "news": {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton01Off_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton03On_ca.paa";
		ctrlEnable [1620, true];
		ctrlEnable [1621, true];
	};
	default {
		// uiSleep 0.5;
		_ctrl1 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton01On_ca.paa";
		_ctrl2 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton02Off_ca.paa";
		_ctrl3 ctrlSetText "\z\sog_misc\addons\oldMenu\data\MenuLeft\SOG_UI_MenuLeftButton03Off_ca.paa";
		ctrlEnable [1621, true];
		ctrlEnable [1622, true];
	};
};