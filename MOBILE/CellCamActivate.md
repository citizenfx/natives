---
ns: MOBILE
---
## CELL_CAM_ACTIVATE

```c
// 0xFDE8F069C542D126 0x234C1AE9
void CELL_CAM_ACTIVATE(BOOL active, BOOL bGoFirstPerson);
```

Activates the cellphone camera. Make sure you have a mobile phone created with [`CREATE_MOBILE_PHONE`](#_0xA4E8E696C532FBC7) or else the camera will not work.

## Parameters
* **active**: Toggle whether the camera should be active.
* **bGoFirstPerson**: Unused parameter.

