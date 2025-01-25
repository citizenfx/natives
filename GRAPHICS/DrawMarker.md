---
ns: GRAPHICS
---
## DRAW_MARKER

```c
// 0x28477EC23D892089 0x48D84A02
void DRAW_MARKER(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int rotationOrder, BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts);
```

Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.

There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.

## Parameters
* **type**: The marker type to draw.
* **posX**: The X coordinate to draw the marker at.
* **posY**: The Y coordinate to draw the marker at.
* **posZ**: The Z coordinate to draw the marker at.
* **dirX**: The X component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
* **dirY**: The Y component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
* **dirZ**: The Z component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.
* **rotX**: The X rotation for the marker. Only used if the direction vector is 0.0.
* **rotY**: The Y rotation for the marker. Only used if the direction vector is 0.0.
* **rotZ**: The Z rotation for the marker. Only used if the direction vector is 0.0.
* **scaleX**: The scale for the marker on the X axis.
* **scaleY**: The scale for the marker on the Y axis.
* **scaleZ**: The scale for the marker on the Z axis.
* **red**: The red component of the marker color, on a scale from 0-255.
* **green**: The green component of the marker color, on a scale from 0-255.
* **blue**: The blue component of the marker color, on a scale from 0-255.
* **alpha**: The alpha component of the marker color, on a scale from 0-255.
* **bobUpAndDown**: Whether or not the marker should slowly animate up/down.
* **faceCamera**: Whether the marker should be a 'billboard', as in, should constantly face the camera.
* **rotationOrder**: The order yaw, pitch and roll is applied. Usually `2`.
* **rotate**: Rotations only apply to the heading.
* **textureDict**: A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'
* **textureName**: A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'
* **drawOnEnts**: Whether or not the marker should draw on intersecting entities.

## Examples
```lua
CreateThread(function()
	while true do
		-- draw every frame
		Wait(0)

		local pedCoords = GetEntityCoords(PlayerPedId())
		DrawMarker(2, pedCoords.x, pedCoords.y, pedCoords.z + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
	end
end)
```
