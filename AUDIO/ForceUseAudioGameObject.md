---
ns: AUDIO
aliases: ["0x4F0C413926060B38","_SET_VEHICLE_AUDIO", "_FORCE_VEHICLE_ENGINE_AUDIO"]
---
## FORCE_​USE_​AUDIO_​GAME_​OBJECT

```c
// 0x4F0C413926060B38 0x33B0B007
void FORCE_​USE_​AUDIO_​GAME_​OBJECT(Vehicle vehicle, char* audioName);
```

This native sets the audio of the specified vehicle to the audioName (p1).

## Parameters
* **vehicle**: Vehicle for which you want to set the audio.
* **audioName**: The name of the audio to be used for the vehicle. This should be the audioNameHash found in vehicles.meta.


## Examples
```lua
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    ForceUseAudioGameObject(vehicle, "ADDER") -- going to add the audio of the Adder to the specified vehicle
```
```js
    const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
    ForceUseAudioGameObject(vehicle, "ADDER"); // going to add the audio of the Adder to the specified vehicle
```
```cs
    using static CitizenFX.Core.Native.API;
    // ...
    var vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
    ForceUseAudioGameObject(vehicle, "ADDER"); // going to add the audio of the Adder to the specified vehicle
```