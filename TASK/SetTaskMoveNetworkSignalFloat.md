---
ns: TASK
aliases: ["0xD5BB4025AE449A4E","_SET_TASK_PROPERTY_FLOAT"]
---
## SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT

```c
// 0xD5BB4025AE449A4E 0xA79BE783
void SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(Ped ped, char* signalName, float value);
```

```
p0 - PLAYER::PLAYER_PED_ID();
p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".
p2 - From what i can see it goes up to 1f (maybe).
-LcGamingHD
Example: TASK::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);
```

## Parameters
* **ped**: The ped on which the task is playing.
* **signalName**: The property name.
* **value**: The property value to set.

