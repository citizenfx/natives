---
ns: TASK
---
## SET_MOUNTED_WEAPON_TARGET

```c
// 0xCCD892192C6D2BB9 0x98713C68
void SET_MOUNTED_WEAPON_TARGET(Ped shootingPed, Ped targetPed, Vehicle targetVehicle, float x, float y, float z);
```

```
Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.  
```

```
NativeDB Added Parameter 7: Any p6
NativeDB Added Parameter 8: Any p7
```

## Parameters
* **shootingPed**: 
* **targetPed**: 
* **targetVehicle**: 
* **x**: 
* **y**: 
* **z**: 

