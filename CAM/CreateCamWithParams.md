---
ns: CAM
---
## CREATE_CAM_WITH_PARAMS

```c
// 0xB51194800B257161 0x23B02F15
Cam CREATE_CAM_WITH_PARAMS(char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL active, int rotationOrder);
```

Create a camera with the specified cam name/type, You can use `SET_CAM_` natives to manipulate the camera.

Take a look at [CREATE_CAM](#_0xC3981DCE61D9E13F) if you would like to see the available camera names.

## Parameters
* **camName**: A string representing the camera type, the game will convert the string into a joaat hash upon native execution.
* **posX**: The x position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **posY**: The y position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **posZ**: The z position of the camera (you can also send a vector3 instead of the bulk coordinates)
* **rotX**: The x rotation of the camera
* **rotY**: The y rotation of the camera
* **rotZ**: The z rotation of the camera
* **fov**: The Field Of View of the camera, is the observable world that is seen
* **active**: Set to true if you wish to make this new camera the active camera.
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)

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
