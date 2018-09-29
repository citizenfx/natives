---
ns: PED
---
## SET_PED_AS_COP

```c
// 0xBB03C38DD3FB7FFD 0x84E7DE9F
void SET_PED_AS_COP(Ped ped, BOOL toggle);
```

```
Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.  
```

## Parameters
* **ped**: 
* **toggle**: 

