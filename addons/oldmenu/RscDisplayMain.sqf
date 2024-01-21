_mode = _this select 0;
_params = _this select 1;
_class = _this select 2;

switch _mode do {
	//--- Display load
	case "onLoad": {
		private ["_display","_ehCode","_ehMoving","_ehHolding"];

		//--- Color Init
		_display = _params select 0;
		_ehKeyDown = _display displayAddEventHandler ["keydown","with uinamespace do {['keyDown',_this,''] call RscDisplayMain_script;};"];

		//--- Hide player's name if Stream Friendly UI is on. It is shown via RscDisplayGameOptions.sqf
		[_display, 109] call (uiNamespace getVariable 'BIS_fnc_setIDCStreamFriendly');

		//--- Assign default values
		with uiNamespace do {
			//--- Get colors and grids
			true call BIS_fnc_displayColorGet;
			false call BIS_fnc_guiGridToProfile;

			//--- Apply colors to main menu
			[configFile >> _class,_display] call BIS_fnc_displayColorSet;
		};

		//--- Options button
		_button = _display displayCtrl 1896;
		_button ctrlAddEventHandler ["buttonclick","with uinamespace do {['optionsButton',_this,''] spawn RscDisplayMain_script};"];

		//--- SRecord button
		_sbutton = _display displayCtrl 1610;
		_sbutton ctrlAddEventHandler ["buttonclick","with uinamespace do {['sRecordButton',_this,''] spawn RscDisplayMain_script};"];
		_cbutton = _display displayCtrl 1611;
		_cbutton ctrlAddEventHandler ["buttonclick","with uinamespace do {['cRecordButton',_this,''] spawn RscDisplayMain_script};"];

		//--- Meta buttons
		_pdbutton = _display displayCtrl 1620;
		_pdbutton ctrlAddEventHandler ["buttonclick","with uinamespace do {['pDossierButton',_this,''] spawn RscDisplayMain_script};"];
		_psbutton = _display displayCtrl 1621;
		_psbutton ctrlAddEventHandler ["buttonclick","with uinamespace do {['pStatsButton',_this,''] spawn RscDisplayMain_script};"];
		_pnbutton = _display displayCtrl 1622;
		_pnbutton ctrlAddEventHandler ["buttonclick","with uinamespace do {['pNewsButton',_this,''] spawn RscDisplayMain_script};"];
			
		(_display displayCtrl 301) ctrlSetFade 1;		//Video
		(_display displayCtrl 302) ctrlSetFade 1;		//Audio
		(_display displayCtrl 303) ctrlSetFade 1;		//Controls
		(_display displayCtrl 307) ctrlSetFade 1;		//Game Options
		(_display displayCtrl 1001) ctrlSetFade 1;		//Profile
		(_display displayCtrl 140) ctrlSetFade 1;		//Expansions
		(_display displayCtrl 2035) ctrlSetFade 1;		//Settings Bg
		(_display displayCtrl 2036) ctrlSetFade 1;		//Settings Bg
		(_display displayCtrl 2037) ctrlSetFade 1;		//Settings Bg

		(_display displayCtrl 1606) ctrlSetFade 1;		//SRButton01
		(_display displayCtrl 1607) ctrlSetFade 1;		//SRButton02
		(_display displayCtrl 1608) ctrlSetFade 1;		//SRButton03
		(_display displayCtrl 1609) ctrlSetFade 1;		//SRButton04
		(_display displayCtrl 1610) ctrlSetFade 0;		//SRToggleOpen
		(_display displayCtrl 1611) ctrlSetFade 1;		//SRToggleClose
		(_display displayCtrl 1806) ctrlSetFade 1;		//SRButtonBg01
		(_display displayCtrl 1807) ctrlSetFade 1;		//SRButtonBg02
		(_display displayCtrl 1808) ctrlSetFade 1;		//SRButtonBg03
		(_display displayCtrl 1809) ctrlSetFade 1;		//SRButtonBg04
		(_display displayCtrl 1810) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1811) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1812) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1813) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1814) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1815) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1816) ctrlSetFade 1;		//SRBg
		(_display displayCtrl 1817) ctrlSetFade 0;		//SRBg

		(_display displayCtrl 1823) ctrlSetFade 0;				//PDBg
		(_display displayCtrl 1824) ctrlSetFade 1;				//PSBg
		
		(_display displayCtrl 1930)	ctrlSetFade 1;				//PSUnitTitle		
		(_display displayCtrl 1931) ctrlSetFade 1;				//PSUnitData
		(_display displayCtrl 1932) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1933) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1934) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1935) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1936) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1937) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1938) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1939) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1940) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1941) ctrlSetFade 1;				//PSLoadout
		(_display displayCtrl 1942) ctrlSetFade 1;				//PSLoadout		
		
		(_display displayCtrl 1825) ctrlSetFade 1;		//PNBg
		(_display displayCtrl 1826) ctrlSetFade 0;		//PDNameTitle
		(_display displayCtrl 109) ctrlSetFade 0;		//PDName
		(_display displayCtrl 1828) ctrlSetFade 0;		//PDDOBTitle
		(_display displayCtrl 1829) ctrlSetFade 0;		//PDAgeTitle
		(_display displayCtrl 1830) ctrlSetFade 0;		//PDBranchTitle
		(_display displayCtrl 1831) ctrlSetFade 0;		//PDBilletTitle
		(_display displayCtrl 1832) ctrlSetFade 0;		//PDUnitLogo
		(_display displayCtrl 1920) ctrlSetFade 0;		//PDMonth
		(_display displayCtrl 1921) ctrlSetFade 0;		//PDDay
		(_display displayCtrl 1922) ctrlSetFade 0;		//PDYear
		(_display displayCtrl 1923) ctrlSetFade 0;		//PDYAge
		(_display displayCtrl 202302) ctrlSetFade 0;	//PDBranch
		(_display displayCtrl 202303) ctrlSetFade 0;	//PDMOS
		(_display displayCtrl 202304) ctrlSetFade 0;	//PDRank
		// (_display displayCtrl 202305) ctrlSetFade 0;	//PDCurrency
		
		(_display displayCtrl 1833) ctrlSetFade 1;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlSetFade 1;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlSetFade 1;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlSetFade 1;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlSetFade 1;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlSetFade 1;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlSetFade 1;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlSetFade 1;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlSetFade 1;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlSetFade 1;			//PDNewsFG			

		(_display displayCtrl 301) ctrlCommit 0;		//Video
		(_display displayCtrl 302) ctrlCommit 0;		//Audio
		(_display displayCtrl 303) ctrlCommit 0;		//Controls
		(_display displayCtrl 307) ctrlCommit 0;		//Game Options
		(_display displayCtrl 1001) ctrlCommit 0;		//Profile
		(_display displayCtrl 140) ctrlCommit 0;		//Expansions
		(_display displayCtrl 2035) ctrlCommit 0;		//Settings Bg
		(_display displayCtrl 2036) ctrlCommit 0;		//Settings Bg
		(_display displayCtrl 2037) ctrlCommit 0;		//Settings Bg

		(_display displayCtrl 1606) ctrlCommit 0;		//SRButton01
		(_display displayCtrl 1607) ctrlCommit 0;		//SRButton02
		(_display displayCtrl 1608) ctrlCommit 0;		//SRButton03
		(_display displayCtrl 1609) ctrlCommit 0;		//SRButton04
		(_display displayCtrl 1610) ctrlCommit 0;		//SROpen
		(_display displayCtrl 1611) ctrlCommit 0;		//SRClose
		(_display displayCtrl 1806) ctrlCommit 0;		//SRButtonBg01
		(_display displayCtrl 1807) ctrlCommit 0;		//SRButtonBg02
		(_display displayCtrl 1808) ctrlCommit 0;		//SRButtonBg03
		(_display displayCtrl 1809) ctrlCommit 0;		//SRButtonBg04
		(_display displayCtrl 1810) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1811) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1812) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1813) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1814) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1815) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1816) ctrlCommit 0;		//SRBg
		(_display displayCtrl 1817) ctrlCommit 0;		//SRBg

		(_display displayCtrl 1823) ctrlCommit 0;		//PDBg
		(_display displayCtrl 1824) ctrlCommit 0;		//PSBg
		(_display displayCtrl 1930)	ctrlCommit 0;				//PSUnitTitle		
		(_display displayCtrl 1931) ctrlCommit 0;				//PSUnitData
		
		(_display displayCtrl 1931)	ctrlCommit 0;				//PSUnitData
		(_display displayCtrl 1932) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1933) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1934) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1935) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1936) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1937) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1938) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1939) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1940) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1941) ctrlCommit 0;				//PSLoadout
		(_display displayCtrl 1942) ctrlCommit 0;				//PSLoadout				
		
		(_display displayCtrl 1825) ctrlCommit 0;		//PNBg
		(_display displayCtrl 1826) ctrlCommit 0;		//PDNameTitle
		(_display displayCtrl 109) ctrlCommit 0;		//PDName
		(_display displayCtrl 1828) ctrlCommit 0;		//PDDOBTitle
		(_display displayCtrl 1829) ctrlCommit 0;		//PDAgeTitle
		(_display displayCtrl 1830) ctrlCommit 0;		//PDBranchTitle
		(_display displayCtrl 1831) ctrlCommit 0;		//PDBilletTitle
		(_display displayCtrl 1832) ctrlCommit 0;		//PDUnitLogo
		(_display displayCtrl 1920) ctrlCommit 0;		//PDMonth
		(_display displayCtrl 1921) ctrlCommit 0;		//PDDay
		(_display displayCtrl 1922) ctrlCommit 0;		//PDYear
		(_display displayCtrl 1923) ctrlCommit 0;		//PDYAge
		(_display displayCtrl 202302) ctrlCommit 0;		//PDBranch
		(_display displayCtrl 202303) ctrlCommit 0;		//PDMOS
		(_display displayCtrl 202304) ctrlCommit 0;		//PDRank
		// (_display displayCtrl 202305) ctrlCommit 0;		//PDCurrency
		
		(_display displayCtrl 1833) ctrlCommit 0;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlCommit 0;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlCommit 0;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlCommit 0;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlCommit 0;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlCommit 0;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlCommit 0;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlCommit 0;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlCommit 0;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlCommit 0;			//PDNewsFG			

		//--- Hide all buttons from Options & SRecord - must be here to enable proper focusing
		(_display displayCtrl 301) ctrlEnable false;	//Video
		(_display displayCtrl 302) ctrlEnable false;	//Audio
		(_display displayCtrl 303) ctrlEnable false;	//Controls
		(_display displayCtrl 307) ctrlEnable false;	//Game Options
		(_display displayCtrl 1001) ctrlEnable false;	//Profile
		(_display displayCtrl 140) ctrlEnable false;	//Expansions

		(_display displayCtrl 1606) ctrlEnable false;	//SRButton01
		(_display displayCtrl 1607) ctrlEnable false;	//SRButton02
		(_display displayCtrl 1608) ctrlEnable false;	//SRButton03
		(_display displayCtrl 1609) ctrlEnable false;	//SRButton04
		(_display displayCtrl 1610) ctrlEnable true;	//SROpen
		(_display displayCtrl 1611) ctrlEnable false;	//SRClose

		if ((productVersion select 1) == "Arma3AlphaLite") then {
			(_display displayCtrl 105) ctrlSetTooltip "Available in non-Lite version - upgrade now!";	// Multiplayer, PA-Lite - Do not localize, alpha has expired
			// Lite does not have Development branch and should never indicate its branch
			(_display displayCtrl 1008) ctrlSetText "Alpha Lite";	// Version name - Do not localize, alpha has expired
		} else {
			// To be sure check length of the array (ProductVersion still works differently in different game versions. Remove this check as soon as it is unified.)
			if (count productVersion >= 5) then {
				if ((productVersion select 4) == "Development") then {
					(_display displayCtrl 1008) ctrlSetText (localize "STR_A3_RSCDISPLAY_LOADING_DEV");
				};
			}
		};

		// Variables for tracking state of accordions (expanded/collapsed)-----------------------------------------------------------------
		if (uiNamespace getVariable ["BIS_MainMenu_isOptionsExpanded", false]) then {
			// If variable exists and is true, set it to false and click on Options - this will expand the Options accordion again.
			// When exitting Profile with OK, Main Menu is reloaded by the engine. This is needed to leave accordion expanded.
			uiNamespace setVariable ["BIS_MainMenu_isOptionsExpanded", false];
			['optionsButton', [_display displayCtrl 1896], ''] spawn RscDisplayMain_script; // Simulate click on Options button
			waitUntil{!(uiNamespace getVariable "BIS_MainMenu_isOptionsExpanded")}; // Wait until Options collapse
		} else {
			// If false variable doesn't exist or is false. Create it and set it to false, this leaves accordion collapsed.
			// Used when Main Menu is loaded for the first time (when game started).
			uiNamespace setVariable ["BIS_MainMenu_isOptionsExpanded", false];
		};

		if (uiNamespace getVariable ["BIS_MainMenu_isSRecordExpanded", false]) then {
			uiNamespace setVariable ["BIS_MainMenu_isSRecordExpanded", false];
			['sRecordButton', [_display displayCtrl 1610], ''] spawn RscDisplayMain_script;
			waitUntil{!(uiNamespace getVariable "BIS_MainMenu_isSRecordExpanded")};
		} else {
			uiNamespace setVariable ["BIS_MainMenu_isSRecordExpanded", false];
		};

		if (uiNamespace getVariable ["BIS_MainMenu_isPDossierExpanded", false]) then {
			uiNamespace setVariable ["BIS_MainMenu_isPDossierExpanded", false];
			['pDossierButton', [_display displayCtrl 1620], ''] spawn RscDisplayMain_script;
			waitUntil{!(uiNamespace getVariable "BIS_MainMenu_isPDossierExpanded")};
		} else {
			uiNamespace setVariable ["BIS_MainMenu_isPDossierExpanded", false];
		};

		if (uiNamespace getVariable ["BIS_MainMenu_isPStatsExpanded", false]) then {
			uiNamespace setVariable ["BIS_MainMenu_isPStatsExpanded", false];
			['pStatsButton', [_display displayCtrl 1621], ''] spawn RscDisplayMain_script;
			waitUntil{!(uiNamespace getVariable "BIS_MainMenu_isPStatsExpanded")};
		} else {
			uiNamespace setVariable ["BIS_MainMenu_isPStatsExpanded", false];
		};

		if (uiNamespace getVariable ["BIS_MainMenu_isPNewsExpanded", false]) then {
			uiNamespace setVariable ["BIS_MainMenu_isPNewsExpanded", false];
			['pNewsButton', [_display displayCtrl 1622], ''] spawn RscDisplayMain_script;
			waitUntil{!(uiNamespace getVariable "BIS_MainMenu_isPNewsExpanded")};
		} else {
			uiNamespace setVariable ["BIS_MainMenu_isPNewsExpanded", false];
		};
	};

	//--- Options button
	case "optionsButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		if (uiNamespace getVariable "BIS_MainMenu_isOptionsExpanded") then {
			(_display displayCtrl 301) ctrlSetFade 1;		//Video
			(_display displayCtrl 302) ctrlSetFade 1;		//Audio
			(_display displayCtrl 303) ctrlSetFade 1;		//Controls
			(_display displayCtrl 307) ctrlSetFade 1;		//Game Options
			(_display displayCtrl 1001) ctrlSetFade 1;		//Profile
			(_display displayCtrl 140) ctrlSetFade 1;		//Expansions
			(_display displayCtrl 2035) ctrlSetFade 1;		//Settings Bg
			(_display displayCtrl 2036) ctrlSetFade 1;		//Settings Bg
			(_display displayCtrl 2037) ctrlSetFade 1;		//Settings Bg

			(_display displayCtrl 301) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 302) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 303) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 307) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 1001) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 140) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 2035) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 2036) ctrlCommit _buttonsTime;
			uiSleep _buttonsTime;
			(_display displayCtrl 2037) ctrlCommit _buttonsTime;

			(_display displayCtrl 301) ctrlEnable false;		//Video
			(_display displayCtrl 302) ctrlEnable false;		//Audio
			(_display displayCtrl 303) ctrlEnable false;		//Controls
			(_display displayCtrl 307) ctrlEnable false;		//Game Options
			(_display displayCtrl 1001) ctrlEnable false;		//Profile
			(_display displayCtrl 140) ctrlEnable false;		//Expansions
			(_display displayCtrl 2035) ctrlEnable false;		//Settings Bg
			(_display displayCtrl 2036) ctrlEnable false;		//Settings Bg
			(_display displayCtrl 2037) ctrlEnable false;		//Settings Bg

			uiNamespace setVariable ["BIS_MainMenu_isOptionsExpanded", false];
			ctrlSetFocus (_display displayCtrl 1896);
		} else {
			(_display displayCtrl 301) ctrlEnable true;		//Video
			(_display displayCtrl 302) ctrlEnable true;		//Audio
			(_display displayCtrl 303) ctrlEnable true;		//Controls
			(_display displayCtrl 307) ctrlEnable true;		//Game Options
			(_display displayCtrl 1001) ctrlEnable true;	//Profile
			(_display displayCtrl 140) ctrlEnable true;		//Expansions
			(_display displayCtrl 2035) ctrlEnable true;	//Settings Bg
			(_display displayCtrl 2036) ctrlEnable true;	//Settings Bg
			(_display displayCtrl 2037) ctrlEnable true;	//Settings Bg

			(_display displayCtrl 301) ctrlSetFade 0;		//Video
			(_display displayCtrl 302) ctrlSetFade 0;		//Audio
			(_display displayCtrl 303) ctrlSetFade 0;		//Controls
			(_display displayCtrl 307) ctrlSetFade 0;		//Game Options
			(_display displayCtrl 1001) ctrlSetFade 0;		//Profile
			(_display displayCtrl 140) ctrlSetFade 0;		//Expansions
			(_display displayCtrl 2035) ctrlSetFade 0;		//Settings Bg
			(_display displayCtrl 2036) ctrlSetFade 0;		//Settings Bg
			(_display displayCtrl 2037) ctrlSetFade 0;		//Settings Bg

			uiSleep 0.05;

			(_display displayCtrl 140) ctrlCommit 0.1;		//Expansions
			uiSleep _buttonsTime;
			(_display displayCtrl 1001) ctrlCommit 0.1;		//Profile
			uiSleep _buttonsTime;
			(_display displayCtrl 307) ctrlCommit 0.1;		//Game Options
			uiSleep _buttonsTime;
			(_display displayCtrl 303) ctrlCommit 0.1;		//Controls
			uiSleep _buttonsTime;
			(_display displayCtrl 302) ctrlCommit 0.1;		//Audio
			uiSleep _buttonsTime;
			(_display displayCtrl 301) ctrlCommit 0.1;		//Video
			uiSleep _buttonsTime;
			(_display displayCtrl 2035) ctrlCommit 0.1;		//Video
			uiSleep _buttonsTime;
			(_display displayCtrl 2036) ctrlCommit 0.1;		//Video
			uiSleep _buttonsTime;
			(_display displayCtrl 2037) ctrlCommit 0.1;		//Video

			uiNamespace setVariable ["BIS_MainMenu_isOptionsExpanded", true];
			ctrlSetFocus (_display displayCtrl 1896);
		};
	};

	//--- SRecord button
	case "sRecordButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		(_display displayCtrl 1606) ctrlEnable true;		//SRButton01
		(_display displayCtrl 1607) ctrlEnable true;		//SRButton02
		(_display displayCtrl 1608) ctrlEnable true;		//SRButton03
		(_display displayCtrl 1609) ctrlEnable true;		//SRButton04
		(_display displayCtrl 1610) ctrlEnable false;		//SRToggleOpen
		(_display displayCtrl 1611) ctrlEnable true;		//SRToggleClose

		(_display displayCtrl 1606) ctrlSetFade 0;			//SRButton01
		(_display displayCtrl 1607) ctrlSetFade 0;			//SRButton02
		(_display displayCtrl 1608) ctrlSetFade 0;			//SRButton03
		(_display displayCtrl 1609) ctrlSetFade 0;			//SRButton04
		(_display displayCtrl 1610) ctrlSetFade 1;			//SRToggleOpen
		(_display displayCtrl 1611) ctrlSetFade 0;			//SRToggleClose
		(_display displayCtrl 1806) ctrlSetFade 0;			//SRButtonBg01
		(_display displayCtrl 1807) ctrlSetFade 0;			//SRButtonBg02
		(_display displayCtrl 1808) ctrlSetFade 0;			//SRButtonBg03
		(_display displayCtrl 1809) ctrlSetFade 0;			//SRButtonBg04
		(_display displayCtrl 1810) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1811) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1812) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1813) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1814) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1815) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1816) ctrlSetFade 0;			//SRBg
		(_display displayCtrl 1817) ctrlSetFade 1;			//SRBg

		uiSleep 0.05;

		(_display displayCtrl 1817) ctrlCommit 0;			//SRToggleBg
		(_display displayCtrl 1610) ctrlCommit 0;			//SRToggleOpen
		uiSleep _buttonsTime;
		(_display displayCtrl 1611) ctrlCommit 0.1;			//SRToggleClose
		uiSleep _buttonsTime;
		(_display displayCtrl 1609) ctrlCommit 0.1;			//SRButton01
		uiSleep _buttonsTime;
		(_display displayCtrl 1608) ctrlCommit 0.1;			//SRButton02
		uiSleep _buttonsTime;
		(_display displayCtrl 1607) ctrlCommit 0.1;			//SRButton03
		uiSleep _buttonsTime;
		(_display displayCtrl 1606) ctrlCommit 0.1;			//SRButton04
		uiSleep _buttonsTime;
		(_display displayCtrl 1809) ctrlCommit 0.1;			//SRButtonBg04
		uiSleep _buttonsTime;
		(_display displayCtrl 1808) ctrlCommit 0.1;			//SRButtonBg03
		uiSleep _buttonsTime;
		(_display displayCtrl 1807) ctrlCommit 0.1;			//SRButtonBg02
		uiSleep _buttonsTime;
		(_display displayCtrl 1806) ctrlCommit 0.1;			//SRButtonBg01
		uiSleep _buttonsTime;
		(_display displayCtrl 1810) ctrlCommit 0.1;			//SRBg
		uiSleep _buttonsTime;
		(_display displayCtrl 1811) ctrlCommit 0;			//SRBg
		(_display displayCtrl 1812) ctrlCommit 0;			//SRBg
		(_display displayCtrl 1813) ctrlCommit 0;			//SRBg
		(_display displayCtrl 1814) ctrlCommit 0;			//SRBg
		(_display displayCtrl 1815) ctrlCommit 0;			//SRBg
		(_display displayCtrl 1816) ctrlCommit 0;			//SRBg

		uiNamespace setVariable ["BIS_MainMenu_isSRecordExpanded", true];
		ctrlSetFocus (_display displayCtrl 1611);
	};

	//--- SRecord button
	case "cRecordButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		(_display displayCtrl 1606) ctrlSetFade 1;			//SRButton01
		(_display displayCtrl 1607) ctrlSetFade 1;			//SRButton02
		(_display displayCtrl 1608) ctrlSetFade 1;			//SRButton03
		(_display displayCtrl 1609) ctrlSetFade 1;			//SRButton04
		(_display displayCtrl 1610) ctrlSetFade 0;			//SRToggleOpen
		(_display displayCtrl 1611) ctrlSetFade 1;			//SRToggleClose
		(_display displayCtrl 1806) ctrlSetFade 1;			//SRButtonBg01
		(_display displayCtrl 1807) ctrlSetFade 1;			//SRButtonBg02
		(_display displayCtrl 1808) ctrlSetFade 1;			//SRButtonBg03
		(_display displayCtrl 1809) ctrlSetFade 1;			//SRButtonBg04
		(_display displayCtrl 1810) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1811) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1812) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1813) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1814) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1815) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1816) ctrlSetFade 1;			//SRBg
		(_display displayCtrl 1817) ctrlSetFade 0;			//SRBg

		(_display displayCtrl 1606) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1607) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1608) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1609) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1610) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1611) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1806) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1807) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1808) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1809) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1810) ctrlCommit _buttonsTime;
		uiSleep _buttonsTime;
		(_display displayCtrl 1811) ctrlCommit 0;
		(_display displayCtrl 1812) ctrlCommit 0;
		(_display displayCtrl 1813) ctrlCommit 0;
		(_display displayCtrl 1814) ctrlCommit 0;
		(_display displayCtrl 1815) ctrlCommit 0;
		(_display displayCtrl 1816) ctrlCommit 0;
		uiSleep _buttonsTime;
		(_display displayCtrl 1817) ctrlCommit _buttonsTime;

		(_display displayCtrl 1606) ctrlEnable false;		//SRButton01
		(_display displayCtrl 1607) ctrlEnable false;		//SRButton02
		(_display displayCtrl 1608) ctrlEnable false;		//SRButton03
		(_display displayCtrl 1609) ctrlEnable false;		//SRButton04
		(_display displayCtrl 1610) ctrlEnable true;		//SRToggleOpen
		(_display displayCtrl 1611) ctrlEnable false;		//SRToggleClose

		uiNamespace setVariable ["BIS_MainMenu_isSRecordExpanded", false];
		ctrlSetFocus (_display displayCtrl 1610);
	};

	//--- PDossierButton
	case "pDossierButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		(_display displayCtrl 1823) ctrlSetFade 0;			//PDBg
		(_display displayCtrl 1824) ctrlSetFade 1;			//PSBg
		(_display displayCtrl 1930) ctrlSetFade 1;			//PSUnitTitle		
		(_display displayCtrl 1931) ctrlSetFade 1;			//PSUnitData
		(_display displayCtrl 1932) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1933) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1934) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1935) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1937) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1939) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1940) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1941) ctrlSetFade 1;				//PSLoadout
		(_display displayCtrl 1942) ctrlSetFade 1;				//PSLoadout	
		
		(_display displayCtrl 1825) ctrlSetFade 1;			//PNBg
		(_display displayCtrl 1826) ctrlSetFade 0;			//PDNameTitle
		(_display displayCtrl 109) ctrlSetFade 0;			//PDName
		(_display displayCtrl 1828) ctrlSetFade 0;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlSetFade 0;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlSetFade 0;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlSetFade 0;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlSetFade 0;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlSetFade 0;			//PDMonth
		(_display displayCtrl 1921) ctrlSetFade 0;			//PDDay
		(_display displayCtrl 1922) ctrlSetFade 0;			//PDYear
		(_display displayCtrl 1923) ctrlSetFade 0;			//PDYAge
		(_display displayCtrl 202302) ctrlSetFade 0;		//PDBranch
		(_display displayCtrl 202303) ctrlSetFade 0;		//PDMOS
		(_display displayCtrl 202304) ctrlSetFade 0;		//PDRank
		// (_display displayCtrl 202305) ctrlSetFade 0;		//PDCurrency
		
		(_display displayCtrl 1833) ctrlSetFade 1;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlSetFade 1;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlSetFade 1;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlSetFade 1;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlSetFade 1;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlSetFade 1;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlSetFade 1;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlSetFade 1;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlSetFade 1;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlSetFade 1;			//PDNewsFG	
		
		uiSleep 0.05;

		(_display displayCtrl 1823) ctrlCommit 0;			//PDBg
		(_display displayCtrl 1824) ctrlCommit 0;			//PSBg
		(_display displayCtrl 1930)	ctrlCommit 0;				//PSUnitTitle		
		(_display displayCtrl 1931) ctrlCommit 0;				//PSUnitData
		(_display displayCtrl 1932) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1933) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1934) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1935) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1937) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1939) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1940) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1941) ctrlCommit 0;				//PSLoadout
		(_display displayCtrl 1942) ctrlCommit 0;				//PSLoadout			
		(_display displayCtrl 1825) ctrlCommit 0;			//PNBg
		(_display displayCtrl 1826) ctrlCommit 0;			//PDNameTitle
		(_display displayCtrl 109) ctrlCommit 0;			//PDName
		(_display displayCtrl 1828) ctrlCommit 0;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlCommit 0;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlCommit 0;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlCommit 0;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlCommit 0;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlCommit 0;			//PDMonth
		(_display displayCtrl 1921) ctrlCommit 0;			//PDDay
		(_display displayCtrl 1922) ctrlCommit 0;			//PDYear
		(_display displayCtrl 1923) ctrlCommit 0;			//PDYAge
		(_display displayCtrl 202302) ctrlCommit 0;			//PDBranch
		(_display displayCtrl 202303) ctrlCommit 0;			//PDMOS
		(_display displayCtrl 202304) ctrlCommit 0;			//PDRank
		// (_display displayCtrl 202305) ctrlCommit 0;			//PDCurrency
		
		(_display displayCtrl 1833) ctrlCommit 0;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlCommit 0;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlCommit 0;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlCommit 0;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlCommit 0;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlCommit 0;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlCommit 0;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlCommit 0;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlCommit 0;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlCommit 0;			//PDNewsFG			

		uiNamespace setVariable ["BIS_MainMenu_isPDossierExpanded", true];
		ctrlSetFocus (_display displayCtrl 1620);
	};

	//--- PStatsButton
	case "pStatsButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		(_display displayCtrl 1823) ctrlSetFade 1;			//PDBg
		(_display displayCtrl 1824) ctrlSetFade 0;			//PSBg
		(_display displayCtrl 1930) ctrlSetFade 0;			//PSUnitTitle		
		(_display displayCtrl 1931) ctrlSetFade 0;			//PSUnitData
		(_display displayCtrl 1932) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1933) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1934) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1935) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1937) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1939) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1940) ctrlSetFade 0;				//PSLoadout	
		(_display displayCtrl 1941) ctrlSetFade 0;				//PSLoadout
		(_display displayCtrl 1942) ctrlSetFade 0;				//PSLoadout	

		
		(_display displayCtrl 1825) ctrlSetFade 1;			//PNBg
		(_display displayCtrl 1826) ctrlSetFade 1;			//PDNameTitle
		(_display displayCtrl 109) ctrlSetFade 1;			//PDName
		(_display displayCtrl 1828) ctrlSetFade 1;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlSetFade 1;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlSetFade 1;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlSetFade 1;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlSetFade 1;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlSetFade 1;			//PDMonth
		(_display displayCtrl 1921) ctrlSetFade 1;			//PDDay
		(_display displayCtrl 1922) ctrlSetFade 1;			//PDYear
		(_display displayCtrl 1923) ctrlSetFade 1;			//PDYAge
		(_display displayCtrl 202302) ctrlSetFade 1;		//PDBranch
		(_display displayCtrl 202303) ctrlSetFade 1;		//PDMOS
		(_display displayCtrl 202304) ctrlSetFade 1;		//PDRank
		// (_display displayCtrl 202305) ctrlSetFade 1;		//PDCurrency
		
		(_display displayCtrl 1833) ctrlSetFade 1;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlSetFade 1;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlSetFade 1;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlSetFade 1;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlSetFade 1;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlSetFade 1;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlSetFade 1;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlSetFade 1;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlSetFade 1;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlSetFade 1;			//PDNewsFG			
		

		uiSleep 0.05;

		(_display displayCtrl 1823) ctrlCommit 0;			//PDBg
		(_display displayCtrl 1824) ctrlCommit 0;			//PSBg
		(_display displayCtrl 1930) ctrlCommit 0;			//PSUnitTitle		
		(_display displayCtrl 1931) ctrlCommit 0;			//PSUnitData	

		(_display displayCtrl 1932) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1933) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1934) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1935) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1937) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1939) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1940) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1941) ctrlCommit 0;				//PSLoadout
		(_display displayCtrl 1942) ctrlCommit 0;				//PSLoadout	
		
		(_display displayCtrl 1825) ctrlCommit 0;			//PNBg
		(_display displayCtrl 1826) ctrlCommit 0;			//PDNameTitle
		(_display displayCtrl 109) ctrlCommit 0;			//PDName
		(_display displayCtrl 1828) ctrlCommit 0;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlCommit 0;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlCommit 0;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlCommit 0;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlCommit 0;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlCommit 0;			//PDMonth
		(_display displayCtrl 1921) ctrlCommit 0;			//PDDay
		(_display displayCtrl 1922) ctrlCommit 0;			//PDYear
		(_display displayCtrl 1923) ctrlCommit 0;			//PDYAge
		(_display displayCtrl 202302) ctrlCommit 0;			//PDBranch
		(_display displayCtrl 202303) ctrlCommit 0;			//PDMOS
		(_display displayCtrl 202304) ctrlCommit 0;			//PDRank
		// (_display displayCtrl 202305) ctrlCommit 0;			//PDCurrency

		(_display displayCtrl 1833) ctrlCommit 0;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlCommit 0;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlCommit 0;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlCommit 0;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlCommit 0;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlCommit 0;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlCommit 0;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlCommit 0;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlCommit 0;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlCommit 0;			//PDNewsFG	

		uiNamespace setVariable ["BIS_MainMenu_isPStatsExpanded", true];
		ctrlSetFocus (_display displayCtrl 1621);
	};

	//--- PNewsButton
	case "pNewsButton": {
		disableSerialization;
		_ctrl = _params select 0;
		_display = ctrlParent _ctrl;
		_upperPartTime = 0.3;
		_buttonsTime = 0.04;

		(_display displayCtrl 1823) ctrlSetFade 1;			//PDBg
		(_display displayCtrl 1824) ctrlSetFade 1;			//PSBg
		(_display displayCtrl 1930) ctrlSetFade 1;			//PSUnitTitle		
		(_display displayCtrl 1931) ctrlSetFade 1;			//PSUnitData
		(_display displayCtrl 1932) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1933) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1934) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1935) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1937) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1939) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1940) ctrlSetFade 1;				//PSLoadout	
		(_display displayCtrl 1941) ctrlSetFade 1;				//PSLoadout
		(_display displayCtrl 1942) ctrlSetFade 1;				//PSLoadout	

		
		(_display displayCtrl 1825) ctrlSetFade 0;			//PNBg
		(_display displayCtrl 1826) ctrlSetFade 1;			//PDNameTitle
		(_display displayCtrl 109) ctrlSetFade 1;			//PDName
		(_display displayCtrl 1828) ctrlSetFade 1;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlSetFade 1;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlSetFade 1;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlSetFade 1;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlSetFade 1;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlSetFade 1;			//PDMonth
		(_display displayCtrl 1921) ctrlSetFade 1;			//PDDay
		(_display displayCtrl 1922) ctrlSetFade 1;			//PDYear
		(_display displayCtrl 1923) ctrlSetFade 1;			//PDYAge
		(_display displayCtrl 202302) ctrlSetFade 1;		//PDBranch
		(_display displayCtrl 202303) ctrlSetFade 1;		//PDMOS
		(_display displayCtrl 202304) ctrlSetFade 1;		//PDRank
		// (_display displayCtrl 202305) ctrlSetFade 1;		//PDCurrency
		
		(_display displayCtrl 1833) ctrlSetFade 0;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlSetFade 0;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlSetFade 0;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlSetFade 0;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlSetFade 0;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlSetFade 0;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlSetFade 0;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlSetFade 0;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlSetFade 0;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlSetFade 0;			//PDNewsFG		
		
		uiSleep 0.05;

		(_display displayCtrl 1823) ctrlCommit 0;			//PDBg
		(_display displayCtrl 1824) ctrlCommit 0;			//PSBg
		(_display displayCtrl 1930) ctrlCommit 0;			//PSUnitTitle		
		(_display displayCtrl 1931) ctrlCommit 0;			//PSUnitData
		(_display displayCtrl 1932) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1933) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1934) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1935) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1936)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1937) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1938)	ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1939) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1940) ctrlCommit 0;				//PSLoadout	
		(_display displayCtrl 1941) ctrlCommit 0;				//PSLoadout
		(_display displayCtrl 1942) ctrlCommit 0;				//PSLoadout	

		
		(_display displayCtrl 1825) ctrlCommit 0;			//PNBg
		(_display displayCtrl 1826) ctrlCommit 0;			//PDNameTitle
		(_display displayCtrl 109) ctrlCommit 0;			//PDName
		(_display displayCtrl 1828) ctrlCommit 0;			//PDDOBTitle
		(_display displayCtrl 1829) ctrlCommit 0;			//PDAgeTitle
		(_display displayCtrl 1830) ctrlCommit 0;			//PDBranchTitle
		(_display displayCtrl 1831) ctrlCommit 0;			//PDBilletTitle
		(_display displayCtrl 1832) ctrlCommit 0;			//PDUnitLogo
		(_display displayCtrl 1920) ctrlCommit 0;			//PDMonth
		(_display displayCtrl 1921) ctrlCommit 0;			//PDDay
		(_display displayCtrl 1922) ctrlCommit 0;			//PDYear
		(_display displayCtrl 1923) ctrlCommit 0;			//PDYAge
		(_display displayCtrl 202302) ctrlCommit 0;			//PDBranch
		(_display displayCtrl 202303) ctrlCommit 0;			//PDMOS
		(_display displayCtrl 202304) ctrlCommit 0;			//PDRank
		// (_display displayCtrl 202305) ctrlCommit 0;			//PDCurrency
		
		(_display displayCtrl 1833) ctrlCommit 0;			//PDNewsAuthor
		(_display displayCtrl 1834) ctrlCommit 0;			//PDNewsTimestamp
		(_display displayCtrl 1835) ctrlCommit 0;			//PDNewsDataStatic
		(_display displayCtrl 1924) ctrlCommit 0;			//PDNewsTitleData
		(_display displayCtrl 1925) ctrlCommit 0;			//PDNewsNewsTime
		(_display displayCtrl 1926) ctrlCommit 0;			//PDNewsNewsDateMM
		(_display displayCtrl 1927) ctrlCommit 0;			//PDNewsNewsDateDD
		(_display displayCtrl 1928) ctrlCommit 0;			//PDNewsNewsDateYYYY
		(_display displayCtrl 1929) ctrlCommit 0;			//PDNewsNewsData
		(_display displayCtrl 1836) ctrlCommit 0;			//PDNewsFG		

		uiNamespace setVariable ["BIS_MainMenu_isPNewsExpanded", true];
		ctrlSetFocus (_display displayCtrl 1622);
	};

	//--- Display onload
	case "onUnload": {};

	//--- Display onload
	case "keyDown": {
		_display = _params select 0;
		_key = _params select 1;
		_shift = _params select 2;
		_ctrlKey = _params select 3;
		_alt = _params select 4;		
	};

	//--- Nothing
	default {};
};