---
ns: AUDIO
---
## OVERRIDE_VEH_HORN

```c
// 0x3CDC1E622CCE0356 0x2ACAB783
void OVERRIDE_VEH_HORN(Vehicle vehicle, BOOL override, int hornHash);
```

Overrides the vehicle's horn hash.


When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#_0x02165D55000219AC)).

List of possible hashes (found in decompiled scripts):

|        signed |     unsigned |      hex     |
|--------------:|-------------:|:------------:|
|  `1604822495` | `1604822495` | `0x5FA7A5DF` |
| `-1262465009` | `3032502287` | `0xB4C0500F` |
|  `-889553789` | `3405413507` | `0xCAFA7C83` |
| `-1557943086` | `2737024210` | `0xA323ACD2` |
| `-1318696617` | `2976270679` | `0xB1664957` |
|    `-7740003` | `4287227293` | `0xFF89E59D` |
| `-1815146967` | `2479820329` | `0x93CF0E29` |
|  `-339919356` | `3955047940` | `0xEBBD3E04` |

## Parameters
* **vehicle**: The vehicle you want to change the horn on.
* **override**: Must be set to true. If set to false, the default horn hash will be restored.
* **hornHash**: A horn hash.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

-- These are the most common horn hashes found in the decompiled scripts.
local horns = {
    1604822495,
    3032502287,
    3405413507,
    2737024210,
    2976270679,
    4287227293,
    2479820329,
    3955047940
}

local randomHornHash = horns[math.random(1, #horns)]

print(randomHornHash)

OverrideVehHorn(vehicle, true, randomHornHash)
```