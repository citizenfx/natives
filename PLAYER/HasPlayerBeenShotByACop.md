---
ns: PLAYER
---
## _0xBC0753C9CA14B506

```c
// 0xBC0753C9CA14B506 0x9DF75B2A
BOOL _HAS_PLAYER_BEEN_SHOT_BY_A_COP(Player player, int ms, BOOL p2);
```

```
var num3 = PLAYER::GET_PLAYER_PED(l_2171); // proof l_2171 is a player
var num17 = PLAYER::_HAS_PLAYER_BEEN_SHOT_BY_A_COP(l_2171, 100, 0); // l_2171
.ysc:
    if (PLAYER::GET_PLAYER_WANTED_LEVEL(l_6EF) < v_4) { // l_6EF is a player
        PLAYER::SET_PLAYER_WANTED_LEVEL(l_6EF, v_4, 0); // l_6EF
        PLAYER::SET_PLAYER_WANTED_LEVEL_NOW(l_6EF, 0); // l_6EF
    } else {
        PLAYER::_4669B3ED80F24B4E(l_6EF); // l_6EF
        HUD::_BA8D65C1C65702E5(1);
        a_0 = 1;
    }
        if (l_4B24[l_6F2/*156*/]._f8C != PLAYER::_HAS_PLAYER_BEEN_SHOT_BY_A_COP(l_6EF, 100, 0)) { // l_6EF
            l_4B24[l_6F2/*156*/]._f8C = PLAYER::_HAS_PLAYER_BEEN_SHOT_BY_A_COP(l_6EF, 100, 0); // l_6EF
        }
Both was taken from fm_mission_controller
```

Returns if the ped has been shot by a cop entity.
Will return false if the ped that shot doesn't have the task - i.e no task now or dead or too far away.

## Parameters
* **player**: 
* **ms**: Time since bullet fired
* **p2**: Always false

## Return value
