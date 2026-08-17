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
The scenes are replicated to everyone.

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

## Examples
```lua
RegisterCommand('scenetest', function ()
    RequestModel('hei_p_m_bag_var22_arm_s')
    while not HasModelLoaded('hei_p_m_bag_var22_arm_s') do Wait(0) end

    local bag = CreateObject('hei_p_m_bag_var22_arm_s', GetEntityCoords(PlayerPedId()), true, false, false)
    local objectPos = vector4(103.4413, 332.7415, 111.2320, 303.7820) -- Random coords
    local sceneObject = CreateObject('hei_prop_hei_cash_trolly_01', objectPos, true, false, false) -- Diamond casino heist trolley prop
    while not NetworkHasControlOfEntity(sceneObject) do
        NetworkRequestControlOfEntity(sceneObject)
        Wait(0)
    end
    local animRot, animCo, animDict = GetEntityRotation(sceneObject), GetEntityCoords(sceneObject), 'anim@heists@ornate_bank@grab_cash'
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Wait(0) end
    local animPack = {
        {"intro", "bag_intro"},
        {"grab", "bag_grab", "cart_cash_dissapear"},
        {"exit", "bag_exit"}
    }

    local cutScenes = {}

    for i=1, #animPack do -- For every anim pack we have in our table we execute this once
        cutScenes[i] = NetworkCreateSynchronisedScene(animCo, animRot, 2, true, false, 1065353216, 0, 1.3) -- We create the scene of our anim pack
        NetworkAddPedToSynchronisedScene(PlayerPedId(), cutScenes[i], animDict, animPack[i][1], 1.5, -4.0, 1, 16, 1148846080, 0) -- We add the player with it's anim and some params that you can check in the native docs
        NetworkAddEntityToSynchronisedScene(bag, cutScenes[i], animDict, animPack[i][2], 4.0, -8.0, 1) -- We add the bag because it also moves

        if i==2 then
            NetworkAddEntityToSynchronisedScene(sceneObject, cutScenes[i], animDict, animPack[i][3], 4.0, -8.0, 1) -- If we're on the second scene we start removing the diamonds in it
        end
    end

    NetworkStartSynchronisedScene(cutScenes[1])
    Wait(1750)
    NetworkStartSynchronisedScene(cutScenes[2])
    Wait(37000) -- This numbers have been achieved by testing, you could do it with GetAnimDuration() tho
    NetworkStartSynchronisedScene(cutScenes[3])
    Wait(2000)
    ClearPedTasks(PlayerPedId())
    DeleteObject(bag)
    DeleteObject(sceneObject)
    RemoveAnimDict(animDict)
    SetModelAsNoLongerNeeded('hei_prop_hei_cash_trolly_01')
end)
```
