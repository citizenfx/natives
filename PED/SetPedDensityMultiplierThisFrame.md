---
ns: PED
---
## SET_PED_DENSITY_MULTIPLIER_THIS_FRAME

```c
// 0x95E3D6257B166CF2 0x039C82BB
void SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier);
```

**Usage:** Call this native every frame
    
## Parameters
* **multiplier**: Adjust from 0.0 (minimum, indicating no pedestrians in the street) to 1.0 (maximum, representing a normal amount of pedestrians on the street).

## Examples
```lua
-- 0.0 means no peds, while 1.0 indicates the regular density of peds.
local pedsDensityFactor = 0.0 

Citizen.CreateThread(function()
   while true do
       SetPedDensityMultiplierThisFrame(pedsDensityFactor)
       Citizen.Wait(0)    
   end
end)
```

```js
// 0.0 means no peds, while 1.0 indicates the regular density of peds.
const pedsDensityFactor = 0.0;

setTick(() => {
    SetPedDensityMultiplierThisFrame(pedsDensityFactor);  
});
```

