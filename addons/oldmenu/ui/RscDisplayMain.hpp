class RscDisplayMain: RscStandardDisplay {
	idd = 0;
	movingEnable = 0;
	scriptName = "RscDisplayMain";
	scriptPath = "sog_misc_oldMenu";
	onLoad = "[""onLoad"",_this,""RscDisplayMain"",'sog_misc_oldMenu'] call compile preprocessFileLineNumbers ""A3\ui_f\scripts\initDisplay.sqf""";
	onUnload = "[""onUnload"",_this,""RscDisplayMain"",'sog_misc_oldMenu'] call compile preprocessFileLineNumbers ""A3\ui_f\scripts\initDisplay.sqf""";

	class controlsBackground {
		delete Mainback;
		delete CA_ARMA2;

		#include "RscControlsBackground.hpp"
	};

	class controls {
		delete B_Player;
		delete B_SinglePlayer;
		delete B_SingleMission;
		delete B_MultiPlayer;
		delete B_MissionEditor;
		delete B_Credits;
		delete B_Quit;
		delete B_Campaign;
		delete B_Expansions;
		delete B_Options;
		delete Date;
		delete Version;
		delete Modlist;
		delete CA_ARMA2;
		delete CA_PlayerName;
		delete CA_Version;
		delete CA_SinglePlayer;
		delete CA_Editor;
		delete CA_PlayerProfile;
		delete CA_MP;
		delete CA_Options;
		delete CA_Expansions;
		delete CA_Exit;
		delete CA_MenuBack;
		delete CA_TitleBack;
		delete CA_BottomBack;
		delete Mainback;
		delete GroupTutorials;

		#include "RscControls.hpp"
	};

	class IconPicture: RscPictureKeepAspect {
		x = "0";
		y = "0";
		w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		spacing = "0.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
		text = "";
	};

	class DlcOwnedIconPicture: RscPictureKeepAspect {
		x = "0";
		y = "0";
		w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		spacing = "0.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
		text = "";
	};

	class DlcIconPicture: RscPictureKeepAspect {
		x = "0";
		y = "0";
		w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		spacing = "0.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
		text = "";
	};
};