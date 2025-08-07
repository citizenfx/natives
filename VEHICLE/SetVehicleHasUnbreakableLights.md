---
ns: VEHICLE
aliases: ["0x1AA8A837D2169D94","_SET_VEHICLE_LIGHTS_CAN_BE_VISIBLY_DAMAGED"]
---
## SET_VEHICLE_HAS_UNBREAKABLE_LIGHTS

```c
// 0x1AA8A837D2169D94 0x009AB49E
void SET_VEHICLE_HAS_UNBREAKABLE_LIGHTS(Vehicle vehicle, BOOL toggle);
```

Sets whether the vehicle's lights can be broken.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The target vehicle.
* **toggle**: Set the lights' breakability `true` makes lights unbreakable, `false` allows them to break. 

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not vehicle then return end

-- Make the vehicle's lights unbreakable
SetVehicleHasUnbreakableLights(vehicle, true)
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!vehicle) return;

// Make the vehicle's lights unbreakable
SetVehicleHasUnbreakableLights(vehicle, true);
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (vehicle == 0) return;

// Make the vehicle's lights unbreakable
SetVehicleHasUnbreakableLights(vehicle, true);
```