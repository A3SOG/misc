// ("cutRscIntro" call BIS_fnc_rscLayer) cutRsc ["RscLogoA","",0.01];

0 setOvercast 0;

{
	if (objectParent _x isEqualTo objNull) then {
		_x disableAI "ALL";
		_x setSpeaker "NoVoice";
	};
} forEach allUnits;

0 spawn {
	while {true} do {
		setDate [2023, 1, 7, 13, 00];
		uiSleep 60;
	};
};

_pos = getPosATL cameraTarget;
_dir = getDir cameraTarget;

_cam = "camera" camCreate _pos;
_cam setDir _dir;
_cam switchCamera "internal";
_cam camCommit 0;