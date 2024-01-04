---
ns: NETWORK
---
## NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE

```c
// 0xF2404D68CBC855FA 0x10DD636C
void NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(Entity entity, int netScene, char* animDict, char* animName, float blendInSpeed, float blendOutSpeed, int flags);
```

### Animations
The animation list can be found within the following native: [`PLAY_ENTITY_ANIM`](#_0x7FB218262B810701)

### Used With
* [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#_0x742A637471BCECD9) 
* [`NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE`](#_0xF2404D68CBC855FA) 
* [`NETWORK_CREATE_SYNCHRONISED_SCENE`](#_0x7CD6BC4C2BBDD526)

## Parameters
* **entity**: The Entity that the animation is gonna play on (Recomended that the entity is serversided for best syncing).
* **netScene**: scene id.
* **animDict**: The animDict of the animation that you want to play (remember you have to load with RequestAnimDict() before executing this native)
* **animName**: The name of the animation that the entity is gonna play.
* **blendInSpeed**: a float (normal speed is 8.0f).
* **blendOutSpeed**: a float (normal speed is -8.0f).
* **flags**: The flags to use for this synchronized scene.

## Examples
```lua
  ped = PlayerPedId()
  pedCoords = GetEntityCoords(ped)
  animDict  = 'anim@scripted@heist@ig9_control_tower@male@'
  loadAnimDict(animDict) --Not a fivem native a function that you have to create yourself
  
  scene = NetworkCreateSynchronisedScene(GetEntityCoords(Object), GetEntityRotation(Object), 2, true, false, 8.0, -8.0, 1065353216)
  Object = GetClosestObjectOfType(pedCoords.x,pedCoords.y,pedCoords.z, 2.5, GetHashKey('h4_prop_h4_elecbox_01a'), 0, 0, 0)
  NetworkAddEntityToSynchronisedScene(Object, scene, animDict, 'exit_electric_box', 1.0, -1.0, 1000.0)
```
