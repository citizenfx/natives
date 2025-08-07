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
enum eRoofState {
    RAISED = 0,
    LOWERING = 1,
    LOWERED = 2,
    RAISING = 3,
    CLOSING_BOOT = 4,
    ROOF_STUCK_RAISED = 5,
    ROOF_STUCK_LOWERED = 6
}
```

## Parameters
* **vehicle**: Vehicle to get the state of

## Return value
Returns the current roof state, refer to `eRoofState`

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId())
print(GetConvertibleRoofState(vehicle))
```
