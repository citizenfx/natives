---
ns: MISC
---
## ADD_STUNT_JUMP

```c
// 0x1A992DA297A4630C 0xB630E5FF
int ADD_STUNT_JUMP(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4, float camX, float camY, float camZ, int reward, int set, bool camOptional);
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
* **reward**: Amount of points to give to the player, in scripts it's 150.
* **set**: Is the set to add the stunt jump to. (eg 0 = singleplayer stuntjumps, 1 = multiplayer stuntjumps) By default only set 0 stunt jumps are enabled. This value can only be in the range 0 to 31
* **camOptional**: Wether the cinematic camera of the stunt jump is optional or not.

## Return value
The ID of the stunt jump that was added.
