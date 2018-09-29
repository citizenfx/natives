---
ns: VEHICLE
---
## SET_VEHICLE_MOD

```c
// 0x6AF0636DDEDCB6DD 0xB52E5ED5
void SET_VEHICLE_MOD(Vehicle vehicle, int modType, int modIndex, BOOL customTires);
```

```
In b944, there are 50 (0 - 49) mod types.  
Sets the vehicle mod.  
The vehicle must have a mod kit first.  
Any out of range ModIndex is stock.  
#Mod Type  
Spoilers   
Front Bumper   
Rear Bumper   
Side Skirt   
Exhaust   
Frame   
Grille   
Hood   
Fender   
Right Fender   
Roof   
Engine   
Brakes   
Transmission   
Horns - 14 (modIndex from 0 to 51)  
Suspension   
Armor   
Front Wheels   
Back Wheels - 24 //only for motocycles  
Plate holders   
Trim Design   
Ornaments   
Dial Design   
Steering Wheel   
Shifter Leavers   
Plaques   
Hydraulics   
Livery   
ENUMS: pastebin.com/QzEAn02v  
```

## Parameters
* **vehicle**: 
* **modType**: 
* **modIndex**: 
* **customTires**: 

