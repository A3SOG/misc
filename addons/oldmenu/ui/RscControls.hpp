/*
class ProfileMenu: RscPictureKeepAspect {
	idc = -2;
	x = "54.25 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";
	y = "-17.80 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "43.2 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "43.2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	color[] = {0.78,0.87,0.63,1}; //button text color
	text = QUOTE(PATHTOF(data\UI_SOG_MainMenu_ProfileBG01_ca.paa));
};
class ProfileMenuBranchPicture: ProfileMenu {
	idc = 202400;
	text = "";
};
class ProfileMenuRankPicture: ProfileMenu {
	idc = 202401;
	text = "";
};
class ProfileMenuCharacter: ProfileMenu {
	idc = -1;
	text = QUOTE(PATHTOF(data\character\UI_SOG_MainMenu_ProfileBranch01_Character_001_ca.paa));
};
class ProfileMenuBranchTitle: RscTitle {
	idc = -1;
	x = "54.38 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";
	y = "-16.6 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.78,0.87,0.63,1}; //button text color (also?)
	shadow = 0;
	style = 0;
	text = "BRANCH:";
};
class ProfileMenuMOSTitle: RscTitle {
	idc = -1;
	x = "65.55 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";
	y = "-16.6 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.78,0.87,0.63,1}; //button text color (also?)
	shadow = 0;
	style = 0;
	text = "MOS: ";
};
class PlayersNameTitle: RscTitle {
	idc = -1;
	x = "54.38 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";
	y = "-17.75 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "15 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.78,0.87,0.63,1}; //button text color (also?)
	shadow = 0;
	style = 0;
	text = "NAME:";
};
*/

/*----------------------------------------------------------------------------------------------------*/

