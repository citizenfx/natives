---
ns: PAD
---
## DISABLE_ALL_CONTROL_ACTIONS

```c
// 0x5F4B6931816E599B 0x16753CF4
void DISABLE_ALL_CONTROL_ACTIONS(int controlType);
```

## Parameters
* **controlType**: The type of control inputs.

```
enum CONTROL_TYPE {
  PLAYER_CONTROL = 0,
  CAMERA_CONTROL,
  FRONTEND_CONTROL
};
```
