---
ns: CAM
---
## SET_CAM_PARAMS

```c
// 0xBFD8727AEA3CCEBA 0x2167CEBF
void SET_CAM_PARAMS(Cam cam, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fieldOfView, int transitionSpeed, int graphTypePos, int graphTypeRot, int rotationOrder);
```


## Parameters
* **cam**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **fieldOfView**: 
* **transitionSpeed**: The speed of transition/interpolation to these new values
* **graphTypePos**: CAMERA_GRAPH_TYPE 
* **graphTypeRot**: CAMERA_GRAPH_TYPE 
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)

### Examples
```lua
-- This is recreating the above mentioned heli transition from finale_heist2a.c
  local cam = CreateCameraWithParams('DEFAULT_SCRIPTED_CAMERA', -1659.574, -707.8544, 29.23778, -7.422939, 0.059666, -117.3886, 43.0557, false, 2)
SetCamActive(cam, true)
RenderScriptCams(true, false, 3000, true, false, false)
SetCamParams(cam, -1660.919, -710.7487, 28.88381, -7.50235, 0.059666, -111.7328, 43.0557, 9100, 0, 0, 2);
```

```js
// This is recreating the above mentioned heli transition from finale_heist2a.c
let cam = CreateCameraWithParams('DEFAULT_SCRIPTED_CAMERA', -1659.574, -707.8544, 29.23778, -7.422939, 0.059666, -117.3886, 43.0557, false, 2)
SetCamActive(cam, true)
RenderScriptCams(true, false, 3000, true, false, false)
SetCamParams(cam, -1660.919, -710.7487, 28.88381, -7.50235, 0.059666, -111.7328, 43.0557, 9100, 0, 0, 2);
```

```
ENUM CAMERA_GRAPH_TYPE			// These are graph which apply as a modifier to the default speed OR time of some motion.
	GRAPH_TYPE_LINEAR = 0,		// simple linear motion
	GRAPH_TYPE_SIN_ACCEL_DECEL,	// accelerates at start, decelerates at end
	GRAPH_TYPE_ACCEL,			// Just Acceleration
	GRAPH_TYPE_DECEL,			// Just Deceleration
	GRAPH_TYPE_SLOW_IN,			
	GRAPH_TYPE_SLOW_OUT,
	GRAPH_TYPE_SLOW_IN_OUT,
	GRAPH_TYPE_VERY_SLOW_IN,
	GRAPH_TYPE_VERY_SLOW_OUT,
	GRAPH_TYPE_VERY_SLOW_IN_SLOW_OUT,
	GRAPH_TYPE_SLOW_IN_VERY_SLOW_OUT,
	GRAPH_TYPE_VERY_SLOW_IN_VERY_SLOW_OUT,
	GRAPH_TYPE_EASE_IN,
	GRAPH_TYPE_EASE_OUT,
	GRAPH_TYPE_QUADRATIC_EASE_IN,
	GRAPH_TYPE_QUADRATIC_EASE_OUT,
	GRAPH_TYPE_QUADRATIC_EASE_IN_OUT,
	GRAPH_TYPE_CUBIC_EASE_IN,
	GRAPH_TYPE_CUBIC_EASE_OUT,
	GRAPH_TYPE_CUBIC_EASE_IN_OUT,
	GRAPH_TYPE_QUARTIC_EASE_IN,
	GRAPH_TYPE_QUARTIC_EASE_OUT,
	GRAPH_TYPE_QUARTIC_EASE_IN_OUT,
	GRAPH_TYPE_QUINTIC_EASE_IN,
	GRAPH_TYPE_QUINTIC_EASE_OUT,
	GRAPH_TYPE_QUINTIC_EASE_IN_OUT,  
	GRAPH_TYPE_CIRCULAR_EASE_IN,
	GRAPH_TYPE_CIRCULAR_EASE_OUT,
	GRAPH_TYPE_CIRCULAR_EASE_IN_OUT,
	GRAPH_TYPE_MAX				// The maximum number of graph types, do not use.
ENDENUM
```
