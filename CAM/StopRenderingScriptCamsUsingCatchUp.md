---
ns: CAM
aliases: ["0xC819F3CBB62BF692","_RENDER_FIRST_PERSON_CAM"]
---
## STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP

```c
// 0xC819F3CBB62BF692 0xD3C08183
void STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP(BOOL bShouldApplyAcrossAllThreads, float distanceToBlend, int blendType);
```

Instructs the game engine to stop rendering scripted cameras and transition back to the gameplay camera, optionally applying custom blending and rendering options.

```c
enum eRenderingOptionFlags {
    RO_NO_OPTIONS = 0,
    RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER = 1
};
```

```c
enum eCamSplineSmoothingFlags {
	// No smoothing just moves at a constant rate
	CAM_SPLINE_NO_SMOOTH = 0,
	// Decelerates when approaching a node
	CAM_SPLINE_SLOW_IN_SMOOTH = 1, 
	// Accelerates slowly when leaving a node
	CAM_SPLINE_SLOW_OUT_SMOOTH = 2,    
	// Decelerates when approaching a node and accelerates slowly when leaving a node
	CAM_SPLINE_SLOW_IN_OUT_SMOOTH = 3,
	CAM_SPLINE_VERY_SLOW_IN = 4,
	CAM_SPLINE_VERY_SLOW_OUT = 5,
	CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT = 6,
	CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT = 7,
	CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT = 8,
	CAM_SPLINE_EASE_IN = 9,
	CAM_SPLINE_EASE_OUT = 10,
	CAM_SPLINE_QUADRATIC_EASE_IN = 11,
	CAM_SPLINE_QUADRATIC_EASE_OUT = 12,
	CAM_SPLINE_QUADRATIC_EASE_IN_OUT = 13,
	CAM_SPLINE_CUBIC_EASE_IN = 14,
	CAM_SPLINE_CUBIC_EASE_OUT = 15,
	CAM_SPLINE_CUBIC_EASE_IN_OUT = 16,
	CAM_SPLINE_QUARTIC_EASE_IN = 17,
	CAM_SPLINE_QUARTIC_EASE_OUT = 18,
	CAM_SPLINE_QUARTIC_EASE_IN_OUT = 19,
	CAM_SPLINE_QUINTIC_EASE_IN = 20,
	CAM_SPLINE_QUINTIC_EASE_OUT = 21,
	CAM_SPLINE_QUINTIC_EASE_IN_OUT = 22,
	CAM_SPLINE_CIRCULAR_EASE_IN = 23,
	CAM_SPLINE_CIRCULAR_EASE_OUT = 24,
	CAM_SPLINE_CIRCULAR_EASE_IN_OUT = 25 
};
```

```
NativeDB Added Parameter 4: int renderingOptions : An integer bitmask of eRenderingOptionFlags to apply specific rendering behaviors during the transition. RO_NO_OPTIONS signifies no special options are applied.
```

```
NativeDB Introduced: v323
```

## Parameters
* **bShouldApplyAcrossAllThreads**: If `true`, ensures that the rendering stop request is enforced regardless of other script threads that might still expect rendering to be active. Use with caution to avoid conflicts.
* **distanceToBlend**: Specifies the distance over which the camera should blend from the scripted camera back to the gameplay camera. A value of `0.0` uses the game's default blending distance.
* **blendType**: An integer representing `eCamSplineSmoothingFlags` to determine the smoothness of the camera transition. Common values include `CAM_SPLINE_SLOW_IN_OUT_SMOOTH` among others, defining the easing of the blend.