class RscMainMenuButton: RscShortcutButton {
	deletable = 0;
	fade = 0;
	type = QUOTE(CT_SHORTCUTBUTTON);
	x = 0.1;
	y = 0.1;
	class HitZone {
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos {
		left = 0;
		top = QUOTE(((GUI_GRID_HAbs / 20) - GUI_TEXT_SIZE_MEDIUM) / 2);
		w = QUOTE(GUI_TEXT_SIZE_MEDIUM * (3/4));
		h = QUOTE(GUI_TEXT_SIZE_MEDIUM);
	};
	class TextPos {
		left = QUOTE(GUI_TEXT_SIZE_MEDIUM * (0/4));
		top = QUOTE(((GUI_GRID_HAbs / 25) - GUI_TEXT_SIZE_MEDIUM) / 2);
		right = "0.005";
		bottom = "0";
	};
	shortcuts[] = {};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = {1,1,1,1};
	colorFocused[] = {1,1,1,1};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	colorBackgroundFocused[] = {
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	colorBackground2[] = {1,1,1,1};
	soundEnter[] = {
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = {
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = {
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = {
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	class Attributes {
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "center";
		shadow = "true";
	};
	idc = -1;
	style = QUOTE(ST_CENTER + ST_FRAME + ST_HUD_BACKGROUND);
	default = 0;
	shadow = 1;
	w = 0;
	h = 0;
	textSecondary = "";
	colorSecondary[] = {1,1,1,1};
	colorFocusedSecondary[] = {1,1,1,1};
	color2Secondary[] = {0.95,0.95,0.95,1};
	colorDisabledSecondary[] = {1,1,1,0.25};
	sizeExSecondary = QUOTE(GUI_TEXT_SIZE_MEDIUM);
	fontSecondary = "RobotoCondensed";
	animTextureDefault = QUOTE(PATHTOF(data\buttonBackground_ca.paa));
	animTextureNormal = QUOTE(PATHTOF(data\buttonBackground_ca.paa));
	animTextureDisabled = QUOTE(PATHTOF(data\buttonBackground_ca.paa));
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = QUOTE(PATHTOF(data\buttonBackground_ca.paa));
	animTexturePressed = QUOTE(PATHTOF(data\buttonBackground_ca.paa));
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = "RobotoCondensed";
	size = QUOTE(GUI_TEXT_SIZE_MEDIUM);
	sizeEx = QUOTE(GUI_TEXT_SIZE_MEDIUM);
	text = "";
	url = "";
	action = "";
	class AttributesImage {
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "center";
	};
};

/*----------------------------------------------------------------------------------------------------*/

class ButtonBase: RscMainMenuButton {
	idc = -1;
	x = "safeZoneX + 0.049";
	y = "0.0375";
	w = 0;
	h = 0;
	colorBackground[] = {1,1,1,0.125};
	colorBackgroundFocused[] = {1,1,1,1};
	colorBackground2[] = {1,1,1,0.65};
	color[] = {1,1,1,1};
	colorFocused[] = {0,0,0,1};
	color2[] = {0,0,0,0.125};
	periodFocus = 10;
	periodOver = 1;
	period = 5;
	onButtonClick = "";
	text = "";
	tooltip = "";
};

class ButtonPlay: ButtonBase {
	idc = 138;
	x = "safeZoneX + 0.049";
	y = "0.0375";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "playMission ['','\z\sog_misc\addons\missions\scenarios\SP_SOG_Training.VR'];";
	text = "C A R E E R S";
	tooltip = "Begin Your Career.";
};
class ButtonMultiplayer: ButtonBase {
	idc = 105;
	x = "safeZoneX + 0.049";
	y = "0.1";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "";
	text = "S E R V E R S";
	tooltip = "Engage in Online Warfare.";
};
class ButtonVirtualArsenal: ButtonBase {
	idc = 2421;
	x = "safeZoneX + 0.049";
	y = "0.16225";
	w = 0.495;
	h = 0.04925;
	// onButtonClick = "playMission['','\A3\Missions_F_Bootcamp\Scenarios\Arsenal.VR']";
	onButtonClick = "playMission ['','\z\sog_misc\addons\missions\scenarios\SP_SOG_Arsenal.VR'];";
	text = "L O A D O U T";
	tooltip = "Open Character Loadout.";
};
class ButtonEditor: ButtonBase {
	idc = 142;
	x = "safeZoneX + 0.049";
	y = "0.224725";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "";
	text = "D E V E L O P";
	tooltip = "Create and Edit Missions.";
};
class ButtonOptions: ButtonBase {
	idc = 1896;
	x = "safeZoneX + 0.049";
	y = "0.287";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "";
	text = "O P T I O N S";
	tooltip = "Configure Your Settings.";
};
class ButtonVideo: ButtonBase {
	idc = 301;
	x = "safeZoneX + 0.652";
	y = "0.1880";
	w = 0.3235;
	h = 0.04975;
	text = "V I D E O";
	tooltip = "Change Video Settings.";
};
class ButtonAudio: ButtonVideo {
	idc = 302;
	x = "safeZoneX + 0.652";
	y = "0.2505";
	text = "A U D I O";
	tooltip = "Change Audio Settings.";
};
class ButtonControls: ButtonVideo {
	idc = 303;
	x = "safeZoneX + 0.652";
	y = "0.3124";	
	ctrlStyle = "0x02";
	text = "I N P U T";
	tooltip = "Change Input Settings.";
};
class ButtonGame: ButtonVideo {
	idc = 307;
	x = "safeZoneX + 0.652";
	y = "0.37525";	
	text = "S E T U P";
	tooltip = "Change Gameplay Settings.";
};
class ButtonProfile: ButtonVideo {
	idc = 1001;
	x = "safeZoneX + 0.652";
	y = "0.4375";
	onButtonClick = "_display = ctrlParent (_this select 0); _ctrl109 =_display displayCtrl 109; ctrlActivate _ctrl109; debuglog _ctrl109";
	text = "R O L E S";
	tooltip = "Change Profile Settings.";
};
class ButtonExpansions: ButtonVideo {
	idc = 140;
	x = "safeZoneX + 0.652";
	y = "0.4995";
	text = "A D D O N";
	tooltip = "Change Expansion Settings.";
};
class ButtonDatabase: ButtonBase {
	idc = 2423;
	x = "safeZoneX + 0.049";
	y = "0.34925";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "";
	shortcuts[] = {"0x00050000 + 3"};
	text = "A R C H I V E";
	tooltip = "$STR_A3_RscDisplayMain_ButtonLearn_tooltip";
};
class ButtonExit: ButtonBase {
	idc = 106;
	x = "safeZoneX + 0.049";
	y = "0.4115";
	w = 0.495;
	h = 0.04925;
	onButtonClick = "";
	shortcuts[] = {"0x00050000 + 3"};
	text = "Q U I T";
	tooltip = "Exit Simulation.";
};

/*----------------------------------------------------------------------------------------------------*/

class rightSidePanelServiceRecordButton01: RscPictureKeepAspect {
	idc = 1806;
	x = "safeZoneX + safeZoneW - 1.160";
	y = "-0.8530";
	w = 1.724;
	h = 1.724;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuRight\SOG_UI_MenuRightButton01On_ca.paa));
};
class rightSidePanelServiceRecordButton02: RscPictureKeepAspect {
	idc = 1807;
	x = "safeZoneX + safeZoneW - 1.160";
	y = "-0.8530";
	w = 1.724;
	h = 1.724;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuRight\SOG_UI_MenuRightButton02Off_ca.paa));
};
class rightSidePanelServiceRecordButton03: RscPictureKeepAspect {
	idc = 1808;
	x = "safeZoneX + safeZoneW - 1.160";
	y = "-0.8530";
	w = 1.724;
	h = 1.724;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuRight\SOG_UI_MenuRightButton03Off_ca.paa));
};
class rightSidePanelServiceRecordButton04: RscPictureKeepAspect {
	idc = 1809;
	x = "safeZoneX + safeZoneW - 1.160";
	y = "-0.8530";
	w = 1.724;
	h = 1.724;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuRight\SOG_UI_MenuRightButton04Off_ca.paa));
};

