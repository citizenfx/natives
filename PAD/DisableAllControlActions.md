---
ns: PAD
---
## DISABLE_ALL_CONTROL_ACTIONS

```c
// 0x16753CF4
void DISABLE_ALL_CONTROL_ACTIONS(int controlType);
```

```
controlType: 
PLAYER_CONTROL = 0
CAMERA_CONTROL = 1
FRONTEND_CONTROL = 2
```

## Parameters
* **controlType**: The control type to disable.

Disables all the inputs for a player control for 1 frame.
