---
ns: AUDIO
aliases: ["0x0BE4BE946463F917", "_IS_VEHICLE_RADIO_ENABLED"]
---
## IS_​VEHICLE_​RADIO_​ON

```c
// 0x0BE4BE946463F917
BOOL IS_​VEHICLE_​RADIO_​ON(Vehicle vehicle);
```


## Parameters
* **vehicle**: The vehicle to check

## Return value
Is the given vehicle's radio enabled

## Examples
```lua
local radioEnabled = IsVehicleRadioOn(GetVehiclePedIsIn(PlayerPedId(), false))
print(radioEnabled)
```
```js
const radioEnabled = IsVehicleRadioOn(GetVehiclePedIsIn(PlayerPedId(), false));
console.log(radioEnabled);
```
```cs
bool radioEnabled = API.IsVehicleRadioOn(API.GetVehiclePedIsIn(Game.PlayerPed.Handle, false));
Debug.WriteLine(radioEnabled.ToString());
```
