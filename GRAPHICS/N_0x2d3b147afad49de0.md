---
ns: GRAPHICS
---
## _0x2D3B147AFAD49DE0

```c
// 0x2D3B147AFAD49DE0
void _0x2D3B147AFAD49DE0(char* textureDict, char* textureName, float x, float y, float width, float height, float p6, int red, int green, int blue, int alpha, int p11);
```

```
Used in arcade games and Beam hack minigame in Doomsday Heist. For example, [Penetrator Arcade Game](https://streamable.com/8igrzw)

NativeDB Introduced: v1290
```

## Parameters
* **textureDict**: inside script_txds.rpf, browse it with OpenIV
* **textureName**: textureName
* **x**: x position must be between 0.0 and 1.0 (1.0 being the most right side of the screen)
* **y**: y position must be between 0.0 and 1.0 (1.0 being the most bottom side of the screen)
* **width**: width 0.0 - 1.0 is the reasonable amount generally
* **height**: height 0.0 - 1.0 is the reasonable amount generally
* **p6**: almost always 0.0
* **red**: red color
* **green**: green color
* **blue**: blue color
* **alpha**: alpha
* **p11**:

## Examples

```lua
-- drawing the game area for penetrator arcade game
Citizen.CreateThread(function()
    RequestStreamedTextureDict("MPArcadeDegenatron", false)
    while not HasStreamedTextureDictLoaded("MPArcadeDegenatron") do Citizen.Wait(1) end
    while true do
        N_0x2d3b147afad49de0("MPArcadeDegenatron", "penetrator_scene_frame", 0.5, 0.5, 0.4, 0.6, 0.0, 255, 0, 0, 255, 0)
        Citizen.Wait(1)
    end
end)
```
