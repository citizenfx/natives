---
ns: VEHICLE
---
## IS_VEHICLE_WINDOW_INTACT

```c
// 0x46E571A0E20D01F1 0xAC4EF23D
BOOL IS_VEHICLE_WINDOW_INTACT(Vehicle vehicle, int windowIndex);
```

```c
enum eWindowId {
	VEH_EXT_WINDOW_LF = 0,
	VEH_EXT_WINDOW_RF = 1,
	VEH_EXT_WINDOW_LR = 2,
	VEH_EXT_WINDOW_RR = 3,
	VEH_EXT_WINDOW_LM = 4,
	VEH_EXT_WINDOW_RM = 5,
	VEH_EXT_WINDSCREEN = 6,
	VEH_EXT_WINDSCREEN_R = 7,
}
```

## Parameters
* **vehicle**: The vehicle handle
* **windowIndex**: The index of the window

## Return value
