---
ns: TASK
---
## TASK_ENTER_VEHICLE

```c
// 0xC20E50AA46D09CA8 0xB8689B4E
void TASK_ENTER_VEHICLE(Ped ped, Vehicle vehicle, int time, int seatIndex, float moveBlendRatio, int flags, char* overridenClipSet);
```

```c
enum eEnterExitVehicleFlags {
    // If the task is interupted (bumped, shot), dont resume.
    ECF_RESUME_IF_INTERRUPTED = 1,
	// Warps ped to entry point ready to open the door/enter seat
    ECF_WARP_ENTRY_POINT = 2,
    // Jack the ped occupying the vehicle, regardless of relationship status
    ECF_JACK_ANYONE = 8,
	// Warp the ped onto the vehicle
	ECF_WARP_PED = 16,
    // Dont wait for the vehicle to stop before exiting
    ECF_DONT_WAIT_FOR_VEHICLE_TO_STOP = 64,
    // Dont close the vehicle door
    ECF_DONT_CLOSE_DOOR = 256,
	// Allow ped to warp to the seat if entry is blocked
    ECF_WARP_IF_DOOR_IS_BLOCKED = 512,
    // Jump out of the vehicle
    ECF_JUMP_OUT = 4096,
    // TASK_LEAVE_ANY_VEHICLE auto defaults the ECF_WARP_IF_DOOR_IS_BLOCKED, set this flag to not set that
    ECF_DONT_DEFAULT_WARP_IF_DOOR_BLOCKED = 65536,
    // Use entry/exit point on the left hand side
    ECF_USE_LEFT_ENTRY = 131072,
    // Use entry/exit point on the right hand side
    ECF_USE_RIGHT_ENTRY = 262144,
     // When jacking just pull the ped out, but don't get in
    ECF_JUST_PULL_PED_OUT = 524288,
    // Disable shuffling - forces ped to use direct door only
    ECF_BLOCK_SEAT_SHUFFLING = 1048576,
    //  Allow ped to warp if the shuffle link to that seat is blocked by someone
    ECF_WARP_IF_SHUFFLE_LINK_IS_BLOCKED = 4194304,
    // Never jack anyone when entering/exiting
    ECF_DONT_JACK_ANYONE = 8388608,
    // Wait for our entry point to be clear of peds before exiting
    ECF_WAIT_FOR_ENTRY_POINT_TO_BE_CLEAR = 16777216
}
```

## Parameters
* **ped**: `Ped` to assign the task to.
* **vehicle**: The target `Vehicle`
* **time**: If Time = -1 the ped will never warp into the vehicle. (default `20000`)
* **seatIndex**: See `eSeatPosition` declared in [`IS_VEHICLE_SEAT_FREE`](#_0x22AC59A870E6A669). (default `-1`)
* **moveBlendRatio**: 0.0 = still, 1.0 = walk, 2.0 = run, 3.0 = sprint (default `2.0`)
* **flags**: See `eEnterExitVehicleFlags` (default `1`)
* **overridenClipSet**: clipset that will be used to override the vehicle enter animations

