---
ns: VEHICLE
aliases: ["SET_HELI_TAIL_EXPLODE_THROW_DASHBOARD", "WAS_COUNTER_ACTIVATED","0x3EC8BF18AA453FE9"]
---
## SET_HELI_TAIL_BOOM_CAN_BREAK_OFF

```c
// 0x3EC8BF18AA453FE9 0x2916D69B
cs_type(BOOL) void SET_HELI_TAIL_BOOM_CAN_BREAK_OFF(Vehicle heli, BOOL toggle);
```

Enables or disables the ability for a helicopter's tail boom to break off.

```
NativeDB Introduced: v323
```

## Parameters
* **heli**: The helicopter for which the tail boom can break off.
* **toggle**: Determines whether the helicopter's tail boom can break off.

## Examples
```lua
local heli = GetVehiclePedIsIn(PlayerPedId(), false)
if heli == 0 or GetVehicleType(heli) ~= "heli" then return end

SetHeliTailBoomCanBreakOff(heli, true)
```

```js
const heli = GetVehiclePedIsIn(PlayerPedId(), false);
if (heli === 0 || GetVehicleType(heli) !== "heli") return;

SetHeliTailBoomCanBreakOff(heli, true);
```

```cs
using static CitizenFX.Core.Native.API;

int heli = GetVehiclePedIsIn(PlayerPedId(), false);
if (heli == 0 || GetVehicleType(heli) !== "heli") return;

SetHeliTailBoomCanBreakOff(heli, true);
```
