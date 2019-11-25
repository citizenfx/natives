---
ns: CAM
aliases: ["0xC819F3CBB62BF692"]
---
## _RENDER_FIRST_PERSON_CAM

```c
// 0xC819F3CBB62BF692 0xD3C08183
void _RENDER_FIRST_PERSON_CAM(BOOL render, float p1, int p2);
```

```
This native makes the gameplay camera zoom into first person/third person with a special effect.  
For example, if you were first person in a mission and after the cutscene ends, the camera would then zoom into the first person camera view.  
if (CAM::GET_FOLLOW_PED_CAM_VIEW_MODE() != 4)  
           CAM::_C819F3CBB62BF692(1, 0, 3, 0)  
This makes the camera zoom in to first person.  
--------------------------------------------  
1st Param Options: 0 or 1 (Changes quit often, toggle?)  
2nd Param Options: 0, 0f, 1f, 3.8f, 10f, 20f (Mostly 0)   
3rd Param Options: 3, 2, 1 (Mostly 3);  
Note for the 2nd param 10f (offroad_race.c) and 3rd param 20f (range_modern.c) are the only times those 2 high floats are called.  
Note for the 3rd param 2 is only ever set in (franklin0.c), but it also sets it as 3. (0, 0, 3) ||(0, 0f, 2) || (0, 0, 3)  
```

```
NativeDB Added Parameter 4: Any p3
```

## Parameters
* **render**: 
* **p1**: 
* **p2**: 

