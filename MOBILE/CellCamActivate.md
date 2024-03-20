---
ns: MOBILE
---
## CELL_CAM_ACTIVATE

```c
// 0xFDE8F069C542D126 0x234C1AE9
void CELL_CAM_ACTIVATE(BOOL activate, BOOL goFirstPerson);
```

Activates the cellphone camera. Make sure the phone is created with [`CREATE_MOBILE_PHONE`](#_0xA4E8E696C532FBC7) or else the camera will be bugged.

## Parameters
* **activate**: Toggles the camera on/off.
* **goFirstPerson**: Toggles camera in first person mode.

