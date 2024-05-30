---
ns: AUDIO
aliases: ["0x97FFB4ADEED08066"]
---
## SET_VEHICLE_FORCE_REVERSE_WARNING

```c
// 0x97FFB4ADEED08066
void SET_VEHICLE_FORCE_REVERSE_WARNING(Vehicle vehicle, cs_type(Any) BOOL forceReverseWarning);
```

Force the reversing beep to be active, even though the vehicle may not be in reverse gear
(nb. the beep will not actually play unless the vehicle is also moving backwards)


## Parameters
* **vehicle**:
* **forceReverseWarning**:
