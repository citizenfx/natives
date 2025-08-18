---
ns: VEHICLE
---
## IS_VEHICLE_TYRE_BURST

```c
// 0xBA291848A0815CA9 0x48C80210
BOOL IS_VEHICLE_TYRE_BURST(Vehicle vehicle, int wheelID, BOOL isBurstToRim);
```

```c
enum eVehicleWheels
{
	WHEEL_LF = 0, // Vehicle Left front
	WHEEL_RF = 1, // Vehicle Right front
	WHEEL_LM = 2, // Vehicle Left middle
	WHEEL_RM = 3, // Vehicle Right middle
	WHEEL_LR = 4, // Vehicle Left rear
	WHEEL_RR = 5, // Vehicle Right rear
	WHEEL_BF = 6, // Bike front
	WHEEL_BR = 7, // Bike rear
	MAX_WHEELS = 8
};
```

## Parameters
* **vehicle**: The vehicle to check the tire status of
* **wheelID**: The wheel id to check, see `eVehicleWheels`
* **isBurstToRim**: Whether it should only return `true` if the tire is bursted to its rims

## Return value
Returns `true` if the vehicle tire is poped, `false` otherwise.
