---
ns: CAM
aliases: ["0x661B5C8654ADD825"]
---
## SET_CAM_CONTROLS_MINI_MAP_HEADING

```c
// 0x661B5C8654ADD825 0xE1A0B2F1
void SET_CAM_CONTROLS_MINI_MAP_HEADING(Cam cam, BOOL toggle);
```

Makes the minimap follow a scripted camera's rotation instead of the gameplay cam.

## Parameters
* **cam**: Cam handle returned by [CREATE_CAM](#_0xC3981DCE61D9E13F)
* **toggle**: Whether or not this camera should control the minimap heading.

