---
ns: HUD
aliases: [ "0xF83D0FEBE75E62C9" ]
---
## SETUP_FAKE_CONE_DATA

```c
// 0xF83D0FEBE75E62C9
void SETUP_FAKE_CONE_DATA(cs_type(Any) Blip blip, cs_type(Any) float visualFieldMinAzimuthAngle, cs_type(Any) float visualFieldMaxAzimuthAngle, cs_type(Any) float centreOfGazeMaxAngle, cs_type(Any) float peripheralRange, cs_type(Any) float focusRange, cs_type(Any) float heading, cs_type(Any) bool continuousUpdate);
```

```
NativeDB Added Parameter 9: int hudColour
NativeDB Introduced: v1290
```

Sets the 'data' for a cone for a blip. Scripts mostly use this for security cameras in various heists, such as Cayo Perico, Casino, etc.

See [here](https://docs.fivem.net/docs/game-references/hud-colors/) for the hud colours for the cone

Name in scripts: `SETUP_FAKE_CONE_DATA()`

For people who don't know how to convert degrees to radians and the other way around:

```
degrees = radians * 180 / pi
radians = degrees * pi / 180
```

## Parameters
* **blip**: A blip from an entity. The entity can not be a ped. The width and length will not change if it is a ped.
* **visualFieldMinAzimuthAngle**: Minimum azimuth angle. Scripts mostly use -1.0
* **visualFieldMaxAzimuthAngle**: Maximum azimuth angle. Scripts mostly use 1.0
* **centreOfGazeMaxAngle**: Width of the cone (0.0 to ~3.0)
* **peripheralRange**:Peripheral range. Scripts mostly use 1.0.
* **focusRange**: Length of the cone. (8.2 is 'normal' sized)
* **heading**: This heading is in radians, this can be calculated with (heading + 180.00) * (pi/180)
* **continuousUpdate**: scripts mostly use true.

## Examples

```lua
local ped = PlayerPedId()
local blip = AddBlipForEntity(ped)

SetupFakeConeData(blip, -1.0, 1.0, 0.36, 1.0, 8.2, (0.5 * math.pi), 0, 11)
SetBlipShowCone(blip, true, 11)
```
