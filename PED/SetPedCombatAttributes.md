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
	BF_FleeWhilstInVehicle = 6,
	BF_JustFollowInVehicle = 7,
	BF_Unused_3 = 8,
	BF_WillScanForDeadPeds = 9,
	BF_Unused_1 = 10,
	BF_JustSeekCover = 11,
	BF_BlindFireWhenInCover = 12,
	BF_Aggressive = 13,
	BF_CanInvestigate = 14,
	BF_HasRadio = 15,
	BF_Unused_2 = 16,
	BF_AlwaysFlee = 17,
	BF_ForceInjuredOnGround = 18,
	BF_DisableInjuredOnGround = 19,
	BF_CanTauntInVehicle = 20,
	BF_CanChaseTargetOnFoot = 21,
	BF_WillDragInjuredPedsToSafety = 22,
	BF_RequiresLosToShoot = 23,
	BF_UseProximityFiringRate = 24,
	BF_DisableSecondaryTarget = 25,
	BF_DisableEntryReactions = 26,
	BF_PerfectAccuracy = 27,
	BF_CanUseFrustratedAdvance = 28,
	BF_MoveToLocationBeforeCoverSearch = 29,
	BF_CanShootWithoutLOS = 30,
	BF_MaintainMinDistanceToTarget = 31,
	BF_IgnoreHatedPedsInFastMovingVehicles = 32,
	BF_UseProximityAccuracy = 33,
	BF_CanUsePeekingVariations = 34,
	BF_DisablePinnedDown = 35,
	BF_DisablePinDownOthers = 36,
	BF_ClearAreaSetDefensiveIfDefensiveAreaReached = 37,
	BF_DisableBulletReactions = 38,
	BF_CanBust = 39,
	BF_IgnoredByOtherPedsWhenWanted = 40,
	BF_CanCommandeerVehicles = 41,
	BF_CanFlank = 42,
	BF_SwitchToAdvanceIfCantFindCover = 43,
	BF_SwitchToDefensiveIfInCover = 44,
	BF_ClearPrimaryDefensiveAreaWhenReached = 45,
	BF_CanFightArmedPedsWhenNotArmed = 46,
	BF_EnableTacticalPointsWhenDefensive = 47,
	BF_DisableCoverArcAdjustments = 48,
	BF_UseEnemyAccuracyScaling = 49,
	BF_CanCharge = 50,
	BF_ClearAreaSetAdvanceIfDefensiveAreaReached = 51,
	BF_UseVehicleAttack = 52,
	BF_UseVehicleAttackIfVehicleHasMountedGuns = 53,
	BF_AlwaysEquipBestWeapon = 54,
	BF_CanSeeUnderwaterPeds = 55,
	BF_DisableAimAtAITargetsInHelis = 56,
	BF_DisableSeekDueToLineOfSight = 57,
	BF_DisableFleeFromCombat = 58,
	BF_DisableTargetChangesDuringVehiclePursuit = 59,
	BF_CanThrowSmokeGrenade = 60,
	BF_NonMissionPedsFleeFromThisPedUnlessArmed = 61,
	BF_ClearAreaSetDefensiveIfDefensiveCannotBeReached = 62,
	BF_FleesFromInvincibleOpponents = 63,
	BF_DisableBlockFromPursueDuringVehicleChase = 64,
	BF_DisableSpinOutDuringVehicleChase = 65,
	BF_DisableCruiseInFrontDuringBlockDuringVehicleChase = 66,
	BF_CanIgnoreBlockedLosWeighting = 67,
	BF_DisableReactToBuddyShot = 68,
	BF_PreferNavmeshDuringVehicleChase = 69,
	BF_AllowedToAvoidOffroadDuringVehicleChase = 70,
	BF_PermitChargeBeyondDefensiveArea = 71,
	BF_UseRocketsAgainstVehiclesOnly = 72,
	BF_DisableTacticalPointsWithoutClearLos = 73,
	BF_DisablePullAlongsideDuringVehicleChase = 74,
	BF_DisableShoutTargetPosition = 75,
	BF_SetDisableShoutTargetPositionOnCombatStart = 76,
	BF_DisableRespondedToThreatBroadcast = 77,
	BF_DisableAllRandomsFlee = 78,
	BF_WillGenerateDeadPedSeenScriptEvents = 79,
	BF_UseMaxSenseRangeWhenReceivingEvents = 80,
	BF_RestrictInVehicleAimingToCurrentSide = 81,
	BF_UseDefaultBlockedLosPositionAndDirection = 82,
	BF_RequiresLosToAim = 83,
	BF_CruiseAndBlockInVehicle = 84,
	BF_PreferAirCombatWhenInAircraft = 85,
	BF_AllowDogFighting = 86,
	BF_PreferNonAircraftTargets = 87,
	BF_PreferKnownTargetsWhenCombatClosestTarget = 88,
	BF_ForceCheckAttackAngleForMountedGuns = 89,
	BF_BlockFireForVehiclePassengerMountedGuns = 90,
	MAX_COMBAT_FLAGS = 91,
};
```

The source for this enum is [here](https://alexguirre.github.io/rage-parser-dumps/dump.html?build=3095&game=gta5#CCombatData__BehaviourFlags).

## Parameters
* **ped**: The ped to set attributes to.
* **attributeIndex**: The attribute index to set.
* **enabled**: A boolean to enable/disable the attribute (true/false).

