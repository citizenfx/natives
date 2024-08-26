---
ns: PAD
---
## ENABLE_ALL_CONTROL_ACTIONS

```c
// 0xA5FFE9B05F199DE7 0xFC2F119F
void ENABLE_ALL_CONTROL_ACTIONS(int padIndex);
```

```c
enum ePadType {
  PLAYER_CONTROL = 0,
  CAMERA_CONTROL,
  FRONTEND_CONTROL
};
```

## Parameters
* **padIndex**: The control system instance to use.
