---
ns: CAM
---
## CREATE_CAM_WITH_PARAMS

```c
// 0xB51194800B257161 0x23B02F15
Cam CREATE_CAM_WITH_PARAMS(char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL active, int rotationOrder);
```

Create a camera with the specified cam name/type, You can use `SET_CAM_` natives to manipulate the camera.

Camera names found in the b617d scripts:

```
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"DEFAULT_SPLINE_CAMERA" 
```

## Parameters
* **camName**: Is the type of the camera, is always setted to `DEFAULT_SCRIPTED_CAMERA` in Rockstar scripts and in Fivem Forum Posts
* **posX**: The x position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **posY**: The y position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **posZ**: The z position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **rotX**: The x rotation of the camera
* **rotY**: The y rotation of the camera
* **rotZ**: The z rotation of the camera
* **fov**: The Field Of View of the camera, is the observable world that is seen
* **active**:
* **rotationOrder**:

## Return value
A camera handle.


## Examples
```lua
local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 561.3, 301.3, 63.0, 0.0, 0.0, 0.0, 90.0)
```

```js
const cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 561.3, 301.3, 63.0, 0.0, 0.0, 0.0, 90.0);
```

```cs
int cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", 561.3f, 301.3f, 63.0f, 0.0f, 0.0f, 0.0f, 90.0f);
```
