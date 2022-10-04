---
ns: NETWORK
---
## NETWORK_CREATE_SYNCHRONISED_SCENE

```c
// 0x7CD6BC4C2BBDD526 0xB06FE3FE
int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int rotationOrder, BOOL holdLastFrame, BOOL looped, float p9, float animTime, float animSpeed);
```

Create a synchronised scene. This is usally used to create a scene where every entity has their own animation and needs to be started at the same time. Scene created using this native is networked and is synced to every client in game.

## Parameters
* **x**: Scene base location X.
* **y**: Scene base location Y.
* **z**: Scene base location Z.
* **xRot**: Scene base rotation X.
* **yRot**: Scene base rotation Y.
* **zRot**: Scene base rotation Z.
* **rotationOrder**: Rotation order of the scene. Current usage unknown.
* **holdLastFrame**: Whether or not the animation will hold the last frame in this scene.
* **looped**: Whether or not each animation in this scene will repeat.
* **p9**: Unknown, seems to be a flag parameter.
* **animTime**: The starting phase of the scene. Each scene has a phase ranged between 0.0 to 1.0. If you put `0.3` here, all animations in this scene will start at phase `0.3`.
* **animSpeed**: Animation speed. `1.0` is normal speed.

## Return value
A netScene id.

## Examples
```lua
-- This is a example to raise the crane for utility truck (utillitruck).

local veh = GetVehiclePedIsIn(PlayerPedId(), false)
local netScene = NetworkCreateSynchronisedScene(GetEntityCoords(veh), GetEntityRotation(veh), 2, false, false, 1065353216, 0.3, 0.5)
NetworkAddEntityToSynchronisedScene(veh, netScene, "va_utillitruck", "crane", 1.0, -1.0, 1)
NetworkStartSynchronisedScene(netScene)
```
