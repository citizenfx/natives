---
ns: PED
---
## FORCE_PED_MOTION_STATE

```c
// 0xF28965D04F570DCA 0x164DDEFF
BOOL FORCE_PED_MOTION_STATE(Ped ped, Hash motionStateHash, BOOL p2, cs_type(BOOL) int p3, BOOL p4);
```

```c
enum ePedMotionState
{
    MS_ON_FOOT_IDLE = -1871534317, // motionstate_idle
    MS_ON_FOOT_WALK = -668482597, // motionstate_walk
    MS_ON_FOOT_RUN = -530524, // motionstate_run
    MS_ON_FOOT_SPRINT = -1115154469, // motionstate_sprint
    MS_CROUCH_IDLE = 1140525470, // motionstate_crouch_idle
    MS_CROUCH_WALK = 147004056, // motionstate_crouch_walk
    MS_CROUCH_RUN = 898879241, // motionstate_crouch_run
    MS_DO_NOTHING = 247561816, // motionstate_donothing
    MS_DIVING_IDLE = 1212730861, // motionstate_diving_idle
    MS_DIVING_SWIM = -1855028596, // motionstate_diving_swim
    MS_PARACHUTING = -1161760501, // motionstate_parachuting
    MS_AIMING = 1063765679, // motionstate_aiming
    MS_ACTIONMODE_IDLE = -633298724, // motionstate_actionmode_idle
    MS_ACTIONMODE_WALK = -762290521, // motionstate_actionmode_walk
    MS_ACTIONMODE_RUN = 834330132, // motionstate_actionmode_run
    MS_STEALTHMODE_IDLE = 1110276645, // motionstate_stealth_idle
    MS_STEALTHMODE_WALK = 69908130, // motionstate_stealth_walk
    MS_STEALTHMODE_RUN = -83133983, // motionstate_stealth_run
}
```

## Parameters
* **ped**: 
* **motionStateHash**: 
* **p2**: 
* **p3**: 
* **p4**: 

## Return value
