---
ns: TASK
---
## TASK_VEHICLE_TEMP_ACTION

```c
// 0xC429DCEEB339E129 0x0679DFB8
void TASK_VEHICLE_TEMP_ACTION(Ped driver, Vehicle vehicle, int action, int time);
```

```
'1 - brake
'3 - brake + reverse
'4 - turn left 90 + braking
'5 - turn right 90 + braking
'6 - brake strong (handbrake?) until time ends
'7 - turn left + accelerate
'7 - turn right + accelerate
'9 - weak acceleration
'10 - turn left + restore wheel pos to center in the end
'11 - turn right + restore wheel pos to center in the end
'13 - turn left + go reverse
'14 - turn left + go reverse
'16 - plane fly up (crashes game if not in plane) :)
'17 - plane fly straight (crashes game if not in plane)
'18 - plane sharp left (crashes game if not in plane)
'19 - plane sharp right (crashes game if not in plane)
'20 - strong brake + turn left/right
'21 - weak brake + turn left then turn right
'22 - weak brake + turn right then turn left
'23 - brake + reverse
'24 - accelerate fast
'25 - brake
'26 - brake turning left then when almost stopping it turns left more
'27 - brake turning right then when almost stopping it turns right more
'28 - brake until car stop or until time ends
'29 - brake + strong reverse acceleration
'30 - performs a burnout (brake until stop + brake and accelerate)
'31 - accelerate + handbrake
'32 - accelerate very strong
'33 - Surface in submarine
Seems to be this:
Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else
```

## Parameters
* **driver**: 
* **vehicle**: 
* **action**: 
* **time**: 

