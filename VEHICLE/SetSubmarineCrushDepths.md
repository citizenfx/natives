---
ns: VEHICLE
aliases: ["_JITTER_VEHICLE"]
---
## SET_SUBMARINE_CRUSH_DEPTHS

```c
// 0xC59872A5134879C7 0x4A46E814
void SET_SUBMARINE_CRUSH_DEPTHS(Vehicle submarine, BOOL toggle, float crushWarningDepth1, float crushWarningDepth2, float crushDepth);
```

```
When I called this with what the script was doing, which was -190f for yaw pitch and roll, all my car did was jitter a little. I also tried 0 and 190f. I altered the p1 variable between TRUE and FALSE and didn't see a difference.  
This might have something to do with the physbox of the vehicle, but I'm not sure.  
```

## Parameters
* **submarine**: 
* **toggle**: 
* **crushWarningDepth1**: 
* **crushWarningDepth2**: 
* **crushDepth**: 

