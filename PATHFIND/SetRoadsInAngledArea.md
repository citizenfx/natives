---
ns: PATHFIND
---
## SET_ROADS_IN_ANGLED_AREA

```c
// 0x1A5AA1208AF5DB59 0xBD088F4B
void SET_ROADS_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL unknown1, BOOL unknown2, BOOL unknown3);
```

unknown3 is related to ``SEND_SCRIPT_WORLD_STATE_EVENT > CNetworkRoadNodeWorldStateData`` in networked environments.

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

## Parameters
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area
* **unknown1**: 
* **unknown2**: 
* **unknown3**: 

