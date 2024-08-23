---
ns: PAD
---
## ENABLE_ALL_CONTROL_ACTIONS

```c
// 0xA5FFE9B05F199DE7 0xFC2F119F
void ENABLE_ALL_CONTROL_ACTIONS(int controlType);
```

```
enum CONTROL_TYPE {
  PLAYER_CONTROL,
  CAMERA_CONTROL,
  FRONTEND_CONTROL
};
```

## Parameters
* **controlType**: The type of control inputs.
