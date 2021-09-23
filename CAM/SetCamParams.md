---
ns: CAM
---
## SET_CAM_PARAMS

```c
// 0xBFD8727AEA3CCEBA 0x2167CEBF
void SET_CAM_PARAMS(Cam cam, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fieldOfView, int transitionSpeed, int p9, int p10, int rotationOrder);
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
* **p9**: 
* **p10**: 
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
