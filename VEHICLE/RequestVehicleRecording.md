---
ns: VEHICLE
---
## REQUEST_VEHICLE_RECORDING

```c
// 0xAF514CABE74CBF15 0x91AFEFD9
void REQUEST_VEHICLE_RECORDING(int recording, char* script);
```

Request the vehicle recording defined by the lowercase format string ``%s%03d.yvr``. For example, ``REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER")`` corresponds to fbis1uber001.yvr. 

For all vehicle recording/playback natives, "script" is a common prefix that usually corresponds to the script/mission the recording is used in, "recording" is its int suffix, and "id" (e.g., in natives [GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID](#_0x102D125411A7B6E6)) corresponds to a unique identifier within the recording streaming module.

Note that only 24 recordings (hardcoded in multiple places) can ever active at a given time before clobbering begins.

## Parameters
* **recording**: 
* **script**: 

## Examples
```lua
-- blimptest.ysc.c; 
-- another example: model = `scorcher` ;  script,recording = "fam2",2
local model = `blimp`
local script,recording = "Blimp_City",1

RequestModel(model)
RequestVehicleRecording(recording, script)
while not HasModelLoaded(model) -- or not HasVehicleRecordingBeenLoad
    or not Citizen.InvokeNative(0x300D614A4C785FC4, recording, script, Citizen.ReturnResultAnyway()) do
    Citizen.Wait(0)
end

local id = GetVehicleRecordingId(recording, script)
local rot = GetRotationOfVehicleRecordingIdAtTime(id, 0.0)
local pos = Citizen.InvokeNative(0x92523B76657A517D, id, 0.0, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())

-- Creates a vehicle at the initial position & heading of the script
local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, rot.z, true, false)

SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
StartPlaybackRecordedVehicle(vehicle, recording, script, true)
SetPlaybackSpeed(vehicle, 1.25)
N_0x1f2e4e06dea8992b(vehicle, true) -- ForcePlaybackRecordedVehicleUpdate
```
