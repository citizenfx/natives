---
ns: TASK
---
## TASK_VEHICLE_GOTO_NAVMESH

```c
// 0x195AEEB13CEFE2EE 0x55CF3BCD
void TASK_VEHICLE_GOTO_NAVMESH(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int behaviorFlag, float stoppingRange);
```

```
Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  
WARNING:  
A behaviorFlag value of 0 will result in a clunky, stupid driver!  
Recommended settings:  
speed = 30.0f,  
behaviorFlag = 156,   
stoppingRange = 5.0f;  
If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   
If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  
EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
```

## Parameters
* **ped**: 
* **vehicle**: 
* **x**: 
* **y**: 
* **z**: 
* **speed**: 
* **behaviorFlag**: 
* **stoppingRange**: 

