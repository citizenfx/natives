---
ns: TASK
---
## TASK_ENTER_VEHICLE

```c
// 0xC20E50AA46D09CA8 0xB8689B4E
void TASK_ENTER_VEHICLE(Ped ped, Vehicle vehicle, int timeout, int seat, float speed, int flag, Any p6);
```

```
speed 1.0 = walk, 2.0 = run  
p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle  
p6 is always 0  
Usage of seat   
-1 = driver  
0 = passenger  
1 = left back seat  
2 = right back seat  
3 = outside left  
4 = outside right  
```

## Parameters
* **ped**: 
* **vehicle**: 
* **timeout**: 
* **seat**: 
* **speed**: 
* **flag**: 
* **p6**: 

