execVM "R3F_revive\revive_init.sqf";

// For the demo mission explanation
//execVM "briefing.sqf";

#include "R3F_ARTY_AND_LOG\init.sqf"

// initialize functions
nul=[] execVM "z_fnc\z_functions.sqf";

setViewDistance 6000;

z_nbocc = 0;
z_posarray = [];
z_posSpawnEni = getMarkerPos "z_mkSpawnEni";
player addAction ["stock position","z_scripts\z_editionstockpos.sqf",["XML"], 1, false, false];
player addAction ["Select Weapon", "wepsel\selectweapon.sqf"];

onMapSingleClick "player setpos _pos";