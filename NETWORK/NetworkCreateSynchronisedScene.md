---
ns: NETWORK
---
## NETWORK_CREATE_SYNCHRONISED_SCENE

```c
// 0x7CD6BC4C2BBDD526 0xB06FE3FE
int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int rotationOrder, BOOL holdLastFrame, BOOL looped, float p9, float animTime, float animSpeed);
```
## Parameters
* **x**: The x value of the entity you want to do the animation on.
* **y**: The y value of the entity you want to do the animation on.
* **z**: The z value of the entity you want to do the animation on.
* **xRot**: The xRotation value of the entity you want to do the animation on.
* **yRot**: The yRotation value of the entity you want to do the animation on.
* **zRot**: The zRotation value of the entity you want to do the animation on.
* **rotationOrder**: Rotation order.
* **holdLastFrame**: Whether the animation ends (smthn like ClearPedTask) if true, or doesn't end till you make it. 
* **looped**: Whether the animation is looping. 
* **p9**: a big number like 100000000000 (doesn't seem to affect anything).
* **animTime**: I think 0 for default animation time, or some number in msec.
* **animSpeed**: A big number 1000000000 (also doesn't seem to affect anything).

### Rotation Orders
* **0**: ZYX - Rotate around the z-axis, then the y-axis and finally the x-axis.
* **1**: YZX - Rotate around the y-axis, then the z-axis and finally the x-axis.
* **2**: ZXY - Rotate around the z-axis, then the x-axis and finally the y-axis.
* **3**: XZY - Rotate around the x-axis, then the z-axis and finally the y-axis.
* **4**: YXZ - Rotate around the y-axis, then the x-axis and finally the z-axis.
* **5**: XYZ - Rotate around the x-axis, then the y-axis and finally the z-axis.

## Used With
* **NetworkAddPedToSynchronisedScene**: https://docs.fivem.net/natives/?_0x742A637471BCECD9.
* **NetworkAddEntityToSynchronisedScene**: https://docs.fivem.net/natives/?_0xF2404D68CBC855FA.
* **NetworkStartSynchronisedScene**: https://docs.fivem.net/natives/?_0x9A1B3FCDB36C8697.

## Examples
```lua
EntityCoords = GetEntityCoords(Object)
EntityRotation = GetEntityRotation(Object)
  scene = NetworkCreateSynchronisedScene(EntityCoords, EntityRotation, 2, true, false, 100065353216, 0, 1065353216) --Where scene is the id of the created scene.
```

## Return value
netScene id.
