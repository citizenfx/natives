---
ns: CAM
aliases: ["0x3044240D2E0FA842"]
---
## IS_INTERPOLATING_FROM_SCRIPT_CAMS

```c
// 0x3044240D2E0FA842 0xC0B00C20
BOOL IS_INTERPOLATING_FROM_SCRIPT_CAMS();
```

Determines whether the game camera is currently interpolating away from a script-controlled camera back to the default gameplay camera.

```
NativeDB Introduced: v323
```

## Return value
Returns `true` if the game camera is in the process of interpolating from a script-controlled camera to the gameplay camera, otherwise `false`.