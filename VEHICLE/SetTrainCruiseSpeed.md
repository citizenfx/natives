---
ns: VEHICLE
---
## SET_TRAIN_CRUISE_SPEED

```c
// 0x16469284DB8C62B5 0xB507F51D
cs_type(Any) void SET_TRAIN_CRUISE_SPEED(Vehicle train, float speed);
```

Used to control train speed, can be used to start and stop its movement as well.

## Parameters
* **train**: 
* **speed**: 

## Return value

## Examples
```lua
local train = CreateMissionTrain(21, 40.2, -1201.3, 31.0, false)
SetTrainCruiseSpeed(train, 20.0) -- Can be used to 'start' the train
SetTrainCruiseSpeed(train, 0.0) -- Can be used to 'stop' the train
```