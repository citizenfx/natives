---
ns: NETWORK
---
## NETWORK_CREATE_SYNCHRONISED_SCENE

```c
// 0x7CD6BC4C2BBDD526 0xB06FE3FE
int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int rotationOrder, BOOL holdLastFrame, BOOL looped, float p9, float animTime, float animSpeed);
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **xRot**: 
* **yRot**: 
* **zRot**: 
* **rotationOrder**: 
* **holdLastFrame**: 
* **looped**: 
* **p9**: 
* **animTime**: 
* **animSpeed**: 

## Return value
Network scene handle. This can be used to start / stop it and add peds or entities to it.

## Examples:
```lua
    local ped = PlayerPedId()
    local pedCo = GetEntityCoords(ped)
    local sceneObject = GetClosestObjectOfType(pedCo, 2.0, GetEntityModel('prop_weed_01'), false, false, false)
    local animDict = 'anim@gangops@facility@servers@bodysearch@'

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Wait(0) end

    local netScene = NetworkCreateSynchronisedScene(GetEntityCoords(sceneObject), GetEntityRotation(sceneObject), 2, true, false, 1, 15.666667, 1.0)
    NetworkAddPedToSynchronisedScene(ped, netScene, animDict, 'player_search', 1.0, 1.0, 15.666667, 17957384, 0) -- 15.666667 is the duration of this anim

    NetworkStartSynchronisedScene(netScene)
    Wait(15.666667)
    NetworkStopSynchronisedScene(netScene)
    ClearPedTasks(ped)
```

## Advanced example
You can find an advanced example [here](https://pastebin.com/masLVdm5)