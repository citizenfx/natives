---
ns: VEHICLE
aliases: ["_JITTER_VEHICLE"]
---
## SET_SUBMARINE_CRUSH_DEPTHS

```c
// 0xC59872A5134879C7 0x4A46E814
void SET_SUBMARINE_CRUSH_DEPTHS(Vehicle vehicle, BOOL toggle, float depth1, float depth2, float depth3);
```

## Parameters
* **vehicle**: 
* **toggle**: 
* **depth1**: 
* **depth2**: 
* **depth3**: 

Sets when a submarine will start to be crushed and damaged through NUI and displays notifications in the top left.

depth1 will display: WARNING! Approaching crush depth!

depth2 will display: DANGER! Hull integrity critical!

depth3 will display: ALERT! Catastrophic hull damage!

This will also play music when getting deeper, and at depth3 will crush the submarine, playing explosion effects and sounds. These effects are already set for submarines in GTA 5. 
