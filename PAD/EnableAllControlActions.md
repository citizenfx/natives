---
ns: PAD
---
## ENABLE_ALL_CONTROL_ACTIONS

```c
// 0xFC2F119F
void ENABLE_ALL_CONTROL_ACTIONS(int controlType);
```

```
padIndex: 
PLAYER_CONTROL = 0
CAMERA_CONTROL = 1
FRONTEND_CONTROL = 2
```

## Parameters
* **controlType**: The control type to enable.

Enables all the inputs for a player control for 1 frame.
