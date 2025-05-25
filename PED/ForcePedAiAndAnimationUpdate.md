---
ns: PED
aliases: ["0x2208438012482A1A"]
---
## FORCE_PED_AI_AND_ANIMATION_UPDATE

```c
// 0x2208438012482A1A 0x187B9070
void FORCE_PED_AI_AND_ANIMATION_UPDATE(Ped ped, BOOL forceAiPreCameraUpdate, BOOL forceZeroTimestep);
```

Forces an instant ped AI and Animation update. Use this if your transitions between animations (especially secondary upper body animations) are janky or not smooth.
Do note this is an expensive function.

## Parameters
* **ped**: 
* **forceAiPreCameraUpdate**: 
* **forceZeroTimestep**: 

