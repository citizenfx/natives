---
ns: PED
---
## GET_CLOSEST_PED

```c
// 0xC33AB876A77F8164 0x8F6C1F55
BOOL GET_CLOSEST_PED(float x, float y, float z, float radius, BOOL p4, BOOL p5, Ped* outPed, BOOL p7, BOOL p8, int pedType);
```

```
Gets the closest ped in a radius.  
Ped Types:  
Any ped = -1  
Player = 1  
Male = 4   
Female = 5   
Cop = 6  
Human = 26  
SWAT = 27   
Animal = 28  
Army = 29  
------------------  
P4 P5 P7 P8  
1  0  x  x  = return nearest walking Ped  
1  x  0  x  = return nearest walking Ped  
x  1  1  x  = return Ped you are using  
0  0  x  x  = no effect  
0  x  0  x  = no effect  
x = can be 1 or 0. Does not have any obvious changes.  
This function does not return ped who is:  
1. Standing still  
2. Driving  
3. Fleeing  
4. Attacking  
This function only work if the ped is:  
1. walking normally.  
2. waiting to cross a road.  
Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **radius**: 
* **p4**: 
* **p5**: 
* **outPed**: 
* **p7**: 
* **p8**: 
* **pedType**: 

## Return value
