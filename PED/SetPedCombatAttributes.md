---
ns: PED
---
## SET_PED_COMBAT_ATTRIBUTES

```c
// 0x9F7794730795E019 0x81D64248
void SET_PED_COMBAT_ATTRIBUTES(Ped ped, int attributeIndex, BOOL enabled);
```


These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta.
So far, these are the equivalents found:
```
enum CombatAttributes  
{
	BF_CanUseCover = 0,
	BF_CanUseVehicles = 1,
	BF_CanDoDrivebys = 2,
	BF_CanLeaveVehicle = 3,
	BF_CanFightArmedPedsWhenNotArmed = 5,
	BF_CanTauntInVehicle = 20,
	BF_AlwaysFight = 46,
	BF_IgnoreTrafficWhenDriving = 52,
	BF_FleesFromInvincibleOpponents = 63,
        BF_FreezeMovement = 292,  
        BF_PlayerCanUseFiringWeapons = 1424  
};
```
8 = ?  
9 = ?  
13 = ?  
14 ?  
Research thread: gtaforums.com/topic/833391-researchguide-combat-behaviour-flags/  

## Parameters
* **ped**: 
* **attributeIndex**: 
* **enabled**: 

