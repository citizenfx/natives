---
ns: PED
---
## ADD_SCENARIO_BLOCKING_AREA

```c
// 0x1B5C85C612E5256E 0xA38C0234
int ADD_SCENARIO_BLOCKING_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL Network, BOOL CancelActive, BOOL BlockPeds, BOOL BlockVehicles);
```

```
Sets an area where scenarios are blocked
```


## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **Network**: Optionally networked to all other players
* **CancelActive**: Should this cause peds already in active scenario points in the area specified to leave
* **BlockPeds**: does this area effect scenarios with peds
* **BlockVehicles**: does this area effect scenarios with vehicles

## Return value
