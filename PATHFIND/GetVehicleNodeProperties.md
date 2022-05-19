---
ns: PATHFIND
---
## GET_VEHICLE_NODE_PROPERTIES

```c
// 0x0568566ACBB5DEDC 0xCC90110B
BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags);
```

```
Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  

Flags is a bit field:
public enum PathNodeFlags
{
    Offroad = 0x1,
    WanderTarget = 0x2,
    NoBigVehicles = 0x4,
    Disabled = 0x8,
    Tunnel = 0x10,
    DisabledUnk = 0x20,
    Highway = 0x40,
    Junction = 0x80,
    TrafficLightStop = 0x100,
    Stop = 0x200,
    Unk1 = 0x400
} 
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **density**: 
* **flags**: 

## Return value
