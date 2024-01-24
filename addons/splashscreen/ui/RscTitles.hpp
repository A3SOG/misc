class RscTitles {
	class SplashNoise {
		idd = -1;
		movingEnable = 0;
		duration = 11;
		fadein = 3;
		fadeout = 0;
		controls[] = {"BackgroundNoise"};

		class BackgroundNoise: RscPicture {
			text = "\A3\Ui_f\data\IGUI\RscTitles\SplashArma3\arma3_splashNoise_ca.paa";
			colorText[] = {1,1,1,0.7};
			x = "safezoneXAbs";
			y = "safezoneY";
			w = "safezoneWAbs";
			h = "safezoneH";
		};
	};
	class SplashBohemia {
		idd = -1;
		movingEnable = 0;
		duration = 0;
		fadein = 2;
		fadeout = 2;
		name = "$STR_A3_SplashBohemia_0";
		controls[] = {"Picture"};

		class Picture: RscPictureKeepAspect {
			idc = 1200;
			text = QUOTE(PATHTOF(UI\TomClancysSOGSplash00_ca.paa));
			x = "0.5 -0.5";
			y = "0.5 -0.5";
			w = "1";
			h = "1";
		};
		/*class TextPresents: RscText {
			idc = 1000;
			text = "";
			style = 2;
			sizeEx = "0.03*SafezoneH";
			shadow = 0;
			x = "SafeZoneX + SafeZoneW / 2 - (46.5 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH - (0.505 * SafezoneH)";
			w = "48 * (0.01875 * SafezoneH)";
			h = "0.03 * SafezoneH";
		};*/
	};
	class SplashArma3 {
		idd = -1;
		movingEnable = 0;
		duration = 0;
		fadein = 3;
		fadeout = 1;
		name = "$STR_A3_SplashArma3_0";
		controls[] = {"Picture"};

		class Picture: RscPictureKeepAspect {
			idc = 1200;
			text = QUOTE(PATHTOF(UI\TomClancysSOGSplash01_ca.paa));
			x = "0.5 -0.5";
			y = "0.5 -0.5";
			w = "1";
			h = "1";
			//text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
			//x = "0.5 - 10 * (0.01875 * SafezoneH)";
			//y = "0.5 - 6 * (0.025 * SafezoneH)";
			//w = "20 * (0.01875 * SafezoneH)";
			//h = "10 * (0.025 * SafezoneH)";
		};
	};
	class SplashArma3Apex: SplashArma3 {
		class Picture: Picture {
			text = QUOTE(PATHTOF(UI\arma3apex_white_ca.paa));
			y = "0.5 - 7 * (0.025 * SafezoneH)";
		};
	};
	class SplashCopyright {
		idd = -1;
		movingEnable = 0;
		duration = 0;
		fadein = 2;
		fadeout = 2;
		name = "$STR_A3_SplashCopyright_0";
		controls[] = {"PictureA3Logo"};

		class PictureA3Logo: RscPictureKeepAspect {
			idc = 1200;
			text = QUOTE(PATHTOF(UI\TomClancysSOGSplash02_ca.paa));
			x = "0.5 -0.5";
			y = "0.5 -0.5";
			w = "1";
			h = "1";
		};
		/*class PictureBIlogo: RscPicture {
			idc = 1201;
			text = "\A3\Ui_f\data\IGUI\RscTitles\SplashBohemia\bi_logo_small_ca.paa";
			x = "SafeZoneX + SafeZoneW / 2 - (33 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (25.7 * (0.025 * SafezoneH)) / 2";
			w = "32 * (0.01875 * SafezoneH)";
			h = "16 * (0.025 * SafezoneH)";
		};
		class PicturePhysXLogo: RscPicture {
			idc = 1202;
			text = "\A3\Ui_f\data\Logos\GameWorks_white_ca.paa";
			x = "SafeZoneX + SafeZoneW / 2 + (16.5 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (13.6 * (0.025 * SafezoneH)) / 2";
			w = "16 * (0.01875 * SafezoneH)";
			h = "4 * (0.025 * SafezoneH)";
		};
		class LegalText: RscStructuredText {
			idc = -1;
			text = "$STR_A3_LEGAL_SPLASH";
			size = "0.02 * SafezoneH";
			shadow = 0;
			x = "SafeZoneX + SafeZoneW / 2 - (50 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH - (0.38 * SafezoneH)";
			w = "50 * (0.01875 * SafezoneH)";
			h = "0.39 * SafezoneH";

			class Attributes {
				align = "center";
				shadow = 0;
			};
		};*/
	};
	/*class SplashArma3Lite {
		idd = -1;
		movingEnable = 0;
		duration = 3;
		fadein = 0;
		fadeout = 0;
		controls[] = {"Picture","Tagline"};

		class Picture: RscPicture {
			idc = 1200;
			text = "\A3\Ui_f\data\IGUI\RscTitles\SplashArma3\arma3_lite_splash_ca.paa";
			x = "SafeZoneX + SafeZoneW / 2 - (20 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (17 * (0.025 * SafezoneH)) / 2";
			w = "20 * (0.01875 * SafezoneH)";
			h = "10 * (0.025 * SafezoneH)";
		};
		class Tagline: RscPicture {
			idc = 1201;
      text = "a3\ui_f\data\Logos\arma3_eden_logo_ca.paa";
			//text = "\A3\Ui_f\data\IGUI\RscTitles\SplashTagline\ThisIsWar_ca.paa";
			x = "SafeZoneX + SafeZoneW / 2 - (16.1 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (2.9 * (0.025 * SafezoneH)) / 2";
			w = "16.1 * (0.01875 * SafezoneH)";
			h = "8.05 * (0.025 * SafezoneH)";
		};
	};
	class SplashTagline {
		idd = -1;
		movingEnable = 0;
		duration = 3;
		fadein = 0;
		fadeout = 0;
		name = "$STR_A3_SplashTagline_0";
		controls[] = {"Picture"};

		class Picture: RscPicture {
			idc = 1200;
			text = "a3\ui_f\data\Logos\arma3_eden_logo_ca.paa";
			//text = "\A3\Ui_f\data\IGUI\RscTitles\SplashTagline\ThisIsWar_ca.paa";
			x = "SafeZoneX + SafeZoneW / 2 - (48 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (31.7 * (0.025 * SafezoneH)) / 2";
			w = "48 * (0.01875 * SafezoneH)";
			h = "24 * (0.025 * SafezoneH)";
		};
	};*/

	class SplashESRB {
		idd = -1;
		movingEnable = 0;
		duration = 0;
		fadein = 0;
		fadeout = 0;
		name = "$STR_A3_SplashESRB_0";
		controls[] = {"Picture"};

		class Picture: RscPicture {
			text = "\A3\Ui_f\data\IGUI\RscTitles\SplashESRB\ESRB_co.paa";
			x = "SafeZoneX + SafeZoneW / 2 - (72 * (0.01875 * SafezoneH)) / 2";
			y = "SafeZoneY +	SafeZoneH / 2 - (36 * (0.025 * SafezoneH)) / 2";
			w = "72 * (0.01875 * SafezoneH)";
			h = "36 * (0.025 * SafezoneH)";
		};
	};
};