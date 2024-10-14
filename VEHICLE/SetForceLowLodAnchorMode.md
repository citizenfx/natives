---
ns: VEHICLE
aliases: ["0xB28B1FE5BFADD7F5", "_SET_FORCED_BOAT_LOCATION_WHEN_ANCHORED"]
---
## SET_FORCE_LOW_LOD_ANCHOR_MODE

```c
// 0xB28B1FE5BFADD7F5 0xA739012A
void SET_FORCE_LOW_LOD_ANCHOR_MODE(Vehicle boat, BOOL toggle);
```

Sets whether a boat should remain in the non-physical, low LOD anchor mode even when a player is driving it.

**Note**: This native requires [SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER](#_0xE3EBAAE484798530) to be set to `true` to work properly.

```
NativeDB Introduced: v323
```

## Parameters
* **boat**: The target boat.
* **toggle**: Set the forced low LOD anchor mode. If `true`, the boat will remain in low LOD anchor mode even when a player is driving.