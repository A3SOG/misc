#define COMPONENT missions
#define COMPONENT_BEAUTIFIED Missions
#include "..\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_MISSIONS
	#define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_MISSIONS
	#define DEBUG_SETTINGS DEBUG_SETTINGS_MISSIONS
#endif

#include "..\main\script_macros.hpp"