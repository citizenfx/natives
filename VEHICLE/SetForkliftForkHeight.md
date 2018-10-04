---
ns: VEHICLE
aliases: ["0x37EBBF3117BD6A25"]
---
## SET_FORKLIFT_FORK_HEIGHT

```c
// 0x37EBBF3117BD6A25 0x943A6CFC
void SET_FORKLIFT_FORK_HEIGHT(Vehicle vehicle, float height);
```

```
Sets some values in a vehicle gadget (tow arm, digger arm, etc.). Don't know which one though.  
I've tested on the towtruck 1 & 2, Dock Lift (Crate Arm), Dozer, and such have no effect. However when used on a Forklift it sets the height of the forks. 0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol  
```

## Parameters
* **vehicle**: 
* **height**: 