/*----------------------------------------------------------------------------------------------------*/

class leftSidePanelDossierButton01: RscPictureKeepAspect {
	idc = 1820;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeftButton01On_ca.paa));
};
class leftSidePanelStatsButton01: RscPictureKeepAspect {
	idc = 1821;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeftButton02Off_ca.paa));
};
class leftSidePanelNewswireButton01: RscPictureKeepAspect {
	idc = 1822;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeftButton03Off_ca.paa));
};

/*----------------------------------------------------------------------------------------------------*/

class toggleServiceRecordImage : RscPictureKeepAspect {
	idc = 1817;
	x = "safeZoneX + safeZoneW - 0.377";
	y = "-0.503";
	w = 0.4375;
	h = 0.4375;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuRight\SOG_UI_MenuRight_ToggleServiceRecordOff_ca.paa));
};

/*----------------------------------------------------------------------------------------------------*/

class ServiceRecordButton01: RscButton {
	idc = 1606;
	x = "safeZoneX + safeZoneW - 0.5225";
	y = "safeZoneY + 0.0975";
	w = 0.1125;
	h = 0.045;
	text = "";
	colorBackground[] = {1,1,1,0.125};
	colorBackgroundActive[] = {1,1,1,0.25};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	tooltip = "";
	action = "ctrlEnable [1606, false]; ['army'] spawn sog_misc_oldmenu_fnc_branchChange;";
};
class ServiceRecordButton02: ServiceRecordButton01 {
	idc = 1607;
	x = "safeZoneX + safeZoneW - 0.41";
	y = "safeZoneY + 0.0975";
	w = 0.1125;
	h = 0.045;
	action = "ctrlEnable [1607, false]; ['usmc'] spawn sog_misc_oldmenu_fnc_branchChange;";
};
class ServiceRecordButton03: ServiceRecordButton01 {
	idc = 1608;
	x = "safeZoneX + safeZoneW - 0.2975";
	y = "safeZoneY + 0.0975";
	w = 0.1125;
	h = 0.045;
	action = "ctrlEnable [1608, false]; ['usn'] spawn sog_misc_oldmenu_fnc_branchChange;";
};
class ServiceRecordButton04: ServiceRecordButton01 {
	idc = 1609;
	x = "safeZoneX + safeZoneW - 0.185";
	y = "safeZoneY + 0.0975";
	w = 0.1125;
	h = 0.045;
	action = "ctrlEnable [1609, false]; ['usaf'] spawn sog_misc_oldmenu_fnc_branchChange;";
};

/*----------------------------------------------------------------------------------------------------*/

