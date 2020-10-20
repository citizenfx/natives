---
ns: TASK
---
## TASK_JUMP

```c
// 0x0AE4086104E067B1 0x0356E3CE
void TASK_JUMP(Ped ped, BOOL unused);
```

```
Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  
v350: Ped ped, bool unused  
v678: Ped ped, bool unused, bool flag1, bool flag2  
flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.  
```

```
NativeDB Added Parameter 3: Any p2
NativeDB Added Parameter 4: Any p3
```

## Parameters
* **ped**: 
* **unused**: 

