---
ns: NETWORK
aliases: ["0x02C40BF885C567B6","_NETWORK_UNLINK_NETWORKED_SYNCHRONISED_SCENE","_NETWORK_CONVERT_SYNCHRONISED_SCENE_TO_SYNCHRONIZED_SCENE"]
---
## NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID

```c
// 0x02C40BF885C567B6 0x16AED87B
int NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID(int netSceneId);
```

Returns a local synchronized scene handle of a networked synchronised scene.

## Parameters
* **netSceneId**: Network synchronised scene ID (returned by [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#_0x7CD6BC4C2BBDD526)).

## Return value
Local synchronized scene ID. This value can be used with natives such as: [`GET_SYNCHRONIZED_SCENE_PHASE`](#_0xE4A310B1D7FA73CC), [`GET_SYNCHRONIZED_SCENE_RATE`](#_0xD80932D577274D40), [`IS_SYNCHRONIZED_SCENE_RUNNING`](#_0x25D39B935A038A26) and more.
