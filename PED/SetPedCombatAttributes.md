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
	BF_CanUseDynamicStrafeDecisions = 4,
	BF_AlwaysFight = 5,
	_0x66BB9FCC = 6,
	_0x6837DA41 = 7,
	_0xB4A13A5A = 8,
	_0xEE326AAD = 9,
	_0x7DF2CCFA = 10,
	_0x0036D422 = 11,
	BF_BlindFireWhenInCover = 12,
	BF_Aggressive = 13,
	BF_CanInvestigate = 14,
	BF_HasRadio = 15,
	_0x6BDE28D1 = 16,
	BF_AlwaysFlee = 17,
	_0x7852797D = 18,
	_0x33497B95 = 19,
	BF_CanTauntInVehicle = 20,
	BF_CanChaseTargetOnFoot = 21,
	BF_WillDragInjuredPedsToSafety = 22,
	_0xCD7168B8 = 23,
	BF_UseProximityFiringRate = 24,
	_0x48F914F8 = 25,
	_0x2EA543D0 = 26,
	BF_PerfectAccuracy = 27,
	BF_CanUseFrustratedAdvance = 28,
	_0x3D131AC1 = 29,
	_0x3AD95F27 = 30,
	BF_MaintainMinDistanceToTarget = 31,
	_0xEAD68AD2 = 32,
	_0xA206C2E0 = 33,
	BF_CanUsePeekingVariations = 34,
	_0xA5715184 = 35,
	_0xD5265533 = 36,
	_0x2B84C2BF = 37,
	BF_DisableBulletReactions = 38,
	BF_CanBust = 39,
	_0xAA525726 = 40,
	BF_CanCommandeerVehicles = 41,
	BF_CanFlank = 42,
	BF_SwitchToAdvanceIfCantFindCover = 43,
	BF_SwitchToDefensiveIfInCover = 44,
	_0xEB4786A0 = 45,
	BF_CanFightArmedPedsWhenNotArmed = 46,
	_0xA08E9402 = 47,
	_0x952EAD7D = 48,
	BF_UseEnemyAccuracyScaling = 49,
	BF_CanCharge = 50,
	_0xDA8C2BD3 = 51,
	_0x6562F017 = 52,
	_0xA2C3D53B = 53,
	BF_AlwaysEquipBestWeapon = 54,
	BF_CanSeeUnderwaterPeds = 55,
	_0xF619486B = 56,
	_0x61EB63A3 = 57,
	BF_DisableFleeFromCombat = 58,
	_0x8976D12B = 59,
	BF_CanThrowSmokeGrenade = 60,
	BF_NonMissionPedsFleeFromThisPedUnlessArmed = 61,
	_0x5452A10C = 62,
	BF_FleesFromInvincibleOpponents = 63,
	BF_DisableBlockFromPursueDuringVehicleChase = 64,
	BF_DisableSpinOutDuringVehicleChase = 65,
	BF_DisableCruiseInFrontDuringBlockDuringVehicleChase = 66,
	_0x0B404731 = 67,
	BF_DisableReactToBuddyShot = 68,
	_0x7FFD6AEB = 69,
	_0x51F4AEF8 = 70,
	BF_PermitChargeBeyondDefensiveArea = 71,
	_0x63E0A8E2 = 72,
	_0xDF974436 = 73,
	_0x556C080B = 74,
	_0xA4D50035 = 75,
	BF_SetDisableShoutTargetPositionOnCombatStart = 76,
	BF_DisableRespondedToThreatBroadcast = 77,
	_0xCBB01765 = 78,
	_0x4F862ED4 = 79,
	_0xEF9C7C40 = 80,
	_0xE51B494F = 81,
	_0x054D0199 = 82,
	_0xD36BCE94 = 83,
	_0xFB11F690 = 84,
	_0xD208A9AD = 85,
	BF_AllowDogFighting = 86,
	_0x07A6E531 = 87,
	_0x34F9317B = 88,
	_0x4240F5A9 = 89,
	_0xEE129DBD = 90,
	_0x053AEAD9 = 91, 
};
```

The source for this enum is [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?game=gta5&build=2944#_0x0E8E7201).

## Parameters
* **ped**: The ped to set attributes to.
* **attributeIndex**: The attribute index to set.
* **enabled**: A boolean to enable/disable the attribute (true/false).

