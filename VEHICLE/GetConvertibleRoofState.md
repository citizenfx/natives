---
ns: VEHICLE
---
## GET_CONVERTIBLE_ROOF_STATE

```c
// 0xF8C397922FC03F41 0x1B09714D
int GET_CONVERTIBLE_ROOF_STATE(Vehicle vehicle);
```
Returns the convertible state of the specified vehicle.

Got a "6" return value but not sure about what the value means
6 -> unknown (Stopped but not fully open ?)

```
enum RoofState
{
     ROOFSTATE_UP = 0,
     ROOFSTATE_LOWERING = 1,
     ROOFSTATE_DOWN = 2,
     ROOFSTATE_RAISING = 3
};
```

## Parameters
* **vehicle**: Vehicle handle

## Return value
- 0 when closed/up
- 1 when closing
- 2 when open/down
- 3 when opening
- 0 when vehicle is not a convertible or when vehicle is null/not provided

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId())
print(GetVConvertibleRoofState(vehicle))
```
