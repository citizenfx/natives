---
ns: TASK
---
## TASK_WARP_PED_DIRECTLY_INTO_COVER

```c
// 0x6E01E9E8D89F8276
void TASK_WARP_PED_DIRECTLY_INTO_COVER(Ped ped, int time, BOOL canPeekAndAim, BOOL forceInitialFacingDirection, BOOL forceFaceLeft, int coverIndex);
```

This task warps a ped directly into a cover position closest to the specified point. This can be used to quickly place peds in strategic positions during gameplay.

```
NativeDB Introduced: 2545
```

## Parameters
* **ped**: The ped to warp into cover.
* **time**: Duration in milliseconds the ped should take to enter the cover.
* **canPeekAndAim**: If `true`, allows the ped to peek and aim while in cover.
* **forceInitialFacingDirection**: If `true`, forces the ped to face the initial direction when entering cover.
* **forceFaceLeft**: If `true`, forces the ped to face left relative to the cover position.
* **coverIndex**: The index of the cover point to warp the ped to. If `null`, the game will choose the nearest cover point.