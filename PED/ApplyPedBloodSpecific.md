---
ns: PED
aliases: ["0xEF0D582CBF2D9B0F"]
---
## APPLY_PED_BLOOD_SPECIFIC

```c
// 0xEF0D582CBF2D9B0F 0xFC13CE80
void APPLY_PED_BLOOD_SPECIFIC(Ped ped, int component, float u, float v, float rotation, float scale, int forcedFrame, float preAge, cs_type(Any*) char* bloodName);
```

Applies blood damage to a ped with specific parameters for zone, UV offsets, rotation, scale, and initial aging.

```
NativeDB Introduced: v323
```

## Parameters
* **ped** The Ped to which blood damage is applied.
* **component** Specific component or body part.
* **u** UV texture coordinates for placing the decal in the specified zone.
* **v** UV texture coordinates for placing the decal in the specified zone.
* **rotation** Angle in degrees for the rotation of the blood decal.
* **scale** Scale factor for the damage, ranging from 0.0 to 1.0.
* **forcedFrame** Allows a specific frame of damage to be chosen (-1 for random selection).
* **preAge** Number of seconds to pre-age the damage for an "old wound" effect (0.0 for fresh wound).
* **bloodName** Name of the blood type, matching an entry in peddamage.xml.