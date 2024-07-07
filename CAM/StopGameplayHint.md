---
ns: CAM
---
## STOP_GAMEPLAY_HINT

```c
// 0xF46C581C61718916 0x1BC28B7B
void STOP_GAMEPLAY_HINT(BOOL bStopImmediately);
```

Terminates the current gameplay hint camera, with an option for immediate cessation or a gradual fade out.

```
NativeDB Introduced: v323
```

## Parameters
* **bStopImmediately**: Specifies whether the gameplay hint camera should stop instantly `true` or gradually transition out `false`.