class PlayerDossierButton01: RscButton {
	idc = 1620;
	x = "safeZoneX + 0.075";
	y = "1.2675";
	w = 0.1465;
	h = 0.045;
	text = "";
	colorBackground[] = {1,1,1,0.125};
	colorBackgroundActive[] = {1,1,1,0.25};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	tooltip = "";
	action = "ctrlEnable [1620, false]; ['dossier'] spawn sog_misc_oldmenu_fnc_metaChange;";
};
class PlayerStatsButton01: PlayerDossierButton01 {
	idc = 1621;
	x = "safeZoneX + 0.225";
	y = "1.2675";
	w = 0.1465;
	h = 0.045;
	action = "ctrlEnable [1621, false]; ['stats'] spawn sog_misc_oldmenu_fnc_metaChange;";
};
class PlayerNewswireButton01: PlayerDossierButton01 {
	idc = 1622;
	x = "safeZoneX + 0.374";
	y = "1.2675";
	w = 0.1465;
	h = 0.045;
	action = "ctrlEnable [1622, false]; ['news'] spawn sog_misc_oldmenu_fnc_metaChange;";
};

/*----------------------------------------------------------------------------------------------------*/

class toggleServiceRecordOpen : RscButton {
	idc = 1610;
	x = "safeZoneX + safeZoneW - 0.28";
	y = "-0.345";
	w = 0.24;
	h = 0.12;
	text = "";
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	tooltip = "Toggle Service Records View.";
};

class toggleServiceRecordClose : RscButton {
	idc = 1611;
	x = "safeZoneX + safeZoneW - 0.725";
	y = "safeZoneY + 0.75";
	w = 0.24;
	h = 0.12;
	text = "";
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	tooltip = "Toggle Service Records View.";
};

/*----------------------------------------------------------------------------------------------------*/

class leftSidePanelDossierBG : RscPictureKeepAspect {
	idc = 1823;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeft02_ca.paa));
};

/*----------------------------------------------------------------------------------------------------*/

