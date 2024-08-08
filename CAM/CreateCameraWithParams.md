---
ns: CAM
---
## CREATE_CAMERA_WITH_PARAMS

```c
// 0x6ABFA3E16460F22D 0x0688BE9A
Cam CREATE_CAMERA_WITH_PARAMS(Hash camHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL active, int rotationOrder);
```

Create a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.
Make sure to call [RENDER_SCRIPT_CAMS](#_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.

Take a look at [CREATE_CAM](#_0xC3981DCE61D9E13F) if you would like to see the available camera names.

```
NativeDB Introduced: v323
```

## Parameters
* **camHash**: The hash of the camera type, use [GET_HASH_KEY](#_0xD24D37CC275948CC) to get the camera hash from the name.
* **posX**: The x position of the camera.
* **posY**: The y position of the camera.
* **posZ**: The z position of the camera.
* **rotX**: The x rotation of the camera.
* **rotY**: The y rotation of the camera.
* **rotZ**: The z rotation of the camera.
* **fov**: The Field Of View of the camera, is the observable world that is seen.
* **active**: Set to true if you wish to make this new camera the active camera.
* **rotationOrder**: The order of rotation, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9).


## Return value
A camera handle.
