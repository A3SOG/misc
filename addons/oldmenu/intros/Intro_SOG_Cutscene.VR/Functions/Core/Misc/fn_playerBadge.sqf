_SOGPlayerBranch = profileNamespace getVariable ["SOGPlayerBranch", "na"];
_SOGPlayerMOS = profileNamespace getVariable ["SOGPlayerMOS", "na"];
_SOGPlayerNet = profileNamespace getVariable ["SOGPlayerNet", "na"];
_SOGPlayerPaygrade = profileNamespace getVariable ["SOGPlayerPaygrade", "na"];
_SOGPlayerPayrate = profileNamespace getVariable ["SOGPlayerPayrate", "na"];

waitUntil { !isNull findDisplay 0 };
_SOGDisplay = findDisplay 0;

_SOGBranchImageControl = _SOGDisplay displayCtrl 202300;
_SOGBranchTextControl = _SOGDisplay displayCtrl 202302;
_SOGPaygradeControl = _SOGDisplay displayCtrl 202301;
_SOGPaygradeTextControl = _SOGDisplay displayCtrl 202304;
_SOGNetWorthControl = _SOGDisplay displayCtrl 202305;
_SOGMOSControl = _SOGDisplay displayCtrl 202303;

_SOGNetWorthControl ctrlSetText format ["$%1", (_SOGPlayerNet call SOG_fnc_formatNumber)];

switch (_SOGPlayerBranch) do {
	// ctrlSetText [idc, text]
	case "USAF": { _SOGBranchImageControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\branches\UI_SOG_MainMenu_ProfileBranch04_ca.paa"; _SOGBranchTextControl ctrlSetText "US AIR FORCE   (USAF)"; };
	case "Army": { _SOGBranchImageControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\branches\UI_SOG_MainMenu_ProfileBranch01_ca.paa"; _SOGBranchTextControl ctrlSetText "US ARMY         (USA)"; };
	case "USMC": { _SOGBranchImageControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\branches\UI_SOG_MainMenu_ProfileBranch02_ca.paa"; _SOGBranchTextControl ctrlSetText "US MARINES     (USMC)"; };
	case "Navy": { _SOGBranchImageControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\branches\UI_SOG_MainMenu_ProfileBranch03_ca.paa"; _SOGBranchTextControl ctrlSetText "US NAVY         (USN)"; };
};

switch (_SOGPlayerPaygrade) do {
	// ctrlSetText [idc, text]
	if (_SOGPlayerBranch == "USAF") then {
		case "E2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E7a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E7b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E8a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E8b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E9a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E9b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E9c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9d": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E9d_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_W1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_W2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_W3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_W4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_W5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O7": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O7_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O8": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O8_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O9": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O9_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O10": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O10_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };		
	};
	if (_SOGPlayerBranch == "Army") then {
		case "E2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E4a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E4b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E7a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E7b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E8a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E8b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E9a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_E9b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch04_E9c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_W1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_W2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_W3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_W4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch01_W5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O7": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O7_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O8": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O8_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O9": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O9_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O10": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O10_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };	
	};
	if (_SOGPlayerBranch == "USMC") then {
		case "E2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E7_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E8a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E8b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E9a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E9b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_E9c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_W1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_W2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_W3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_W4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch02_W5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O7": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O7_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O8": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O8_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O9": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O9_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O10": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O10_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };	
	};
	if (_SOGPlayerBranch == "Navy") then {
		case "E2a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E2a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E2b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E2b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E2c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E2c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E2d": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E2d_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E3a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E3b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E3c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E3d": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E3d_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E4a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E4b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E4b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E5a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E5a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E5b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E5b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E6a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E6a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E6b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E6b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E7a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E7b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E7b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E8a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E8b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E8c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E8d": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E8d_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9a": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9a_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9b": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9b_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };		
		case "E9c": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9c_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9d": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9d_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9e": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9e_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "E9f": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_E9f_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_W1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_W2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_W3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_W4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "WO5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch03_W5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O1": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O1_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O2": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O2_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O3": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O3_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O4": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O4_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O5": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O5_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O6": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O6_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O7": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O7_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O8": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O8_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O9": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O9_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
		case "O10": { _SOGPaygradeControl ctrlSetText "\z\sog_misc\addons\oldMenu\data\ranks\UI_SOG_MainMenu_ProfileBranch00_O10_ca.paa"; _SOGPaygradeTextControl ctrlSetText _SOGPlayerPayrate; };
	};
};

switch (_SOGPlayerMOS) do {
	// ctrlSetText [idc, text]
	if (_SOGPlayerBranch == "USAF") then {
		case "1C2X1": { _SOGMOSControl ctrlSetText "1C2X1"; };
		case "1T2X1": { _SOGMOSControl ctrlSetText "1T2X1"; };
		case "1C4X1": { _SOGMOSControl ctrlSetText "1C4X1"; };
		case "1W0X1": { _SOGMOSControl ctrlSetText "1W0X1"; };
		case "1T0X1": { _SOGMOSControl ctrlSetText "1T0X1"; };
		case "13CX": { _SOGMOSControl ctrlSetText "13CX"; };
		case "13DX": { _SOGMOSControl ctrlSetText "13DX"; };
		case "15WXC": { _SOGMOSControl ctrlSetText "15WXC"; };
	};
	if (_SOGPlayerBranch == "Army") then {
		case "18A": { _SOGMOSControl ctrlSetText "18A"; };
		case "180A": { _SOGMOSControl ctrlSetText "180A"; };
		case "18B": { _SOGMOSControl ctrlSetText "18B"; };
		case "18C": { _SOGMOSControl ctrlSetText "18C"; };
		case "18D": { _SOGMOSControl ctrlSetText "18D"; };
		case "18E": { _SOGMOSControl ctrlSetText "18E"; };
		case "18F": { _SOGMOSControl ctrlSetText "18F"; };
		case "18X": { _SOGMOSControl ctrlSetText "18X"; };
		case "18Z": { _SOGMOSControl ctrlSetText "18Z"; };
	};
	if (_SOGPlayerBranch == "USMC") then {
		case "0321": { _SOGMOSControl ctrlSetText "0321"; };
		case "8541": { _SOGMOSControl ctrlSetText "8541"; };
		case "8631": { _SOGMOSControl ctrlSetText "8631"; };
		case "8652": { _SOGMOSControl ctrlSetText "8652"; };
		case "8653": { _SOGMOSControl ctrlSetText "8653"; };
		case "8654": { _SOGMOSControl ctrlSetText "8654"; };
		case "0372": { _SOGMOSControl ctrlSetText "0372"; };
	};
	if (_SOGPlayerBranch == "Navy") then {
		case "5323": { _SOGMOSControl ctrlSetText "5323"; };
		case "5326": { _SOGMOSControl ctrlSetText "5326"; };
		case "5350": { _SOGMOSControl ctrlSetText "5350"; };
		case "5352": { _SOGMOSControl ctrlSetText "5392"; };
		case "5304": { _SOGMOSControl ctrlSetText "5304"; };
		case "5305": { _SOGMOSControl ctrlSetText "5305"; };
	};
};