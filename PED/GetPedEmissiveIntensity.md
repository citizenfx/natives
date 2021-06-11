---
ns: PED
aliases: ["0x1461B28A06717D68","_GET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY"]
---
## _GET_PED_EMISSIVE_INTENSITY

```c
// 0x1461B28A06717D68
float _GET_PED_EMISSIVE_INTENSITY(Ped ped);
```

Use [`SetPedIlluminatedClothingGlowIntensity`](#_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.


## Parameters
* **ped**: The ped to get the glow intensity from.

## Return value
A float between 0.0 and 1.0 representing the current illuminated clothing glow intensity.
