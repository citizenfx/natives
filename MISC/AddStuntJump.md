---
ns: MISC
---
## ADD_STUNT_JUMP

```c
// 0x1A992DA297A4630C 0xB630E5FF
int ADD_STUNT_JUMP(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, float p13, float p14, Any p15, Any p16);
```

See description of [`ADD_STUNT_JUMP_ANGLED`](#_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.

## Parameters
* **x1**: Jump entry left far bottom corner coordinate X.
* **y1**: Jump entry left far bottom corner coordinate Y.
* **z1**: Jump entry left far bottom corner coordinate Z.
* **x2**: Jump entry right near top corner coordinate X.
* **y2**: Jump entry right near top corner coordinate Y.
* **z2**: Jump entry right near top corner coordinate Z.
* **x3**: Landing zone end coordinate X.
* **y3**: Landing zone end coordinate Y.
* **z3**: Landing zone end coordinate Z.
* **x4**: Landing zone start coordinate X.
* **y4**: Landing zone start coordinate Y.
* **z4**: Landing zone start coordinate Z.
* **camX**: Stuntcam (cinematic) coordinate x.
* **camY**: Stuntcam (cinematic) coordinate y.
* **camZ**: Stuntcam (cinematic) coordinate z.
* **unk1**: Unknown, always 150.
* **unk2**: Unknown, always 0.
* **unk3**: Unknown, always 0.

## Return value
The ID of the stunt jump that was added.