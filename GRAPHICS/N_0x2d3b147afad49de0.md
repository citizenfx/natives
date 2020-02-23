---
ns: GRAPHICS
---
## _0x2D3B147AFAD49DE0

```c
// 0x2D3B147AFAD49DE0
void _0x2D3B147AFAD49DE0(char*  textureDict, char* textureName, float p2, float p3, float p4, float p5, float p6, float p7, int red, int green, int blue, int alpha, BOOL p12);
```

```
Used in arcade games and Beam hack minigame in Doomsday Heist. I will most certainly dive into this to try replicate arcade games.
It has 12 paramaters not 11.
I added some parameters but not sure.
Also here an example:
_0x2D3B147AFAD49DE0("MPBeamHack", "Beam_Glow_Tapered", func_11081(Var11), Var11.f_1, (0.064f / fLocal_564), fVar12, (fVar13 + 90f), iVar0, iVar1, iVar2, iVar7, 0)

And with some clarity:

_0x2D3B147AFAD49DE0("MPInvPersMessages", "facade", MathStuff(0.5), 0.0, 0.0, 1.0, 0.0, arg1, arg2, arg3, arg4, 0)

function MathStuff(number)
  number = (((number * 1920) - ((1920 - 1080) / 2)) / 1080)
  number = (0.5 - ((0.5 - number) / 0))
  return number
end

arg1, arg2, arg3 and arg4 are certainly rgb and alpha

NativeD B Introduced: v1290
```

## Parameters
* **textureDict**: inside script_txds.rpf, browse it with OpenIV
* **textureName**: textureName
* **p2**: float seems to be always returning 0.0 but not quite sure
* **p3**: mostly -1 float
* **p4**: something related to aspect ratio and looks like integer but can be float too ?
* **p5**: float
* **p6**: float
* **p7**: float
* **p8**: red color
* **p9**: green color
* **p10**: blue color
* **p11**: alpha
* **p12**: 0 every time
