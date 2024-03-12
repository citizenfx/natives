---
ns: AUDIO
aliases: ["0x0BE4BE946463F917", "_IS_VEHICLE_RADIO_ENABLED"]
---
## IS_VEHICLE_RADIO_ON

```c
// 0x0BE4BE946463F917
BOOL IS_VEHICLE_RADIO_ON(Vehicle vehicle);
```

## Parameters
* **vehicle**: The vehicle to check

## Return value
Returns true if the given vehicle's radio on

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the current vehicle
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle's radio is enabled
local radioEnabled = IsVehicleRadioOn(vehicle)

-- Print the result
print(radioEnabled)
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the current vehicle
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle's radio is enabled
const radioEnabled = IsVehicleRadioOn(vehicle);

// Print the result
console.log(radioEnabled);
```


```csharp
using CitizenFX.Core;

// Retrieve the current vehicle (with the C# wrapper)
Vehicle currentVehicle = Game.PlayerPed.CurrentVehicle;

// Check if the vehicle's radio is enabled
bool radioEnabled = IsVehicleRadioOn(currentVehicle);

// Print the result
Debug.WriteLine($"{radioEnabled}");
```
