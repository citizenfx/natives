---
ns: NETWORK
---
## NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE

```c
// 0xF2404D68CBC855FA 0x10DD636C
void NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(Entity entity, int netScene, char* animDict, char* animName, float blendInSpeed, float blendOutSpeed, int flags);
```

### Animation Dictionaries
* **Animation List**: https://alexguirre.github.io/animations-list/
* **Other Option**: More likely to find your desired animation by just searching OpenIV 
* Most can be found here: (Gta V path)\update\x64\dlcpacks\(Desired folder like mpheist)\dlc.rpf\x64\anim\ingame\clip_anim@.rpf\
* Most useful ones start with anim@scripted@...

### Animations
* **Animation List**: https://alexguirre.github.io/animations-list/
* **Other Option**: You are much more likely to find the animation by opening [CodeWalker's](https://pl.gta5-mods.com/tools/codewalker-gtav-interactive-3d-map) Ped Viewer and putting the AnimDict into the search bar.

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

## Example
```lua
  ped = PlayerPedId()
  pedCoords = GetEntityCoords(ped)
  animDict  = 'anim@scripted@heist@ig9_control_tower@male@'
  loadAnimDict(animDict) --Not a fivem native a function that you have to create yourself
  
  scene = NetworkCreateSynchronisedScene(GetEntityCoords(Object), GetEntityRotation(Object), 2, true, false, 100065353216, 0, 1065353216)
  Object = GetClosestObjectOfType(pedCoords.x,pedCoords.y,pedCoords.z, 2.5, GetHashKey('h4_prop_h4_elecbox_01a'), 0, 0, 0)
  NetworkAddEntityToSynchronisedScene(Object, scene, animDict, 'exit_electric_box', 1.0, -1.0, 1000.0)
```
