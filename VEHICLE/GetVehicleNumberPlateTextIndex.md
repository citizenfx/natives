---
ns: VEHICLE
---
## GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX

```c
// 0xF11BC2DD9A3E7195 0x499747B6
int GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle);
```

```c
enum eVehiclePlateIndicies {
	SanAndreasCursive = 0,
	SanAndreasBlack = 1,
	SanAndreasBlue = 2,
	SanAndreasPlain = 3,
	SRExcept = 4,
	NorthYankton = 5,
	// All indicies below this require b3095
	ECola = 6,
	LasVenturas = 7,
	LiberyCity = 8,
	LSCarMeet = 9,
	LSPanic = 10,
	LSPounders = 11,
	Sprunk = 12,
}
```

## Parameters
* **vehicle**: The vehicle to get the plate index of

## Return value
Returns the plate index, reference `eVehiclePlateIndicies`
