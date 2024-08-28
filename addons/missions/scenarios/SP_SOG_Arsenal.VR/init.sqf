"init" call BIS_fnc_startLoadingScreen;
enableSaving [false, false];
player allowDamage false;

cutText ["", "black in", 1e10];

waitUntil {!isNull (findDisplay 46)};
player switchMove "amovpercmstpslowwrfldnon";
["Open", true] spawn BIS_fnc_arsenal;

disableserialization;
"init" call BIS_fnc_endLoadingScreen;

[missionNamespace, "arsenalOpened", {
	disableSerialization;
	_display = _this select 0;
	(_display displayCtrl 44150) ctrlRemoveAllEventHandlers "ButtonClick";
	(_display displayCtrl 44150) ctrlSetText "Save To Profile";
	(_display displayCtrl 44150) ctrlSetTooltip "Save current loadout to profile";
	(_display displayCtrl 44150) ctrlAddEventHandler ["ButtonClick", { _pMenuLoadout = getUnitLoadout [player, true]; profileNamespace setVariable ["Menu_Loadout_0", _pMenuLoadout]; }];
	_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [19,29]) then {true}"];
}] call BIS_fnc_addScriptedEventHandler;