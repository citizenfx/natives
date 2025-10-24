---
ns: TASK
---

## TASK_COMBAT_PED

```c
// 0xF166E48407BAC484 0xCB0D8932
void TASK_COMBAT_PED(Ped ped, Ped targetPed, int combatFlags, int threatResponseFlags);
```

Makes the specified ped attack the target ped.

```cpp
enum eConfigFlags
{
  CF_NeverFight = 0,
  CF_NeverFlee = 1,
  CF_PreferFight = 2,
  CF_PreferFlee = 3,
  CF_CanFightArmedPedsWhenNotArmed = 4,
  CF_ThreatIsIndirect = 5,
  CF_DisableReactBeforeFlee = 6,
  CF_SetFriendlyException = 7,
  CF_FleeInVehicleAfterJack = 8,
  CF_ForceFleeIfNotArmed = 9,
};

enum eCombatFlags
{
  ComF_ForceFire = 0,
  ComF_WeaponAlreadyEquipped = 1,
  ComF_DrawWeaponWhenLosing = 2,
  ComF_TargetLost = 3,
  ComF_IsInDefensiveArea = 4,
  ComF_TargetChangedThisFrame = 5,
  ComF_WasCrouched = 6,
  ComF_UsingSecondaryTarget = 7,
  ComF_ExplosionValid = 8,
  ComF_RequiresOrder = 9,
  ComF_FiringAtTarget = 10,
  ComF_WasPlayingAimPoseTransitionLastFrame = 11,
  ComF_IsPlayingAimPoseTransition = 12,
  ComF_HasStarted = 13,
  ComF_UseFlinchAimIntro = 14,
  ComF_UseSurprisedAimIntro = 15,
  ComF_ArrestTarget = 16,
  ComF_DoingEarlyVehicleEntry = 17,
  ComF_ExitCombatRequested = 18,
  ComF_IsUsingFranticRuns = 19,
  ComF_UseFrustratedAdvance = 20,
  ComF_MeleeAnimPhaseSync = 21,
  ComF_MeleeImmediateThreat = 22,
  ComF_IsWaitingAtRoadBlock = 23,
  ComF_TaskAbortedForStaticMovement = 24,
  ComF_MoveToCoverStopped = 25,
  ComF_PreventChangingTarget = 26,
  ComF_DisableAimIntro = 27,
  ComF_TemporarilyForceFiringState = 28,
  ComF_UseSniperAimIntro = 29,
  ComF_QuitIfDriverJacked = 30
};

```

## Parameters

- **ped**:
- **targetPed**:
- **combatFlags**: See eCombatFlags.
- **threatResponseFlags**: See eConfigFlags.
