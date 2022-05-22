---
ns: PATHFIND
---
## GET_VEHICLE_NODE_PROPERTIES

```c
// 0x0568566ACBB5DEDC 0xCC90110B
BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags);
```

## Description
Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  

## Parameters
* **x**: x position of search
* **y**: y position of search
* **z**: z position of search
* **density**: returned density of traffic ranging from 0 - 15
* **flags**: returned flags of this node (see below)

### Flags
* **0x1**:    Offroad
* **0x2**:    Unknown. Potentially a target for wander tasks as it follows game camera.
* **0x4**:    NoBigVehicles
* **0x8**:    Disabled
* **0x10**:   Tunnel
* **0x20**:   DeadEnd
* **0x40**:   Highway
* **0x80**:   Junction
* **0x100**:  TrafficLight
* **0x200**:  StopSign
* **0x400**:  Unknown

## Return value
bool indicating whether a node was found
