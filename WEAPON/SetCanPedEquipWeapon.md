---
ns: WEAPON
aliases: ["0xB4771B9AAF4E68E4","_SET_CAN_PED_SELECT_WEAPON"]
---
## _SET_CAN_PED_EQUIP_WEAPON

```c
// 0xB4771B9AAF4E68E4
void _SET_CAN_PED_EQUIP_WEAPON(Ped ped, Hash weaponHash, BOOL toggle);
```

Disables selecting the given weapon. Ped isn't forced to put the gun away. However you can't reselect the weapon if you holster then unholster. Weapon is also grayed out on the weapon wheel.

## Parameters
* **ped**: 
* **weaponHash**: 
* **toggle**: 

