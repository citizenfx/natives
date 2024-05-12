---
ns: PED
aliases: ["0xF9ACF4A08098EA25"]
---
## SPECIAL_FUNCTION_DO_NOT_USE

```c
// 0xF9ACF4A08098EA25 0x141CC936
void SPECIAL_FUNCTION_DO_NOT_USE(Ped ped, BOOL noCollisionUntilClear);
```

Kicks the ped from the current vehicle and keeps the rendering-focus on this ped (also disables its collision). If doing this for your player ped, you'll still be able to drive the vehicle.  
Only to be used in very specific situations where the ped needs to be inside the car still but not attached.

## Parameters
* **ped**: 
* **noCollisionUntilClear**: 

