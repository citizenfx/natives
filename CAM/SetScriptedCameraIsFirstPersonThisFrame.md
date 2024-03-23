---
ns: CAM
aliases: ["0x469F2ECDEC046337"]
---
## SET_SCRIPTED_CAMERA_IS_FIRST_PERSON_THIS_FRAME

```c
// 0x469F2ECDEC046337
void SET_SCRIPTED_CAMERA_IS_FIRST_PERSON_THIS_FRAME(BOOL isFirstPersonThisFrame);
```

Designates the current scripted camera as operating in first-person mode for the duration of this frame.

```
NativeDB Introduced: v323
```

## Parameters
* **isFirstPersonThisFrame**: A boolean flag indicating whether scripted cameras should be considered as first-person cameras for the duration of the current frame `true`, or not `false`.