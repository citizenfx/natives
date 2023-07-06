---
ns: CAM
---
## DOES_CAM_EXIST

```c
// 0xA7A932170592B50E 0x1EF89DC0
BOOL DOES_CAM_EXIST(Cam cam);
```

Looks up a camera handle in the current camera pool and returns `true` if the handle is found, otherwise it returns `false`.

## Parameters
* **cam**: The camera handle to look for.

## Return value
A boolean value representing whether the camera exists or not.
