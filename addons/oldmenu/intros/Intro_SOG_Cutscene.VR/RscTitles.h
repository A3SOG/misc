class RscTitles {
  /*class RscTitles {
    class RscLogoA {
      idd = -1;
      duration = 1e+1000;
      fadeIn = 0;
      fadeOut = 0;
      controls[] = {RsclogoPicture};
      class RsclogoPicture {
        idc = -1;
        type = 0;
        style = "0x30";
        x = "SafeZoneX + SafeZoneW/2 - w512/2";
        y = "SafeZoneY + SafeZoneH/2 - h512/2";
        w = "w512"; 
        h = "h512";
        font = "PuristaMedium";
        sizeEx = 0;
        colorBackground[] = {0,0,0,0};
        colorText[] = {1,1,1,1};
        text = "SOG_Scene_UIVignette01_ca.paa";
      };
    };
  };*/

  class Splash {
    idd = -1;
    duration = 1e+1000;
    fadeIn = 3;
    fadeOut = 3;
    controls[] = { "RsclogoPicture" };
    class RsclogoPicture {
      idc = -1;
      type = 0;
      style = "0x30 + 0x800";
      x = "0 * safeZoneW + safeZoneX";
      y = "0 * safeZoneH + safeZoneY";
      w = "1 * safeZoneW";
      h = "1 * safeZoneH";
      font = "PuristaMedium";
      sizeEx = 0;
      colorBackground[] = {0,0,0,0};
      colorText[] = {1,1,1,1};
      text = "images\SOG_Scene_UISplashBG_ca.paa";
    };
  };

  class RscLogoA {
    idd = -1;
    duration = 1e+1000;
    fadeIn = 0;
    fadeOut = 0;
    controls[] = { "RsclogoPicture" };
    class RsclogoPicture {
      idc = -1;
      type = 0;
      style = "0x30 + 0x800";
      x = "0 * safeZoneW + safeZoneX";
      y = "0 * safeZoneH + safeZoneY";
      w = "1 * safeZoneW";
      h = "1 * safeZoneH";
      font = "PuristaMedium";
      sizeEx = 0;
      colorBackground[] = {0,0,0,0};
      colorText[] = {0.5,0.5,0.5,0.0};
      text = "images\SOG_Scene_UIVignette_BG_ca.jpg";
    };
  };

  class RscLogoB {
    idd = -1;
    duration = 1e+1000;
    fadeIn = 0;
    fadeOut = 0;
    controls[] = { "RsclogoPicture" };
    class RsclogoPicture {
      idc = -1;
      type = 0;
      style = "0x30";
      x = "SafeZoneX + SafeZoneW/2 - w512/2";
      y = "SafeZoneY + SafeZoneH/2 - h256/2";
      w = "w512"; 
      h = "h256";
      font = "PuristaMedium";
      sizeEx = 0;
      colorBackground[] = {0,0,0,0};
      colorText[] = {1,1,1,1};
      text = "images\SOG_Scene_UISplashBG_ca.paa";
    };
  };

  #include "Functions\Modules\CONFIG\moduleRscTitles.h"
};