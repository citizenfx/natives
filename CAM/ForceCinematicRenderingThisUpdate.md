---
ns: CAM
aliases: ["0xA41BCD7213805AAC"]
---
## FORCE_CINEMATIC_RENDERING_THIS_UPDATE

```c
// 0xA41BCD7213805AAC 0xFBB85E02
void FORCE_CINEMATIC_RENDERING_THIS_UPDATE(BOOL enable);
```

Forces the camera to be in cinematic mode while the player is in a car. This has to be called every frame, e.g. in a `Wait(0)` loop.

## Parameters
* **enable**: Whether it should force the cinematic rendering or not.
