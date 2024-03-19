---
ns: PED
aliases: ["0xB282749D5E028163"]
---
## SET_PED_CAN_BE_KNOCKED_OFF_BIKE

```c
// 0xB282749D5E028163
void SET_PED_CAN_BE_KNOCKED_OFF_BIKE(Ped ped, BIKE_KNOCKOFF knockoffFlag);
```

**This native does not work! Do not use!**

Use [`SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE`](#_0x7A6535691B477C48) instead.   

## Parameters
* **ped**: Ped that is to be affected.
* **knockoffFlag**: Flag to be set as according to enum below.

```c
// BIKE_KNOCKOFF
enum BIKE_KNOCKOFF
{
    KNOCKOFFBIKE_DEFAULT = 0,       
    KNOCKOFFBIKE_NEVER,                 
    KNOCKOFFBIKE_EASY,
    KNOCKOFFBIKE_HARD
}
```
