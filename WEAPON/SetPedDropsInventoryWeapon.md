---
ns: WEAPON
---
## SET_PED_DROPS_INVENTORY_WEAPON

```c
// 0x208A1888007FC0E6 0x81FFB874
void SET_PED_DROPS_INVENTORY_WEAPON(Ped ped, Hash weaponHash, float xOffset, float yOffset, float zOffset, int ammoCount);
```

```
[16/06/2017 by ins1de] :  
Drops the weapon object from selected peds and turns it into a pickup.  
Offset defines the next position of the weapon, ammo count is the stored ammo in the pickup (if ammoCount == 0, pickup won't be created)  
Default offset values (freemode.c):  
if (is_ped_walking(player_ped_id()))  
        {  
            vVar1 = {0.6f, 4.7f, -0.1f};  
        }  
        else if (is_ped_sprinting(player_ped_id()))  
        {  
            vVar1 = {0.6f, 5.7f, -0.1f};  
        }  
        else if (is_ped_running(player_ped_id()))  
        {  
            vVar1 = {0.6f, 4.7f, -0.1f};  
        }  
        else  
        {  
            vVar1 = {0.4f, 4.7f, -0.1f};  
        }  
```

## Parameters
* **ped**: 
* **weaponHash**: 
* **xOffset**: 
* **yOffset**: 
* **zOffset**: 
* **ammoCount**: 

