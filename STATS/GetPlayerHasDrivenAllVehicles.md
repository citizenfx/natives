---
ns: STATS
aliases: ["0x5EAD2BF6484852E4"]
---
## GET_PLAYER_HAS_DRIVEN_ALL_VEHICLES

```c
// 0x5EAD2BF6484852E4 0x23D70C39
BOOL GET_PLAYER_HAS_DRIVEN_ALL_VEHICLES();
```

```
example from completionpercentage_controller.ysc.c4
if (STATS::_5EAD2BF6484852E4()) {
            MISC::SET_BIT(g_17b95._f20df._ff10, 15);
            STATS::_11FF1C80276097ED(0xe9ec4dd1, 200, 0);
        }
```

## Return value
