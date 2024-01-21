// private _loadout = [["CUP_arifle_M16A4_Grip","","","CUP_optic_ACOG_PIP",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Glock17_blk","","","",["CUP_17Rnd_9x19_glock17",17],[],""],["usm_bdu_w",[["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1]]],["SOG_Vest_MBAV_M_M81",[["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"SOG_Hat_Boonie_E_M81","SOG_Eyewear_Headset_ThroatMic",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","SOG_NVG_Safariland_A_Kneepads_BK_OD_BK"]];
_SOGPlayerLoadout = profileNamespace getVariable ["Menu_Loadout_0", []];

waitUntil { !isNull findDisplay 0 };
_display = findDisplay 0;

_SOGPrimaryControl = _display displayCtrl 1932;
_SOGHandgunControl = _display displayCtrl 1933;
_SOGSecondaryControl = _display displayCtrl 1934;
_SOGUniformControl = _display displayCtrl 1935;
_SOGVestControl = _display displayCtrl 1936;
_SOGBackpackControl = _display displayCtrl 1937;
_SOGHeadgearControl = _display displayCtrl 1938;
_SOGFacewearControl = _display displayCtrl 1939;
_SOGHmdControl = _display displayCtrl 1940;
// _ctrl10 = _display displayCtrl 1942;

_SOGPrimary = _SOGPlayerLoadout select 0 select 0;
_SOGSecondary = _SOGPlayerLoadout select 1 select 0;
_SOGHandgun = _SOGPlayerLoadout select 2 select 0;
_SOGUniform = _SOGPlayerLoadout select 3 select 0;
_SOGVest = _SOGPlayerLoadout select 4 select 0;
_SOGBackpack = _SOGPlayerLoadout select 5 select 0;
_SOGHeadgear = _SOGPlayerLoadout select 6;
_SOGFacewear = _SOGPlayerLoadout select 7;
_SOGHmd = _SOGPlayerLoadout select 9 select 5;

_primary = getText (configFile >> "CfgWeapons" >> _SOGPrimary >> "displayName");
_handgun = getText (configFile >> "CfgWeapons" >> _SOGHandgun >> "displayName");
_secondary = getText (configFile >> "CfgWeapons" >> _SOGSecondary >> "displayName");
_uniform = getText (configFile >> "CfgWeapons" >> _SOGUniform >> "displayName");
_vest = getText (configFile >> "CfgWeapons" >> _SOGVest >> "displayName");
_backpack = getText (configFile >> "CfgVehicles" >> _SOGBackpack >> "displayName");
_headgear = getText (configFile >> "CfgWeapons" >> _SOGHeadgear >> "displayName");
_facewear = getText (configFile >> "CfgGlasses" >> _SOGFacewear >> "displayName");
_hmd = getText (configFile >> "CfgWeapons" >> _SOGHmd >> "displayName");

_SOGPrimaryControl ctrlSetText _primary;
_SOGHandgunControl ctrlSetText _handgun;
_SOGSecondaryControl ctrlSetText _secondary;
_SOGUniformControl ctrlSetText _uniform;
_SOGVestControl ctrlSetText _vest;
_SOGBackpackControl ctrlSetText _backpack;
_SOGHeadgearControl ctrlSetText _headgear;
_SOGFacewearControl ctrlSetText _facewear;
_SOGHmdControl ctrlSetText _hmd;