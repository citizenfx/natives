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
| MarkerTypeUpsideDownCone | 0 | ![MarkerTypeUpsideDownCone](https://forum.fivem.net/uploads/default/optimized/3X/0/a/0ae17e1f2837bd1a577ca9018fe0132f82ec36e4_1_100x100.jpg) |
| MarkerTypeVerticalCylinder | 1 | ![MarkerTypeVerticalCylinder.1](https://forum.fivem.net/uploads/default/optimized/3X/b/c/bc62bab1a5d0eb868a879e475839d0d4ec465e7d_1_100x100.jpg) |
| MarkerTypeThickChevronUp | 2 | ![MarkerTypeThickChevronUp](https://forum.fivem.net/uploads/default/optimized/3X/6/f/6f7cf864131879bc00f438282c85556bb763cd28_1_100x100.jpg) |
| MarkerTypeThinChevronUp | 3 | ![MarkerTypeThinChevronUp](https://forum.fivem.net/uploads/default/optimized/3X/f/1/f17668a4e0cf12d8c0204e32f04f6764e7ed8f02_1_100x100.jpg) |
| MarkerTypeCheckeredFlagRect | 4 | ![MarkerTypeCheckeredFlagRect](https://forum.fivem.net/uploads/default/optimized/3X/2/9/296116b0ced6d5aa3fd7d0132eef0f53f76d4e8b_1_100x100.jpg) |
| MarkerTypeCheckeredFlagCircle | 5 | ![MarkerTypeCheckeredFlagCircle](https://forum.fivem.net/uploads/default/optimized/3X/e/7/e7cbf66bab9bdfaaa61e2aa2f80f384c6290c529_1_100x100.jpg) |
| MarkerTypeVerticleCircle | 6 | ![MarkerTypeVerticleCircle](https://forum.fivem.net/uploads/default/optimized/3X/b/a/ba7c90fe2eee6ab44ca186573ad81e6d0f562d0e_1_100x100.jpg) |
| MarkerTypePlaneModel | 7 | ![1](https://forum.fivem.net/uploads/default/optimized/3X/4/f/4fef49363420a199a3ebecbef30889e8d8fd7874_1_100x100.jpg) |
| MarkerTypeLostMCTransparent | 8 | ![MarkerTypeLostMCTransparent.1](https://forum.fivem.net/uploads/default/optimized/3X/6/a/6a43b154d1eb16d8d698b5d260e769c9aed98b13_1_100x100.jpg) |
| MarkerTypeLostMC | 9 | ![MarkerTypeLostMC.1](https://forum.fivem.net/uploads/default/optimized/3X/0/4/04e6b820da3613f9858d500636298e49f3c31a6f_1_100x100.png) |
| MarkerTypeNumber0 | 10 | ![MarkerTypeNumber0](https://forum.fivem.net/uploads/default/optimized/3X/4/8/48fd045347e609c6162ceeee64565ee72428fb83_1_100x100.jpg) |
| MarkerTypeNumber1 | 11 | ![MarkerTypeNumber1](https://forum.fivem.net/uploads/default/optimized/3X/6/5/657e143a882279742fc4845fa149e7f8e838377c_1_100x100.png) |
| MarkerTypeNumber2 | 12 | ![MarkerTypeNumber2](https://forum.fivem.net/uploads/default/optimized/3X/7/7/77a4d8fd1c96100c3271de720e1539547e0c6298_1_100x100.png) |
| MarkerTypeNumber3 | 13 | ![MarkerTypeNumber3](https://forum.fivem.net/uploads/default/optimized/3X/f/f/ff401dea6ce5b952a5d11d9e9e3af05d821c4e51_1_100x100.png) |
| MarkerTypeNumber4 | 14 | ![MarkerTypeNumber4](https://forum.fivem.net/uploads/default/optimized/3X/6/f/6f91beba5fd936d447e95a2f074da06b40a13b25_1_100x100.jpg) |
| MarkerTypeNumber5 | 15 | ![MarkerTypeNumber5](https://forum.fivem.net/uploads/default/optimized/3X/a/9/a917f760acc874ed06e3d263760bf2df51e4f523_1_100x100.png) |
| MarkerTypeNumber6 | 16 | ![MarkerTypeNumber6](https://forum.fivem.net/uploads/default/optimized/3X/f/b/fb30dafdf15a936bdcabf2c91dc3c7daca542e85_1_100x100.png) |
| MarkerTypeNumber7 | 17 | ![MarkerTypeNumber7](https://forum.fivem.net/uploads/default/optimized/3X/f/1/f11a5ebe7dfadc8cf323f854b663ef5d6ac03c1f_1_100x100.png) |
| MarkerTypeNumber8 | 18 | ![MarkerTypeNumber8](https://forum.fivem.net/uploads/default/optimized/3X/b/b/bbb28db52b38fe387c025919ef37b41984e650fe_1_100x100.png) |
| MarkerTypeNumber9 | 19 | ![MarkerTypeNumber9](https://forum.fivem.net/uploads/default/optimized/3X/d/6/d6b305d4ca172a6af584b6fa4fc11d81610a2738_1_100x100.png) |
| MarkerTypeChevronUpx1 | 20 | ![MarkerTypeChevronUpx1](https://forum.fivem.net/uploads/default/optimized/3X/5/4/5427b813759135cd6af61d14d53a1911df1f7f31_1_100x100.png) |
| MarkerTypeChevronUpx2 | 21 | ![MarkerTypeChevronUpx2](https://forum.fivem.net/uploads/default/optimized/3X/6/2/6226b993cefe78324d22f598a111a29334f6a187_1_100x100.png) |
| MarkerTypeChevronUpx3 | 22 | ![MarkerTypeChevronUpx3](https://forum.fivem.net/uploads/default/optimized/3X/f/e/fe6c4283a8575d76d48bd1410ac06f7e263fafd3_1_100x100.png) |
| MarkerTypeHorizontalCircleFat | 23 | ![MarkerTypeHorizontalCircleFat.1](https://forum.fivem.net/uploads/default/optimized/3X/a/9/a97031a87bc500c65d99554498e8de0f8bae542c_1_100x100.png) |
| MarkerTypeReplayIcon | 24 | ![MarkerTypeReplayIcon](https://forum.fivem.net/uploads/default/optimized/3X/1/e/1ea8ed4f0fabcc480fcbe108d0d292a3db225ce0_1_100x100.jpg) |
| MarkerTypeHorizontalCircleSkinny | 25 | ![MarkerTypeHorizontalCircleSkinny.1](https://forum.fivem.net/uploads/default/optimized/3X/f/d/fd34b130bff06924f05bc633da9b1b0191e97076_1_100x100.png) |
| MarkerTypeHorizontalCircleSkinny_Arrow | 26 | ![MarkerTypeHorizontalCircleSkinny_Arrow.1](https://forum.fivem.net/uploads/default/optimized/3X/5/9/591bdfd2eb014ae282e5f110b44f3e3b6031620c_1_100x100.jpg) |
| MarkerTypeHorizontalSplitArrowCircle | 27 | ![MarkerTypeHorizontalSplitArrowCircle.1](https://forum.fivem.net/uploads/default/optimized/3X/9/d/9daf3419c8121acc5e8442441f33d8a116679435_1_100x100.png) |
| MarkerTypeDebugSphere | 28 | ![MarkerTypeDebugSphere](https://forum.fivem.net/uploads/default/optimized/3X/c/7/c7c017026e1d25e9baff8e56ec45579a051b0981_1_100x100.png) |
| MarkerTypeDollarSign | 29 | ![MarkerTypeDollarSign](https://forum.fivem.net/uploads/default/optimized/3X/e/8/e8d8d1533796468c9c4666681a6e4b92b1714df7_1_100x100.png) |
| MarkerTypeHorizontalBars | 30 | ![MarkerTypeHorizontalBars](https://forum.fivem.net/uploads/default/optimized/3X/e/7/e73cfb9524a39619f2e625264fa0efe13c35f89a_1_100x100.png) |
| MarkerTypeWolfHead | 31 | ![MarkerTypeWolfHead](https://forum.fivem.net/uploads/default/optimized/3X/4/8/4836a6eae88805004fed164bda142e1fa609c2ca_1_100x100.png) |
| MarkerTypeQuestionMark | 32 | ![MarkerTypeQuestionMark](https://forum.fivem.net/uploads/default/optimized/3X/9/f/9f3e999ff407ecc5741ec6a8afbda903e3450566_1_100x100.png) |
| MarkerTypePlaneSymbol | 33 | ![MarkerTypePlaneSymbol](https://forum.fivem.net/uploads/default/optimized/3X/2/e/2e1aca0a8c708ad9e167a7d316dc72f36e1987ab_1_100x100.png) |
| MarkerTypeHelicopterSymbol | 34 | ![MarkerTypeHelicopterSymbol](https://forum.fivem.net/uploads/default/optimized/3X/5/c/5cd486cfaea2932cb6eeb4063d63fbb3394a2d32_1_100x100.png) |
| MarkerTypeBoatSymbol | 35 | ![MarkerTypeBoatSymbol](https://forum.fivem.net/uploads/default/optimized/3X/7/7/779e00024a59baf26dc9378c1a401d54343cc69c_1_100x100.png) |
| MarkerTypeCarSymbol | 36 | ![MarkerTypeCarSymbol](https://forum.fivem.net/uploads/default/optimized/3X/4/2/42af5f67a6177c7bf2703d7cd6383125233be638_1_100x100.png) |
| MarkerTypeMotorcycleSymbol | 37 | ![MarkerTypeMotorcycleSymbol](https://forum.fivem.net/uploads/default/optimized/3X/8/b/8bb96eed6e31cab08c1d4295e1ca7950e1ecb2ea_1_100x100.png) |
| MarkerTypeBikeSymbol | 38 | ![MarkerTypeBikeSymbol](https://forum.fivem.net/uploads/default/optimized/3X/c/7/c7a16991693547e1f8775ab0b101c02f540cc069_1_100x100.png) |
| MarkerTypeTruckSymbol | 39 | ![MarkerTypeTruckSymbol](https://forum.fivem.net/uploads/default/optimized/3X/4/f/4f567acb4e072f202b8bf77fa06ac91685fa089a_1_100x100.jpg) |
| MarkerTypeParachuteSymbol | 40 | ![MarkerTypeParachuteSymbol](https://forum.fivem.net/uploads/default/optimized/3X/3/c/3cfc2ed459c48a9613fff7e05780ec9d8ebe5534_1_100x100.png) |
| MarkerTypeSawbladeSymbol | 41 | ![MarkerTypeSawbladeSymbol](https://forum.fivem.net/uploads/default/optimized/3X/7/0/70f62dd1578e16d59e11d6fa1450722242f8b9c7_1_100x100.png) |

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