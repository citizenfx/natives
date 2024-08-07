---
ns: VEHICLE
---
## GET_CONVERTIBLE_ROOF_STATE

```c
// 0xF8C397922FC03F41 0x1B09714D
int GET_CONVERTIBLE_ROOF_STATE(Vehicle vehicle);
```
Returns the convertible state of the specified vehicle.



```c
enum RoofState
{
     ROOFSTATE_UP = 0,
     ROOFSTATE_LOWERING = 1,
     ROOFSTATE_DOWN = 2,
     ROOFSTATE_RAISING = 3
};
```

## Parameters
* **vehicle**: Vehicle to get the state of

## Return value
- 0 when closed/up, the vehicle is not a convertible or the vehicle is null/not provided
- 1 when closing
- 2 when open/down
- 3 when opening
- 6 unknown/unverified -- possibly stopped but not full open

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId())
print(GetConvertibleRoofState(vehicle))
```
