---
ns: MISC
---
## IS_POSITION_OCCUPIED

```c
// 0xADCDE75E1C60F32D 0x452E8D9E
BOOL IS_POSITION_OCCUPIED(float x, float y, float z, float range, BOOL p4, BOOL checkVehicles, BOOL checkPeds, BOOL p7, BOOL p8, Entity ignoreEntity, BOOL p10);
```

The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.

## Parameters
* **x**: X coordinate of the position to check.
* **y**: Y coordinate of the position to check.
* **z**: Z coordinate of the position to check.
* **range**: The range, seems to not be very accurate during testing.
* **p4**: Unknown, when set to true it seems to always return true no matter what I try.
* **checkVehicles**: Check for any vehicles in that area.
* **checkPeds**: Check for any peds in that area.
* **p7**: Unknown.
* **p8**: Unknown.
* **ignoreEntity**: This entity will be ignored if it's in the area. Set to 0 if you don't want to exclude any entities.
* **p10**: Unknown.

## Return value
Returns true if there is anything in that location matching the provided parameters.
