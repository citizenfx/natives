---
ns: AUDIO
aliases: ["0x4F0C413926060B38","_SET_VEHICLE_AUDIO"]
---
## _FORCE_VEHICLE_ENGINE_AUDIO

```c
// 0x4F0C413926060B38 0x33B0B007
void _FORCE_VEHICLE_ENGINE_AUDIO(Vehicle vehicle, char* audioName);
```

```
This native sets the audio of the specified vehicle to the audioName (p1).
Use the audioNameHash found in vehicles.meta
Example:
_SET_VEHICLE_AUDIO(veh, "ADDER");
The selected vehicle will now have the audio of the Adder.
FORCE_VEHICLE_???
```

## Parameters
* **vehicle**: 
* **audioName**: 

