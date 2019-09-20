---
ns: VEHICLE
---
## GET_VEHICLE_DOOR_LOCK_STATUS

```c
// 0x25BC98A59C2EA962 0x0D72CEF2
int GET_VEHICLE_DOOR_LOCK_STATUS(Vehicle vehicle);
```

```
2 seems to disable getting vehicle in modshop  
```

## Parameters
* **vehicle**: 

## Return value
0 = None
1 = Unlocked
2 = Locked
3 = Locked for player
4 = Stick player inside (Doesn't allow players to exit the vehicle with the exit vehicle key.)
7 = Can be broken into (Can be broken into the car. If the glass is broken, the value will be set to 1)
8 = Can be broken into persist
10 = Cannot be tried to enter (Nothing happens when you press the vehicle enter key).

