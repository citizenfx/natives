---
ns: VEHICLE
aliases: ["0x0A436B8643716D14"]
---
## CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST

```c
// 0x0A436B8643716D14 0x6C73E45A
void CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST();
```

Removes the cargen area of interest and resumes normal cargen spawning.

You can set the area of interest with [`SET_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#_0x9A75585FB2E54FAD)

## Examples
```lua
-- This example clears the area of interest (cargen) and resumes normal spawning
ClearVehicleGeneratorAreaOfInterest()
```

```js
// This example clears the area of interest (cargen) and resumes normal spawning
ClearVehicleGeneratorAreaOfInterest();
```

```cs
// This example clears the area of interest (cargen) and resumes normal spawning
using static CitizenFX.Core.Native.API;

ClearVehicleGeneratorAreaOfInterest();
```