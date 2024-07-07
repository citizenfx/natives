---
ns: VEHICLE
---
## CREATE_MISSION_TRAIN

```c
// 0x63C6CCA8E68AE8C8 0xD4C2EAFD
Vehicle CREATE_MISSION_TRAIN(int variation, float x, float y, float z, BOOL direction);
```

Train models must be [requested](#_0x963D27A58DF860AC) before use. See trains.xml (located in `Grand Theft Auto V\update\update.rpf\common\data\levels\gta5\trains.xml`) for freight and metro variations.

Model names to request can be found by searching `model_name` in the file.

The `Lua` usage example provided down below has been provided in such way so users can test each and every train variation.

### Newly added parameters (seen in 2372 build)

```
NativeDB Added Parameter 6: BOOL isNetwork
NativeDB Added Parameter 7: BOOL netMissionEntity
```

* **isNetwork**: Whether to create a network object for the train. If false, the train exists only locally.
* **netMissionEntity**: Whether to register the train as pinned to the script host in the R* network model.

### Train Models:
* freight

### Carriage Models:
* freightcar
* freightcar2 (Added v2372)
* freightcont1
* freightcont2
* freightgrain
* metrotrain
* tankercar

### Some train variations (default from trains.xml as of build 2372)
* 17. Very long train and freight variation.
* 18. Freight train only.
* 26. Double metro train (with both models flipped opposite to each other). This used to be `25` before the 2802 build, it also used to be `24` before the 2372 build.

## Parameters
* **variation**: The variation id, these can range from 0 to 26 as of build 2802 (previously `0-25` in build 2372 and `0-24` before that).
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **direction**: The direction in which the train will go (true or false)

## Return value
A script handle (fwScriptGuid index) for the train, or 0 if the train failed to be created.

## Examples
```lua
--[[ 
    This function needs to be invoked prior to calling CreateMissionTrain  or the trains (as well as its carriages) won't spawn.
    Could also result in a game-crash when CreateMissionTrain is called without
    loading the train model needed for the variation before-hand.
]]
function loadTrainModels()
    local trainsAndCarriages = {
        'freight', 'metrotrain', 'freightcont1', 'freightcar', 
        'freightcar2', 'freightcont2', 'tankercar', 'freightgrain'
    }

    for _, vehicleName in ipairs(trainsAndCarriages) do
        local modelHashKey = GetHashKey(vehicleName)
        RequestModel(modelHashKey) -- load the model
        -- wait for the model to load
        while not HasModelLoaded(modelHashKey) do
            Citizen.Wait(500)
        end
    end
end

loadTrainModels()

RegisterCommand("createtrain", function(source, args, rawCommand)
    if #args < 1 then
        TriggerEvent('chat:addMessage', {
            args = { 
                'Error, provide a variation id, you can find those in trains.xml. Variations range from 0 to 26.'
            }
        })
        return
    end
    
    local playerCoords = GetEntityCoords(PlayerPedId())
     -- Now actually create a train using a variation
     -- These coordinates were used for testing: 1438.98, 6405.92, 34.19
    CreateMissionTrain(
        tonumber(args[1]),
        playerCoords.x, playerCoords.y, playerCoords.z,
        true,
        true,
        true
    )
end, false)
```
