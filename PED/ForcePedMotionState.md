---
ns: PED
---
## FORCE_PED_MOTION_STATE

```c
// 0xF28965D04F570DCA 0x164DDEFF
BOOL FORCE_PED_MOTION_STATE(Ped ped, Hash motionStateHash, BOOL shouldReset, cs_type(BOOL) int updateState, BOOL forceAIPreCameraUpdate);
```

```c
enum ePedMotionState
{
    MOTIONSTATE_NONE = -294553821, // MotionState_None
    MOTIONSTATE_IDLE = -1871534317, // MotionState_Idle
    MOTIONSTATE_WALK = -668482597, // MotionState_Walk
    MOTIONSTATE_RUN = -530524, // MotionState_Run
    MOTIONSTATE_SPRINT = -1115154469, // MotionState_Sprint
    MOTIONSTATE_CROUCH_IDLE = 1140525470, // MotionState_Crouch_Idle
    MOTIONSTATE_CROUCH_WALK = 147004056, // MotionState_Crouch_Walk
    MOTIONSTATE_CROUCH_RUN = 898879241, // MotionState_Crouch_Run
    MOTIONSTATE_DONOTHING = 247561816, // MotionState_DoNothing
    MOTIONSTATE_ANIMATEDVELOCITY = 1427811395, // MotionState_AnimatedVelocity
    MOTIONSTATE_INVEHICLE = -1797663347, // MotionState_InVehicle
    MOTIONSTATE_AIMING = 1063765679, // MotionState_Aiming
    MOTIONSTATE_DIVING_IDLE = 1212730861, // MotionState_Diving_Idle
    MOTIONSTATE_DIVING_SWIM = -1855028596, // MotionState_Diving_Swim
    MOTIONSTATE_SWIMMING_TREADWATER = -776007225, // MotionState_Swimming_TreadWater
    MOTIONSTATE_DEAD = 230360860, // MotionState_Dead
    MOTIONSTATE_STEALTH_IDLE = 1110276645, // MotionState_Stealth_Idle
    MOTIONSTATE_STEALTH_WALK = 69908130, // MotionState_Stealth_Walk
    MOTIONSTATE_STEALTH_RUN = -83133983, // MotionState_Stealth_Run
    MOTIONSTATE_PARACHUTING = -1161760501, // MotionState_Parachuting
    MOTIONSTATE_ACTIONMODE_IDLE = -633298724, // MotionState_ActionMode_Idle
    MOTIONSTATE_ACTIONMODE_WALK = -762290521, // MotionState_ActionMode_Walk
    MOTIONSTATE_ACTIONMODE_RUN = 834330132, // MotionState_ActionMode_Run
    MOTIONSTATE_JETPACK = 1398696542 // MotionState_Jetpack
}
```

## Parameters
* **ped**: The ped handle.
* **motionStateHash**: The motion state hash.
* **shouldReset**: If the motion state should be set even if the ped is already in the specified motion state.
* **updateState**: Integer but treated as a boolean (only allows 1 or 0). Sets ped reset flags `CPED_RESET_FLAG_ForcePreCameraAiAnimUpdateIfFirstPerson` and `CPED_RESET_FLAG_ForcePostCameraAnimUpdate`.
* **forceAIPreCameraUpdate**: If `updateState` is 1, will set either `CPED_RESET_FLAG_ForcePreCameraAIUpdate` (if true) or `CPED_RESET_FLAG_ForcePostCameraAIUpdate` (if false) ped reset flags.

## Return value
Whether or not the motion state was forced on the ped successfully.
