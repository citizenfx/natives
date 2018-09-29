---
ns: GRAPHICS
---
## DRAW_MARKER

```c
// 0x28477EC23D892089 0x48D84A02
void DRAW_MARKER(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19, BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts);
```

```
enum MarkerTypes  
{  
	MarkerTypeUpsideDownCone = 0,  
	MarkerTypeVerticalCylinder = 1,  
	MarkerTypeThickChevronUp = 2,  
	MarkerTypeThinChevronUp = 3,  
	MarkerTypeCheckeredFlagRect = 4,  
	MarkerTypeCheckeredFlagCircle = 5,  
	MarkerTypeVerticleCircle = 6,  
	MarkerTypePlaneModel = 7,  
	MarkerTypeLostMCDark = 8,  
	MarkerTypeLostMCLight = 9,  
	MarkerTypeNumber0 = 10,  
	MarkerTypeNumber1 = 11,  
	MarkerTypeNumber2 = 12,  
	MarkerTypeNumber3 = 13,  
	MarkerTypeNumber4 = 14,  
	MarkerTypeNumber5 = 15,  
	MarkerTypeNumber6 = 16,  
	MarkerTypeNumber7 = 17,  
	MarkerTypeNumber8 = 18,  
	MarkerTypeNumber9 = 19,  
	MarkerTypeChevronUpx1 = 20,  
	MarkerTypeChevronUpx2 = 21,  
	MarkerTypeChevronUpx3 = 22,  
	MarkerTypeHorizontalCircleFat = 23,  
	MarkerTypeReplayIcon = 24,  
	MarkerTypeHorizontalCircleSkinny = 25,  
	MarkerTypeHorizontalCircleSkinny_Arrow = 26,  
	MarkerTypeHorizontalSplitArrowCircle = 27,  
	MarkerTypeDebugSphere = 28,  
	MarkerTypeDallorSign = 29,  
	MarkerTypeHorizontalBars = 30,  
	MarkerTypeWolfHead = 31  
};  
dirX/Y/Z represent a heading on each axis in which the marker should face, alternatively you can rotate each axis independently with rotX/Y/Z (and set dirX/Y/Z all to 0).  
faceCamera - Rotates only the y-axis (the heading) towards the camera  
p19 - no effect, default value in script is 2  
rotate - Rotates only on the y-axis (the heading)  
textureDict - Name of texture dictionary to load texture from (e.g. "GolfPutting")  
textureName - Name of texture inside dictionary to load (e.g. "PuttingMarker")  
drawOnEnts - Draws the marker onto any entities that intersect it  
basically what he said, except textureDict and textureName are totally not char*, or if so, then they are always set to 0/NULL/nullptr in every script I checked, eg:  
bj.c: graphics::draw_marker(6, vParam0, 0f, 0f, 1f, 0f, 0f, 0f, 4f, 4f, 4f, 240, 200, 80, iVar1, 0, 0, 2, 0, 0, 0, false);  
his is what I used to draw an amber downward pointing chevron "V", has to be redrawn every frame.  The 180 is for 180 degrees rotation around the Y axis, the 50 is alpha, assuming max is 100, but it will accept 255.  
GRAPHICS::DRAW_MARKER(2, v.x, v.y, v.z + 2, 0, 0, 0, 0, 180, 0, 2, 2, 2, 255, 128, 0, 50, 0, 1, 1, 0, 0, 0, 0);  
```

## Parameters
* **type**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **dirX**: 
* **dirY**: 
* **dirZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **scaleX**: 
* **scaleY**: 
* **scaleZ**: 
* **red**: 
* **green**: 
* **blue**: 
* **alpha**: 
* **bobUpAndDown**: 
* **faceCamera**: 
* **p19**: 
* **rotate**: 
* **textureDict**: 
* **textureName**: 
* **drawOnEnts**: 

