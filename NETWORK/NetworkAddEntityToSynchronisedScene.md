---
ns: NETWORK
---
## NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE

```c
// 0xF2404D68CBC855FA 0x10DD636C
void NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(Entity entity, int netScene, char* animDict, char* animName, float blendIn, float blendOut, int flag);
```

Adds an entity to a network synchronised scene.

## Parameters
* **entity**: Entity handle to add to the scene. 
* **netScene**: Which network scene to add this entity to (Returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#_0x7CD6BC4C2BBDD526))
* **animDict**: Animation dictionary to play on this entity.
* **animName**: Animation clip from the dictionary to play on this entity.
* **blendIn**: Blend in speed of the animation. Default is `8.0`.
* **blendOut**: Blend out speed of the animation. Default is `-8.0`.
* **flag**: Synchronized scene flags. See [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#_0x742A637471BCECD9) for more info.

