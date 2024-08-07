---
ns: NETWORK
---
## NETWORK_CREATE_SYNCHRONISED_SCENE

```c
// 0x7CD6BC4C2BBDD526 0xB06FE3FE
int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int rotationOrder, BOOL holdLastFrame, BOOL looped, float phaseToStopScene, float phaseToStartScene, float animSpeed);
```

Creates a networked synchronized scene.
Be sure to actually start the scene with [`NETWORK_START_SYNCHRONISED_SCENE`](#_0x9A1B3FCDB36C8697) after you're done adding peds or entities to the scene.

## Parameters
* **x**: X coord of the scene position (If the scene is for an object, the position should be of the object's coordinates most of the time)
* **y**: Y coord of the scene position.
* **z**: Z coord of the scene position.
* **xRot**: Value x of the scene rotation.
* **yRot**: Value y of the scene rotation.
* **zRot**: Value z of the scene rotation (It's heading).
* **rotationOrder**: Rotation order. Default is 2.
* **holdLastFrame**: If true, the scene stays on the last frame once it finishes, making `GetSynchronizedScenePhase` keep returning `1.0`. Script is expected to clean up it's memory and stop the animation if this is passed as true and the phase reaches `1.0`.
* **looped**: If true, the scene will be looped and `holdLastFrame` will be disregarded.
* **phaseToStopScene**: Which phase (from `0.0` to `1.0` to stop the scene. Default is `1.0`)
* **phaseToStartScene**: Which phase (from `0.0` to `1.0` to start the scene. Default is `0.0`)
* **animSpeed**: Speed of the animation. Default is `1.0`

## Return value
Returns the network synchronized scene's handle. You can get information regarding the phase, rate etc of this synchronised scene by using local synchronized scene natives (e.g [`GET_SYNCHRONIZED_SCENE_PHASE`](#_0xE4A310B1D7FA73CC)).
Do note that you need to get the local scene handle from the network scene handle (using [`NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID`](#_0x02C40BF885C567B6)) and then pass the returned value to the local synchronized scene info natives.
