---
ns: VEHICLE
---
## SWITCH_TRAIN_TRACK

```c
// 0xFD813BB7DB977F20 0x68BFDD61
cs_type(Any) void SWITCH_TRAIN_TRACK(int trackId, BOOL state);
```

Toggles whether ambient trains can spawn on the specified track or not.

| trackId | File | Description |
| --- | --- | --- |
| 0 | `trains1.dat` | Main track around SA |
| 1 | `trains2.dat` | Davis Quartz Quarry branch |
| 2 | `trains3.dat` | Second track alongside live track along Roy Lewenstein Blv. |
| 3 | `trains4.dat` | Metro track circuit |
| 4 | `trains5.dat` | Branch in Mirror Park Railyard |
| 5 | `trains6.dat` | Branch in Mirror Park Railyard |
| 6 | `trains7.dat` | LS branch to Mirror Park Railyard |
| 7 | `trains8.dat` | Overground part of metro track along Forum Dr. |
| 8 | `trains9.dat` | Branch to Mirror Park Railyard |
| 9 | `trains10.dat` | Yankton train |
| 10 | `trains11.dat` | Part of metro track near mission row |
| 11 | `trains12.dat` | Yankton prologue mission train |

Tracks IDs `0` and `3` are the main tracks you find trains on during normal gameplay, all the others are used during missions and are not complete tracks.


## Parameters
* **trackId**: The internal id of the train track to switch
* **state**: Whether ambient trains can spawn or not

## Return value
None. The original return type is `void`, but ABI compatibility makes this impossible.
