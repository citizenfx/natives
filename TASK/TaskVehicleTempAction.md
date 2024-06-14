---
ns: TASK
---
## TASK_VEHICLE_TEMP_ACTION

```c
// 0xC429DCEEB339E129 0x0679DFB8
void TASK_VEHICLE_TEMP_ACTION(Ped driver, Vehicle vehicle, int action, int time);
```

Gives the vehicle a temporary action.

**Note**: For migrating objects, a `CScriptEntityStateChangeEvent` will be sent over the network to let other clients know that this object is being given a temporary action. At the same time, temporary actions cannot be applied to clones/remote objects.

```c
enum eTempAction {
    TA_NONE = 0,
    TA_WAIT = 1,
    TA_UNUSED = 2,
    TA_BRAKE_REVERSE = 3,
    TA_HANDBRAKE_TURN_LEFT = 4,
    TA_HANDBRAKE_TURN_RIGHT = 5,
    TA_HANDBRAKE_UNTIL_TIME_ENDS = 6,
    TA_TURN_LEFT = 7,
    TA_TURN_RIGHT = 8,
    TA_ACCELERATE = 9,
    TA_TURN_LEFT = 10,
    TA_TURN_RIGHT = 11,
    TA_UNUSED_12 = 12,
    TA_TURN_LEFT_GO_REVERSE = 13,
    TA_TURN_RIGHT_GO_REVERSE = 14,
    TA_PLANE_FLY_UP = 15, // (crashes game if not in plane)
    TA_PLANE_FLY_STRAIGHT = 16, // (crashes game if not in plane)
    TA_PLANE_SHARP_LEFT = 17, // (crashes game if not in plane)
    TA_PLANE_SHARP_RIGHT = 18, // (crashes game if not in plane)
    TA_STRONG_BRAKE = 19,
    TA_TURN_LEFT_AND_STOP = 20,
    TA_TURN_RIGHT_AND_STOP = 21,
    TA_GO_IN_REVERSE = 22,
    TA_ACCELERATE_FAST = 23,
    TA_BRAKE_ACTION = 24,
    TA_HANDBRAKE_TURN_LEFT_MORE = 25,
    TA_HANDBRAKE_TURN_RIGHT_MORE = 26,
    TA_HANDBRAKE_BRAKE_STRAIGHT = 27,
    TA_BRAKE_STRONG_REVERSE_ACCELERATION = 28,
    TA_UNUSED_29 = 29,
    TA_PERFORMS_BURNOUT = 30,
    TA_REV_ENGINE = 31,
    TA_ACCELERATE_VERY_STRONG = 32,
    TA_SURFACE_IN_SUBMARINE = 33
};
```

## Parameters
* **driver**: The vehicle driver (`Ped`).
* **vehicle**: The vehicle handle.
* **action**: The temporary action, see `eTempAction`.
* **time**: The time to run this temp action for, use `-1` for infinite. Time is in milliseconds.

