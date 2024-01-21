enableRadio false;
enableEnvironment false;
waitUntil { !isNull player && player == player; };
titleText ["","BLACK IN",2];

//// MISSION TIME \\\\
fnc_time = {
	private ["_hour","_minute","_second","_hours","_minutes","_seconds","_time"];
	_hour = (daytime - (daytime % 1));
	_minute = ((daytime % 1) * 60) - ((daytime % 1) * 60) % 1;
	_second = (((daytime % 1) * 3600) - ((daytime % 1) * 3600) % 1) - (_minute * 60);
	_hours = "";
	if (_hour < 10) then {_hours = "0"};
	_minutes = "";
	if (_minute < 10) then {_minutes = "0"};
	_seconds = "";
	if (_second < 10) then {_seconds = "0"};
	_time = format ["%1%2:%3%4:%5%6",_hours, _hour, _minutes, _minute, _seconds, _second];
	_time
};

// Intro text
private ["_getdate","_date","_time"];
_getdate = date;
_date = format ["%1:%2:%3", _getdate select 2, _getdate select 1, _getdate select 0];
_time = call fnc_time;

if (side player == west) then {
	[
		[
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],			
			["UNITED STATES CIA","<t color='#c7dfa0'   valign = 'bottom' align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],			
			["SPECIAL OPERATIONS GROUP","<t color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["A SQ. 1ST TR. SOCDET 1/2","<t color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			[" ","<t  color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			["JOINT AIR FACILITY SUGAR LAKE, FL","<t  color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["CURRENT DATE: 03SEP1995" ,"<t color='#c7dfa0' valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["CURRENT TIME: 0900L-EST" ,"<t color='#c7dfa0' valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"]				
		], 1, 0.75
	] spawn BIS_fnc_typeText;
} else {
	[
		[
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],			
			["UNITED STATES CIA","<t color='#c7dfa0'   valign = 'bottom' align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],			
			["SPECIAL OPERATIONS GROUP","<t color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["A SQ. 1ST TR. SOCDET 1/2","<t color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			[" ","<t  color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			["JOINT AIR FACILITY SUGAR LAKE, FL","<t  color='#c7dfa0'  valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["CURRENT DATE: 03SEP1995" ,"<t color='#c7dfa0' valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			["CURRENT TIME: 0900L-EST" ,"<t color='#c7dfa0' valign = 'bottom' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],				
			[" ","<t color='#c7dfa0' align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"]						
		], 1, 0.75
	] spawn BIS_fnc_typeText;
};

enableEnvironment true;
enableRadio true;

[mirror, mirrorTarget] spawn SOG_fnc_initMirror;
[] spawn SOG_fnc_playerBadge;
[dress] spawn SOG_fnc_setUniform;