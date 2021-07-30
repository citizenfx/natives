---
ns: GRAPHICS
---
## CREATE_TRACKED_POINT

```c
// 0xE2C9439ED45DEA60 0x3129C31A
int CREATE_TRACKED_POINT();
```

Creates a tracked point: useful for checking the visibility of a 3D point on screen.

Tracked points must be manually managed and will not be destroyed on resource stop (they are not an instance of CScriptResource). See [`DESTROY_TRACKED_POINT`](#_0xB25DC90BAD56CA42) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/).

Only 64 points may be tracked at a given time.

## Return value
