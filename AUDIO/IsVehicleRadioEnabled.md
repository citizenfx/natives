---
ns: AUDIO
aliases: ["0x0BE4BE946463F917"]
---
## _IS_VEHICLE_RADIO_ENABLED

```c
// 0x0BE4BE946463F917
BOOL _IS_VEHICLE_RADIO_ENABLED(Vehicle vehicle);
```

```
IS_VEHICLE_*
```

## Parameters
* **vehicle**: The vehicle to check

## Return value
Is the given vehicle's radio enabled

## Examples
```lua
local radioEnabled = IsVehicleRadioEnabled(GetVehiclePedIsIn(PlayerPedId(), false))
print(radioEnabled)
```
```cs
bool radioEnabled = API.IsVehicleRadioEnabled(API.GetVehiclePedIsIn(Game.PlayerPed.Handle, false));
Debug.WriteLine(radioEnabled.ToString());
```
