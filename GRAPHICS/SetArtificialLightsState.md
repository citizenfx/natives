---
ns: GRAPHICS
aliases: ["_SET_BLACKOUT"]
---
## SET_ARTIFICIAL_LIGHTS_STATE

```c
// 0x1268615ACE24D504 0xAA2A0EAF
void SET_ARTIFICIAL_LIGHTS_STATE(BOOL state);
```

Does not affect weapons, particles, fire/explosions, flashlights or the sun.

When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.

Used in Humane Labs Heist for EMP.

## Parameters
* **state**: True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.

## Examples
```lua
-- Disable all lights in the map.
SetArtificialLightsState(true)

-- Enable all lights in the map.
SetArtificialLightsState(false)
```

```cs
// Disable all lights in the map.
SetArtificialLightsState(true);

// Enable all lights in the map.
SetArtificialLightsState(false);
```