class leftSidePanelStatsBG : RscPictureKeepAspect {
	idc = 1824;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeft03_ca.paa));
};
class leftSidePanelStatsPrimaryWeapon : RscText {
	idc = 1932;
	x = "safeZoneX + 0.127";
	y = "-0.052";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsSecondaryWeapon : RscText {
	idc = 1933;
	x = "safeZoneX + 0.127";
	y = "-0.003";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsLauncherWeapon : RscText {
	idc = 1934;
	x = "safeZoneX + 0.127";
	y = "0.046";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsUniform : RscText {
	idc = 1935;
	x = "safeZoneX + 0.127";
	y = "0.094";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsVest : RscText {
	idc = 1936;
	x = "safeZoneX + 0.127";
	y = "0.14325";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsBackpack : RscText {
	idc = 1937;
	x = "safeZoneX + 0.127";
	y = "0.1925";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsHelmet : RscText {
	idc = 1938;
	x = "safeZoneX + 0.127";
	y = "0.2395";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsEyewear : RscText {
	idc = 1939;
	x = "safeZoneX + 0.127";
	y = "0.288";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsAccessory : RscText {
	idc = 1940;
	x = "safeZoneX + 0.127";
	y = "0.3375";
	w = 0.3665;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "EMPTY";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsRole : RscText {
	idc = 1941;
	x = "safeZoneX + 0.0875";
	y = "0.39525";
	w = 1.5;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "**ASSIGNMENT:";
	sizeEx = 0.0475;
	style = ST_LEFT;
	align = "LEFT";
};
class leftSidePanelStatsRoleData : RscText {
	idc = 1942;
	x = "safeZoneX - 0.9935";
	y = "0.39525";
	w = 1.5;
	h = 1.5;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "PENDING";
	sizeEx = 0.0475;
	style = ST_RIGHT;
	align = "RIGHT";
};

/*-------------------------------------------NEWS PANEL-------------------------------------------*/

class leftSidePanelNewsBG : RscPictureKeepAspect {
	idc = 1825;
	x = "safeZoneX - 0.5635";
	y = "0.079";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeft04BG_ca.paa));
};
class leftSidePanelNewsAuthor : RscText {
	idc = 1833;
	x = "safeZoneX + 0.082";
	y = "0.76";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "WASHINGTON (AAN)";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.04;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsTimestamp : RscText {
	idc = 1834;
	x = "safeZoneX + 0.082";
	y = "0.794";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "UPDATED      UTC (  -  -    )";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.03;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsDataStatic : RscText {
	idc = 1835;
	x = "safeZoneX + 0.084";
	y = "0.82";
	w = 0.44;
	h = 0.35;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "                                         ---------------- REPORTS ----------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         --------------- TEAR LINE ---------------";
	style = "0x00+0x10+0x0200";
	sizeEx = 0.034;
	lineSpacing = 0.5;
};
class leftSidePanelNewsTitleData : RscText {
	idc = 1924;
	x = "safeZoneX + 0.081";
	y = "0.704";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "UNITED STATES CONGRESS AUTHORISES NEW BUDGET FOR SPECIAL OPERATIONS";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.04;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsTime : RscText {
	idc = 1925;
	x = "safeZoneX + 0.1525";
	y = "0.794";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "0000";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.03;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsDateMM : RscText {
	idc = 1926;
	x = "safeZoneX + 0.242";
	y = "0.794";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "MM";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.03;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsDateDD : RscText {
	idc = 1927;
	x = "safeZoneX + 0.2685";
	y = "0.794";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "DD";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.03;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsDateYYYY : RscText {
	idc = 1928;
	x = "safeZoneX + 0.295";
	y = "0.794";
	w = 0.44;
	h = 0.47;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,0.5};
	text = "YYYY";
	style = "0x00+0x10+0x0200";			
	sizeEx = 0.03;
	lineSpacing = 0.63;		
};
class leftSidePanelNewsData : RscText {
	idc = 1929;
	x = "safeZoneX + 0.084";
	y = "0.88";
	w = 0.44;
	h = 0.35;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "THE U.S. INTELLIGENCE OVERSIGHT COMMITTEE HAS AUTHORISED FURTHER SPENDING INCREASES AIMED AT IMPROVING CAPABILITIES FOR UNITS INVOLVED IN SPECIAL OPERATIONS AND INTEL!                                         THE NEW SPENDING COMES JUST MONTHS AFTER INCREASING GLOBAL TERRORIST ACTIVITY HAD EMERGED FOLLOWING THE DISSOLUTION OF THE SOVIET UNION, LEAVING TENSIONS RISING...";
	style = "0x00+0x10+0x0200";
	sizeEx = 0.034;
	lineSpacing = 0.5;
};
class leftSidePanelNewsFG : RscPictureKeepAspect {
	idc = 1836;
	x = "safeZoneX - 0.5635";
	y = "1.0925";
	w = 1.722;
	h = 1.722;
	colorText[] = {1,1,1,1};
	text = QUOTE(PATHTOF(data\MenuLeft\SOG_UI_MenuLeft04FG_ca.paa));
};

/*----------------------------------------------------------------------------------------------------*/

class CopyrightText: RscText {
	idc = 1006;
	x = "0 * (((safezoneW / safezoneH) min 1.2) / 40) + (safezoneX)";
	y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	colorBackground[] = {0,0,0,0.7};
	font = "PuristaLight";
	shadow = 0;
	sizeEx = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	text = "$STR_A3_RscDisplayMain_PlayersName";
};
class VersionNumber: RscText {
	idc = 118;
	x = "safezoneX + safezoneW - 4.9 * (((safezoneW / safezoneH) min 1.2) / 40)";
	y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = "PuristaLight";
	shadow = 0;
	sizeEx = "0.8 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	style = 1;
};
class VersionText: RscText {
	idc = 1008;
	x = "safezoneX + safezoneW - 12.5 * (((safezoneW / safezoneH) min 1.2) / 40)";
	y = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + (safezoneY + safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))";
	w = "0 * (((safezoneW / safezoneH) min 1.2) / 40)";
	h = "0 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = "PuristaLight";
	shadow = 0;
	sizeEx = "0.8 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	style = 1;
};
class ListSort: RscListBox {
	idc = 1555;
	x = "0";
	y = "0";
	w = "0";
	h = "0";
};