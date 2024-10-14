---
ns: VEHICLE
---
## GET_VEHICLE_PLATE_TYPE

```c
// 0x9CCC9525BF2408E0 0x65CA9286
int GET_VEHICLE_PLATE_TYPE(Vehicle vehicle);
```

Returns the plates a vehicle has.

```c
enum eVehiclePlateType
{
	VPT_FRONT_AND_BACK_PLATES = 0,
	VPT_FRONT_PLATES = 1,
	VPT_BACK_PLATES = 2,
	VPT_NONE = 3,
};
```

Motorcycles with no visible plates will sometimes return a 2 for unknown reasons.

## Parameters
* **vehicle**: 

## Return value
Returns the vehicle plate type, refer to `eVehiclePlateType`
