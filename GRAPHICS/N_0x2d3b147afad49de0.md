---
ns: GRAPHICS
---
## _0x2D3B147AFAD49DE0

```c
// 0x2D3B147AFAD49DE0
void _0x2D3B147AFAD49DE0(char* textureDict, char* textureName, float x, float y, float width, float height, float p6, int red, int green, int blue, int alpha, int p11);
```

```
NativeDB Introduced: v1290
```

## Parameters
* **textureDict**: inside script_txds.rpf, browse it with OpenIV
* **textureName**: textureName
* **x**: a value between 0.0 and 1.0 (1.0 being the most right side of the screen)
* **y**: a value between 0.0 and 1.0 (1.0 being the most bottom side of the screen)
* **width**: 0.0 - 1.0 is the reasonable amount generally
* **height**: 0.0 - 1.0 is the reasonable amount generally
* **p6**: float
* **red**: red color
* **green**: green color
* **blue**: blue color
* **alpha**: alpha
* **p11**:

## Examples

```lua
-- _0x2D3B147AFAD49DE0("MPBeamHack", "Beam_Glow_Tapered", func_11081(Var11), Var11.f_1, (0.064f / fLocal_564), fVar12, (fVar13 + 90f), iVar0, iVar1, iVar2, iVar7, 0)

N_0x2d3b147afad49de0("MPInvPersMessages", "facade", MathStuff(0.5), 0.0, 0.0, 1.0, 0.0, arg1, arg2, arg3, arg4, 0)

function MathStuff(number)
  number = (((number * 1920) - ((1920 - 1080) / 2)) / 1080)
  number = (0.5 - ((0.5 - number) / 0))
  return number
end
```
