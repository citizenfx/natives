---
ns: NETWORK
aliases: ["0xA5EAFE473E45C442"]
---
## NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK

```c
// 0xA5EAFE473E45C442
void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK(cs_type(Any) Ped ped, int netSceneID, cs_type(Any) char* animDict, cs_type(Any) char* animClip, cs_type(Any) float blendIn, cs_type(Any) float blendOut, int sceneFlags, int ragdollFlags, cs_type(Any) float moverBlendInDelta, int ikFlags);
```

Adds a ped to a networked synchronized scene but extends [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#_0x742A637471BCECD9) to support IK flags.
There is barely any difference between this and [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#_0x742A637471BCECD9).

```
NativeDB Introduced: v1290
```

## Parameters
* **ped**: Index of the ped to add to the scene.
* **netSceneID**: Network scene ID returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#_0x7CD6BC4C2BBDD526).
* **animDict**: Which anim dictionary to use on this ped.
* **animClip**: Which clip from the anim dictionary to use on this ped.
* **blendIn**: Blend in speed of the animation. Default is `8.0`.
* **blendOut**: Blend out speed of the animation. Default is `-8.0`.
* **sceneFlags**: Synchronized scene flags. See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#_0x742A637471BCECD9).
* **ragdollFlags**: Ragdoll blocking flags. Default is 0.
* **moverBlendInDelta**: Determines the rate at which the mover blends in to the scene. Useful for ensuring a seamless entry onto a synchronized scene. Default is `1000.0`.
* **ikFlags**: Inverse kinematics flags. Default is `0`.
