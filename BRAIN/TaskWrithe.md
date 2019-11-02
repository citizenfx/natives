---
ns: BRAIN
---
## TASK_WRITHE

```c
// 0xCDDC2B77CE54AC6E 0x0FDC54FC
void TASK_WRITHE(Ped ped, Ped target, int time, int p3);
```

```
EX: Function.Call(Ped1, Ped2, Time, 0);  
The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.  
MulleDK19: Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).  
```

```
NativeDB Added Parameter 5: Any p4
NativeDB Added Parameter 6: Any p5
```

## Parameters
* **ped**: 
* **target**: 
* **time**: 
* **p3**: 

