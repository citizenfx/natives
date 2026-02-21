---
ns: PATHFIND
---
## ADJUST_AMBIENT_PED_SPAWN_DENSITIES_THIS_FRAME
```c
// 0xAA76052DDA9BFC3E 0xD0F51299 0xBAC712AB83AFA8CC
void ADJUST_AMBIENT_PED_SPAWN_DENSITIES_THIS_FRAME(float x, float y, float z, float radius, float density, Any p5, Any p6);
```

Adjusts the ambient ped spawn density around a given area for the current frame. Must be called every frame to maintain the effect.

## Parameters
* **x**: X coordinate of the area center.
* **y**: Y coordinate of the area center.
* **z**: Z coordinate of the area center.
* **radius**: Radius of the affected area.
* **density**: Ped spawn density multiplier (0.0 = no peds, 1.0 = normal).
* **p5**: Unknown.
* **p6**: Unknown.
