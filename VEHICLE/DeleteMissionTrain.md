---
ns: VEHICLE
---
## DELETE_MISSION_TRAIN

```c
// 0x5B76B14AE875C795 0x86C9497D
void DELETE_MISSION_TRAIN(Vehicle* train);
```
Used to delete mission trains created with [`CREATE_MISSION_TRAIN`](#_0x63C6CCA8E68AE8C8).

## Parameters
* **train**: 

## Examples
```lua
local train = CreateMissionTrain(21, 40.2, -1201.3, 31.0, false)
DeleteMissionTrain(train)
```
