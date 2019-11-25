---
ns: PED
---
## FORCE_PED_MOTION_STATE

```c
// 0xF28965D04F570DCA 0x164DDEFF
BOOL FORCE_PED_MOTION_STATE(Ped ped, Hash motionStateHash, BOOL p2, BOOL p3, BOOL p4);
```

```
Some motionstate hashes are  
0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  
and those for the strings  
"motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  
Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.  
 [31/03/2017] ins1de :  
        enum MotionState  
        {  
            StopRunning = -530524,  
            StopWalking = -668482597,  
            Idle = 247561816, // 1, 1, 0  
            Idl2 = -1871534317,  
            SkyDive =-1161760501, // 0, 1, 0  
            Stealth = 1110276645,  
            Sprint = -1115154469,  
            Swim = -1855028596,  
            Unknown1 = 1063765679,  
            Unknown2 = -633298724,  
        }  
```

```
NativeDB Parameter 3: int p3
```

## Parameters
* **ped**: 
* **motionStateHash**: 
* **p2**: 
* **p3**: 
* **p4**: 

## Return value
