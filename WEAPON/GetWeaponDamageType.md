---
ns: WEAPON
---
## GET_WEAPON_DAMAGE_TYPE

```c
// 0x3BE0BB12D25FB305 0x013AFC13
int GET_WEAPON_DAMAGE_TYPE(Hash weaponHash);
```

```
0=unknown (or incorrect weaponHash)  
1= no damage (flare,snowball, petrolcan)  
2=melee  
3=bullet  
4=force ragdoll fall  
5=explosive (RPG, Railgun, grenade)  
6=fire(molotov)  
8=fall(WEAPON_HELI_CRASH)  
10=electric  
11=barbed wire  
12=extinguisher  
13=gas  
14=water cannon(WEAPON_HIT_BY_WATER_CANNON)  
```

## Parameters
* **weaponHash**: 

## Return value
