---
ns: HUD
---
## _0xF83D0FEBE75E62C9

```c
// 0xF83D0FEBE75E62C9
void _0xF83D0FEBE75E62C9(cs_type(Any) Blip blip, Any p1, Any p2, cs_type(Any) float width, Any p4, cs_type(Any) float length, cs_type(Any) float heading, Any p7);
```

```
NativeDB Added Parameter 9: int hudColour
NativeDB Introduced: v1290
```

Sets the 'data' for a cone for a blip

See [here](https://docs.fivem.net/docs/game-references/hud-colors/) for the hud colours for the cone

Name in scripts: `SETUP_FAKE_CONE_DATA()`

For people who don't know how to convert degrees to radians and the other way around:

```
degrees = radians * 180 / pi
radians = degrees * pi / 180
```

## Parameters
* **blip**: A blip from an entity. The entity can not be a ped. The width and length will not change if it is a ped.
* **p1**: -1.0 in decompiled scripts (unk)
* **p2**: 1.0 in decompiled scripts (unk)
* **width**: Width of the cone (0.0 to ~3.0)
* **p4**: 1.0 in decompiled scripts (unk)
* **length**: Length of the cone. (8.2 is 'normal' sized)
* **heading**: This heading is in radians, this can be calculated with (heading + 180.00) * (pi/180)
* **p7**: 1 in decompiled scripts (unk)

## Examples

```lua
local ped = PlayerPedId()
local blip = AddBlipForEntity(ped)

Citizen.InvokeNative(0xF83D0FEBE75E62C9, blip, -1.0, 1.0, 0.36, 1.0, 8.2, (0.5 * math.pi), 0, 11)
SetBlipShowCone(blip, true, 11)
```
