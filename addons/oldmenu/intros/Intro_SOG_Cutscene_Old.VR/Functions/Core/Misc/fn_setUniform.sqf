params ["_unit"];

_SOGPlayerBranch = profileNamespace getVariable ["SOGPlayerBranch", "na"];
_SOGPlayerMOS = profileNamespace getVariable ["SOGPlayerMOS", "na"];
_SOGPlayerPaygrade = profileNamespace getVariable ["SOGPlayerPaygrade", "na"];

switch (_SOGPlayerBranch) do {
	case "USAF": {
		if ((_SOGPlayerPaygrade in ["E5","E6","E7a","E7b","E8a","E8b","E9a","E9b","E9c","E9d"]) && (_SOGPlayerMOS in ["1C2X1","1T2X1","1C4X1","1W0X1","1T0X1","13CX","13DX","15WXC"])) then {
			_unit forceAddUniform ("SOG_Dress_USAF_GI_" + _SOGPlayerPaygrade + "_003");
		};
		if ((_SOGPlayerPaygrade in ["O1","O2","O3","O4","O5","O6","O7","O8","O9","O10"]) && (_SOGPlayerMOS in ["1C2X1","1T2X1","1C4X1","1W0X1","1T0X1","13CX","13DX","15WXC"])) then {
			_unit forceAddUniform ("SOG_Dress_USAF_GI_" + _SOGPlayerPaygrade + "_001");
		};
	};
	case "Army": {
		if ((_SOGPlayerPaygrade in ["O1","O2","O3","O4","O5","O6","O7","O8","O9","O10"]) && (_SOGPlayerMOS == "18A")) then {
			_unit forceAddUniform ("SOG_Dress_USA_SF_" + _SOGPlayerPaygrade + "_001");
		};

		if ((_SOGPlayerPaygrade in ["E5","E6","E7","E8a","E8b","E9a","E9b","E9c"]) && (_SOGPlayerMOS in ["18B", "18Z"])) then {
			_unit forceAddUniform ("SOG_Dress_USA_SF_" + _SOGPlayerPaygrade + "_001");
		};

		if ((_SOGPlayerPaygrade in ["E5","E6","E7","E8a","E8b","E9a","E9b","E9c"]) && (_SOGPlayerMOS == "18D")) then {
			_unit forceAddUniform ("SOG_Dress_USA_SF_" + _SOGPlayerPaygrade + "_002");
		};

		if ((_SOGPlayerPaygrade in ["E5","E6","E7","E8a","E8b","E9a","E9b","E9c"]) && (_SOGPlayerMOS in ["18C", "18E", "18X"])) then {
			_unit forceAddUniform ("SOG_Dress_USA_SF_" + _SOGPlayerPaygrade + "_003");
		};

		if (_SOGPlayerPaygrade == "WO1") then {
			if (_SOGPlayerMOS == "180A") then { _unit forceAddUniform "SOG_Dress_USA_SF_W1_001"; };
		};
		if (_SOGPlayerPaygrade == "WO2") then {
			if (_SOGPlayerMOS == "180A") then { _unit forceAddUniform "SOG_Dress_USA_SF_W2_001"; };
		};
		if (_SOGPlayerPaygrade == "WO3") then {
			if (_SOGPlayerMOS == "180A") then { _unit forceAddUniform "SOG_Dress_USA_SF_W3_001"; };
		};
		if (_SOGPlayerPaygrade == "WO4") then {
			if (_SOGPlayerMOS == "180A") then { _unit forceAddUniform "SOG_Dress_USA_SF_W4_001"; };
		};
		if (_SOGPlayerPaygrade == "WO5") then {
			if (_SOGPlayerMOS == "180A") then { _unit forceAddUniform "SOG_Dress_USA_SF_W5_001"; };
		};
	};
	case "USMC": {
		if ((_SOGPlayerPaygrade in ["E5","E6","E7","E8a","E8b","E9a","E9b","E9c","O1","O2","O3","O4","O5","O6","O7","O8","O9","O10"]) && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform ("SOG_Dress_USMC_SOC_" + _SOGPlayerPaygrade + "_001");
		};

		if ((_SOGPlayerPaygrade == "WO1") && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform "SOG_Dress_USMC_SOC_WO1_001";
		};
		if ((_SOGPlayerPaygrade == "WO2") && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform "SOG_Dress_USMC_SOC_WO2_001";
		};
		if ((_SOGPlayerPaygrade == "WO3") && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform "SOG_Dress_USMC_SOC_WO3_001";
		};
		if ((_SOGPlayerPaygrade == "WO4") && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform "SOG_Dress_USMC_SOC_WO4_001";
		};
		if ((_SOGPlayerPaygrade == "WO5") && (_SOGPlayerMOS in ["0321","8541","8631","8652","8653","8654","0372"])) then {
			_unit forceAddUniform "SOG_Dress_USMC_SOC_WO5_001";
		};
	};
	case "Navy": {};	
};