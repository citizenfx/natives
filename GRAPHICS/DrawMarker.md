---
ns: GRAPHICS
---
## DRAW_MARKER

```c
// 0x28477EC23D892089 0x48D84A02
void DRAW_MARKER(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19, BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts);
```

Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.

Available marker types:

<!--
[...document.querySelectorAll('img')].filter(a => a.src.match(/100x100/)).map((a, i) => `| ${a.alt} | ${i} | ![${a.alt}](${a.src}) |`).join('\n')
https://forum.fivem.net/t/resource-available-markers/99384
-->

| NAME | ID | IMAGE |
| ---- | -- | ----- |
| MarkerTypeUpsideDownCone | 0 | ![MarkerTypeUpsideDownCone](https://d.fivem.dev/marker_00.png) |
| MarkerTypeVerticalCylinder | 1 | ![MarkerTypeVerticalCylinder.1](https://d.fivem.dev/marker_01.png) |
| MarkerTypeThickChevronUp | 2 | ![MarkerTypeThickChevronUp](https://d.fivem.dev/marker_02.png) |
| MarkerTypeThinChevronUp | 3 | ![MarkerTypeThinChevronUp](https://d.fivem.dev/marker_03.png) |
| MarkerTypeCheckeredFlagRect | 4 | ![MarkerTypeCheckeredFlagRect](https://d.fivem.dev/marker_04.png) |
| MarkerTypeCheckeredFlagCircle | 5 | ![MarkerTypeCheckeredFlagCircle](https://d.fivem.dev/marker_05.png) |
| MarkerTypeVerticleCircle | 6 | ![MarkerTypeVerticleCircle](https://d.fivem.dev/marker_06.png) |
| MarkerTypePlaneModel | 7 | ![1](https://d.fivem.dev/marker_07.png) |
| MarkerTypeLostMCTransparent | 8 | ![MarkerTypeLostMCTransparent.1](https://d.fivem.dev/marker_08.png) |
| MarkerTypeLostMC | 9 | ![MarkerTypeLostMC.1](https://d.fivem.dev/marker_09.png) |
| MarkerTypeNumber0 | 10 | ![MarkerTypeNumber0](https://d.fivem.dev/marker_10.png) |
| MarkerTypeNumber1 | 11 | ![MarkerTypeNumber1](https://d.fivem.dev/marker_11.png) |
| MarkerTypeNumber2 | 12 | ![MarkerTypeNumber2](https://d.fivem.dev/marker_12.png) |
| MarkerTypeNumber3 | 13 | ![MarkerTypeNumber3](https://d.fivem.dev/marker_13.png) |
| MarkerTypeNumber4 | 14 | ![MarkerTypeNumber4](https://d.fivem.dev/marker_14.png) |
| MarkerTypeNumber5 | 15 | ![MarkerTypeNumber5](https://d.fivem.dev/marker_15.png) |
| MarkerTypeNumber6 | 16 | ![MarkerTypeNumber6](https://d.fivem.dev/marker_16.png) |
| MarkerTypeNumber7 | 17 | ![MarkerTypeNumber7](https://d.fivem.dev/marker_17.png) |
| MarkerTypeNumber8 | 18 | ![MarkerTypeNumber8](https://d.fivem.dev/marker_18.png) |
| MarkerTypeNumber9 | 19 | ![MarkerTypeNumber9](https://d.fivem.dev/marker_19.png) |
| MarkerTypeChevronUpx1 | 20 | ![MarkerTypeChevronUpx1](https://d.fivem.dev/marker_20.png) |
| MarkerTypeChevronUpx2 | 21 | ![MarkerTypeChevronUpx2](https://d.fivem.dev/marker_21.png) |
| MarkerTypeChevronUpx3 | 22 | ![MarkerTypeChevronUpx3](https://d.fivem.dev/marker_22.png) |
| MarkerTypeHorizontalCircleFat | 23 | ![MarkerTypeHorizontalCircleFat.1](https://d.fivem.dev/marker_23.png) |
| MarkerTypeReplayIcon | 24 | ![MarkerTypeReplayIcon](https://d.fivem.dev/marker_24.png) |
| MarkerTypeHorizontalCircleSkinny | 25 | ![MarkerTypeHorizontalCircleSkinny.1](https://d.fivem.dev/marker_25.png) |
| MarkerTypeHorizontalCircleSkinny_Arrow | 26 | ![MarkerTypeHorizontalCircleSkinny_Arrow.1](https://d.fivem.dev/marker_26.png) |
| MarkerTypeHorizontalSplitArrowCircle | 27 | ![MarkerTypeHorizontalSplitArrowCircle.1](https://d.fivem.dev/marker_27.png) |
| MarkerTypeDebugSphere | 28 | ![MarkerTypeDebugSphere](https://d.fivem.dev/marker_28.png) |
| MarkerTypeDollarSign | 29 | ![MarkerTypeDollarSign](https://d.fivem.dev/marker_29.png) |
| MarkerTypeHorizontalBars | 30 | ![MarkerTypeHorizontalBars](https://d.fivem.dev/marker_30.png) |
| MarkerTypeWolfHead | 31 | ![MarkerTypeWolfHead](https://d.fivem.dev/marker_31.png) |
| MarkerTypeQuestionMark | 32 | ![MarkerTypeQuestionMark](https://d.fivem.dev/marker_32.png) |
| MarkerTypePlaneSymbol | 33 | ![MarkerTypePlaneSymbol](https://d.fivem.dev/marker_33.png) |
| MarkerTypeHelicopterSymbol | 34 | ![MarkerTypeHelicopterSymbol](https://d.fivem.dev/marker_34.png) |
| MarkerTypeBoatSymbol | 35 | ![MarkerTypeBoatSymbol](https://d.fivem.dev/marker_35.png) |
| MarkerTypeCarSymbol | 36 | ![MarkerTypeCarSymbol](https://d.fivem.dev/marker_36.png) |
| MarkerTypeMotorcycleSymbol | 37 | ![MarkerTypeMotorcycleSymbol](https://d.fivem.dev/marker_37.png) |
| MarkerTypeBikeSymbol | 38 | ![MarkerTypeBikeSymbol](https://d.fivem.dev/marker_38.png) |
| MarkerTypeTruckSymbol | 39 | ![MarkerTypeTruckSymbol](https://d.fivem.dev/marker_39.png) |
| MarkerTypeParachuteSymbol | 40 | ![MarkerTypeParachuteSymbol](https://d.fivem.dev/marker_40.png) |
| ? | 41 | ![](https://d.fivem.dev/marker_41.png) |
| MarkerTypeSawbladeSymbol | 42 | ![](https://d.fivem.dev/marker_42.png) |
| ? | 43 | ![](https://d.fivem.dev/marker_43.png) |

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
* **p19**: Typically set to `2`. Does not seem to matter directly.
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
