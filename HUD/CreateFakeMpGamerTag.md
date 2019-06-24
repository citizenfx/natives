---
ns: HUD
aliases: ["0xBFEFE3321A3F5015", "_CREATE_MP_GAMER_TAG"]
---
## CREATE_FAKE_MP_GAMER_TAG

```c
// 0xBFEFE3321A3F5015 0xF5CD2AA4
int CREATE_FAKE_MP_GAMER_TAG(Ped ped, char* username, BOOL pointedClanTag, BOOL isRockstarClan, char* clanTag, int clanFlag);
```

```
p0 was the return of NET_TO_PED in fm_mission_controler.  
p4 was always "".  
returns headDisplayId  
```

## Parameters
* **ped**: 
* **username**: 
* **pointedClanTag**: 
* **isRockstarClan**: 
* **clanTag**: 
* **clanFlag**: takes a number 0-5

## Return value
