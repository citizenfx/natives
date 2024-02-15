---
ns: PED
---
## SET_PED_RESET_FLAG

```c
// 0xC1E8A365BF3B29F2 0xCFF6FF66
void SET_PED_RESET_FLAG(Ped ped, int flagId, BOOL doReset);
```

PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);

```c
enum ePedResetFlags {
    CPED_RESET_FLAG_FallenDown = 0, //decides whether to ik rotate body to match ground angle
    CPED_RESET_FLAG_DontRenderThisFrame = 1, //force ped to stop rendering this frame (for example - drive task can stop peds rendering inside buses)
    CPED_RESET_FLAG_IsDrowning = 2,

    CPED_RESET_FLAG_PedHitWallLastFrame = 3,
    CPED_RESET_FLAG_UsingMobilePhone = 4,

    CPED_RESET_FLAG_BlockMovementAnims = 5, //completely disable processing of on-foot movement anim blending for this frame
    CPED_RESET_FLAG_ZeroDesiredMoveBlendRatios = 6, //zero out all inputs to movement system this frame, causing ped to stop moving
    CPED_RESET_FLAG_DontChangeMbrInSimpleMoveDoNothing = 7, //If this is set, then CTaskSimpleMoveDoNothing will not reset desired moveblendratio to zero this frame.
    CPED_RESET_FLAG_FollowingRoute = 8, //whether this ped is following a route of some sort - used to let simplest goto task pull the ped back onto their current route segment
    CPED_RESET_FLAG_TakingRouteSplineCorner = 9, //whether the ped is cornering via a spline curve, which will take them off their route linesegment
    CPED_RESET_FLAG_Wandering = 10,
    CPED_RESET_FLAG_ProcessPhysicsTasks = 11, //do we need to call process physics for (main) tasks this frame
    CPED_RESET_FLAG_ProcessPreRender2 = 12, //do we need to call ProcessPreRender2 for tasks

    /* wants to get reset before CPedIntelligence::ProcessAfterProcCol() */
    CPED_RESET_FLAG_SetLastMatrixDone = 13,

    /* wants to get reset at start of CPedIntelligence::ProcessAfterPreRender() */
    CPED_RESET_FLAG_FiringWeapon = 14, //set when ped fires any weapon, so script can check the flag

    /* gets reset at the start of the peds intelligence update */
    CPED_RESET_FLAG_SearchingForCover = 15, //Set if the ped is likely to be searching for cover, used by the navmesh to load coverpoints around interested peds
    CPED_RESET_FLAG_KeepCoverPoint = 16, //Set if the ped wants to keep their current cover point this frame, otherwise it gets released
    CPED_RESET_FLAG_IsClimbing = 17, //If the ped is climbing, shimmying or on a ladder.  Stops ProcessProbes() from happening.
    CPED_RESET_FLAG_IsJumping = 18, //is the ped jumping.
    CPED_RESET_FLAG_IsLanding = 19, //is landing after being in the air
    CPED_RESET_FLAG_CullExtraFarAway = 20, //flag Ai can set to make ped get culled further away (used for roadblock cops, crimials...)

    /* wants to get reset at start of ResetPostMovement */
    CPED_RESET_FLAG_DontActivateRagdollFromAnyPedImpactReset = 21,
    CPED_RESET_FLAG_ForceScriptControlledRagdoll = 22,

    CPED_RESET_FLAG_TaskUseKinematicPhysics = 23, //For use by tasks - puts the ped into Kinematic physics mode. In this mode the ped will push other objects our of the way, but not be physically affected by them

    CPED_RESET_FLAG_TemporarilyBlockWeaponSwitching = 24, //Stop weapon switch processing

    CPED_RESET_FLAG_DoNotClampFootIk = 25, //Stop clamping the foot IK. Maybe the clamps should be parameters of the IK manager, but apparently that is to be refactored in future

    /* *************************************************************************************
       The following bit-flags are set by tasks during their processing, and are picked up
       by CPed::SelectCurrentAnimGroup() to prevent it from having query the task tree.      */

    CPED_RESET_FLAG_MoveBlend_bFleeTaskRunning = 26, //TASK_SMART_FLEE, or TASK_COMPLEX_LEAVE_CAR_AND_FLEE
    CPED_RESET_FLAG_IsAiming = 27, //TASK_GUN or TASK_USE_COVER
    CPED_RESET_FLAG_MoveBlend_bTaskComplexGunRunning = 28, //TASK_COMPLEX_GUN (only)
    CPED_RESET_FLAG_MoveBlend_bMeleeTaskRunning = 29, //TASK_COMPLEX_MELEE
    CPED_RESET_FLAG_MoveBlend_bCopSearchTaskRunning = 30, //TASK_COMPLEX_SEARCH_FOR_PED_ON_FOOT
    CPED_RESET_FLAG_PatrollingInVehicle = 31, //ped is patrolling in a vehicle, likely meaning they are swat or police

    CPED_RESET_FLAG_RaiseVelocityChangeLimit = 32,

    CPED_RESET_FLAG_DimTargetReticule = 33,

    CPED_RESET_FLAG_IsWalkingRoundPlayer = 34, //Whether this ped is walking around another ped (one frame latency)

    CPED_RESET_FLAG_GestureAnimsAllowed = 35,
  
    CPED_RESET_FLAG_VisemeAnimsBlocked = 36, //Blocks viseme anims from playing
    CPED_RESET_FLAG_AmbientAnimsBlocked = 37, //Blocks new ambient idles from starting.

    CPED_RESET_FLAG_KnockedToTheFloorByPlayer = 38,
    CPED_RESET_FLAG_RandomisePointsDuringNavigation = 39,
    CPED_RESET_FLAG_Prevent180SkidTurns = 40,

    CPED_RESET_FLAG_IsOnAssistedMovementRoute = 41,

    CPED_RESET_FLAG_ApplyVelocityDirectly = 42, //Should we apply the velocity directly to the physics collider or go through the force solver?

    CPED_RESET_FLAG_DisablePlayerLockon = 43,

    CPED_RESET_FLAG_ResetMoveGroupAfterRagdoll = 44, //If true, will reset the temp anim group when not ragdolling

    CPED_RESET_FLAG_DisablePedConstraints = 45, //Allow the ped to rotate around freely

    CPED_RESET_FLAG_DisablePlayerJumping = 46, //Disables player jumping if true. Reset in ResetPostPhysics, as it will be set via script
    CPED_RESET_FLAG_DisablePlayerVaulting = 47, //Disables player vaulting/climbing if true.

    CPED_RESET_FLAG_DisableAsleepImpulse = 48, //Disable the code that pushes peds which fall asleep in the air

    CPED_RESET_FLAG_ForcePostCameraAIUpdate = 49,
    CPED_RESET_FLAG_ForcePostCameraAnimUpdate = 50,
    CPED_RESET_FLAG_ePostCameraAnimUpdateUseZeroTimestep = 51,

    CPED_RESET_FLAG_CollideWithGlassRagdoll = 52,
    CPED_RESET_FLAG_CollideWithGlassWeapon = 53,

    CPED_RESET_FLAG_SyncDesiredHeadingToCurrentHeading = 54,

    CPED_RESET_FLAG_AllowUpdateIfNoCollisionLoaded = 55,
    CPED_RESET_FLAG_InternalWalkingRndPlayer = 56,

    CPED_RESET_FLAG_PlacingCharge = 57, //Setting Bomb (firing weapon is set also)
    CPED_RESET_FLAG_ScriptDisableSecondaryAnimationTasks = 58, //Disable upper body animtion tasks such as shove ped and open door anims

    CPED_RESET_FLAG_SearchingForClimb = 59,
    CPED_RESET_FLAG_SearchingForDoors = 60,

    CPED_RESET_FLAG_WanderingStoppedForOtherPed = 61,

    CPED_RESET_FLAG_SupressGunfireEvents = 62,
    CPED_RESET_FLAG_InfiniteStamina = 63, //Currently just for mounts, but could be expanded to anything with stamina

    CPED_RESET_FLAG_BlockWeaponReactionsUnlessDead = 64, // Stops ragdoll and nm behaviors triggering from weapon damage unless the ped has died.

    CPED_RESET_FLAG_ForcePlayerFiring = 65,

    CPED_RESET_FLAG_InCoverFacingLeft = 66, //set when exiting the cover state saying if we are facing left

    CPED_RESET_FLAG_ForcePeekFromCover = 67, //if set the ped will go into peeking if they are already in cover

    CPED_RESET_FLAG_NotAllowedToChangeCrouchState = 68, //if set the ped will not be allowed to change their crouch state

    CPED_RESET_FLAG_ForcePedToStrafe = 69, //forces a ped to strafe
    CPED_RESET_FLAG_ForceMeleeStrafingAnims = 70, //forces a ped to use the melee strafing anims when strafing

    CPED_RESET_FLAG_UseKinematicPhysics = 71, //To be used by scripts - puts the ped into Kinematic physics mode. In this mode the ped will push other objects our of the way, but not be physically affected by them

    CPED_RESET_FLAG_ClearLockonTarget = 72, // Clears the player's lockon target next frame
    CPED_RESET_FLAG_CanPedSeeHatedPedBeingUsed = 73, // Activates can ped see hated ped generating events even when blocking of non-temp events is on

    CPED_RESET_FLAG_InstantBlendToAim = 74, //Makes the ped performa an instant blend to aim if starting a gun task this frame

    CPED_RESET_FLAG_ForceImprovedIdleTurns = 75, //Forces the ped to use an improved idle turning system that should help him turn to face more quickly
    CPED_RESET_FLAG_HitPedWithWeapon = 76, //set when damage is inflicted by this ped on another ped

    CPED_RESET_FLAG_ForcePedToUseScripCamHeading = 77, //forces a ped to the scripted camera heading instead of gameplay

    CPED_RESET_FLAG_ProcessProbesWhenExtractingZ = 78, //makes the capsule physics push the ped out of the ground even when extracting z
    CPED_RESET_FLAG_KeepDesiredCoverPoint = 79, //should the ped keep their desired cover point this frame

    CPED_RESET_FLAG_HasProcessedCornering = 80, //whether the ped has already processed slowing down for this corner

    CPED_RESET_FLAG_StandingOnForkliftForks = 81, //Set when the ped standing capsule hits the forklift forks.
    CPED_RESET_FLAG_AimWeaponReactionRunning = 82, //ped is running the reaction task this frame

    CPED_RESET_FLAG_InContactWithFoliage = 83, //ped is in contact with GTA_FOLIAGE_TYPE bounds

    CPED_RESET_FLAG_ForceExplosionCollisions = 84, //ped will always collide with explosions, even when collision is off

    CPED_RESET_FLAG_IgnoreTargetsCoverForLOS = 85, //when checking LOS against targets this ped will ignore their cover (if the cover exists)

    CPED_RESET_FLAG_BlockAnimatedWeaponReactions = 86, //Ped should not play animated damager reactions while this flag is set

    CPED_RESET_FLAG_DisablePedCapsule = 87, //Removes the ped capsule from the physics simulation

    CPED_RESET_FLAG_DisableCrouchWhileInCover = 88, //Force the crouch flag to return true while in cover.

    CPED_RESET_FLAG_IncreasedAvoidanceRadius = 89, //Adds extra 2m onto the radius other peds use to avoid this ped during local steering.

    CPED_RESET_FLAG_UNUSED_REPLACE_ME = 90, //
    CPED_RESET_FLAG_ForceRunningSpeedForFragSmashing = 91, //Can be set by designers to force the ped to smash more easily through frags.

    CPED_RESET_FLAG_EnableMoverAnimationWhileAttached = 92, //While flagged, any mover animation will be applied to the offset of the attachment.
    CPED_RESET_FLAG_NoTimeDelayBeforeShot = 93, //While flagged, The time delay before a player can fire after aiming is 0
    CPED_RESET_FLAG_SearchingForAutoVaultClimb = 94, //inform climb code we are doing an autovault
    CPED_RESET_FLAG_ExtraLongWeaponRange = 95, //Extends the range of a peds weapons to 250m
    CPED_RESET_FLAG_ForcePlayerToEnterVehicleThroughDirectDoorOnly = 96, //Forces the player to only use direct access when entering vehicles
    CPED_RESET_FLAG_TaskCullExtraFarAway = 97, //Can be set by ai tasks on the main task tree to disable a ped getting cull from a vehicle.
    CPED_RESET_FLAG_IsVaulting = 98, //Set the entire time CTaskVault is running.
    CPED_RESET_FLAG_IsParachuting = 99, //Set the entire time CTaskParachute is running.
    CPED_RESET_FLAG_SuppressSlowingForCorners = 100, //If set this will prevent the ped from slowing down to take corners this frame
    CPED_RESET_FLAG_DisableProcessProbes = 101, //Disables processing of probes.
    CPED_RESET_FLAG_DisablePlayerAutoVaulting = 102,
    CPED_RESET_FLAG_DisableGaitReduction = 103,
    CPED_RESET_FLAG_ExitVehicleTaskFinishedThisFrame = 104,
    CPED_RESET_FLAG_RequiresLegIk = 105,
    CPED_RESET_FLAG_JayWalking = 106, //If set then the ped is jay walking and a vehicle is allowed to run him over.
    CPED_RESET_FLAG_UseBulletPenetration = 107, //Ped will use bullet penetration code.
    CPED_RESET_FLAG_ForceAimAtHead = 108, //Force all attackers to target the head of this ped
    CPED_RESET_FLAG_IsInStationaryScenario = 109, //In a scenario and not moving
    CPED_RESET_FLAG_TemporarilyBlockWeaponEquipping = 110, //Stop weapon equipping
    CPED_RESET_FLAG_CoverOutroRunning = 111, //TASK_AIM_GUN_FROM_COVER_OUTRO
    CPED_RESET_FLAG_DisableSeeThroughChecksWhenTargeting = 112, // Any targeting LoS checks will fail if any materials with 'see through' materials found.
    CPED_RESET_FLAG_PuttingOnHelmet = 113, // putting on helmet
    CPED_RESET_FLAG_AllowPullingPedOntoRoute = 114, // allows goto task to apply heading in order to pull a ped back onto their route
    CPED_RESET_FLAG_ApplyAnimatedVelocityWhilstAttached = 115, //Allows attachment offsets to be updated from animated velocities
    CPED_RESET_FLAG_AICoverEntryRunning = 116, //TASK_ENTER_COVER : State_PlayAIEntryAnim
    CPED_RESET_FLAG_ResponseAfterScenarioPanic = 117, //The ped is entering threat response after panic exiting a scenario.
    CPED_RESET_FLAG_IsNearDoor = 118, //Ped is near a non-vehicle door
    CPED_RESET_FLAG_DisableTorsoSolver = 119,
    CPED_RESET_FLAG_PanicInVehicle = 120,
    CPED_RESET_FLAG_DisableDynamicCapsuleRadius = 121, //Turn off dynamic adjustments to ped capsules
    CPED_RESET_FLAG_IsRappelling = 122, //Is currently in a rappel task
    CPED_RESET_FLAG_SkipReactInReactAndFlee = 123, //When this ped goes to ThreatResponse, play the flee transition but not the reaction clip if fleeing.
    CPED_RESET_FLAG_CannotBeTargeted = 124, //Will prevent this ped from being a part of any other peds target list
    CPED_RESET_FLAG_IsFalling = 125, //Ped is in pure fall state (i.e. no parachuting, landing etc included
    CPED_RESET_FLAG_ForceInjuryAfterStunned = 126, //Forces this ped to the injured state after being stunned
    CPED_RESET_FLAG_HurtThisFrame = 127, //The ped has entered the hurt state this frame
    CPED_RESET_FLAG_BlockWeaponFire = 128, //Prevent the ped from shooting a weapon
    CPED_RESET_FLAG_ExpandPedCapsuleFromSkeleton = 129, //Set the ped capsule radius based on skeleton
    CPED_RESET_FLAG_DisableWeaponLaserSight = 130, //Toggle the weapon laser sight off for this frame
    CPED_RESET_FLAG_PedExitedVehicleThisFrame = 131, //Set when ped gets set out of vehicle
    CPED_RESET_FLAG_SearchingForDropDown = 132, //Ped is seatching for drop down
    CPED_RESET_FLAG_UseTighterTurnSettings = 133, //Ped should use tighter turn settings in human locomotion motion task
    CPED_RESET_FLAG_DisableArmSolver = 134, //Disable the arm solver this frame
    CPED_RESET_FLAG_DisableHeadSolver = 135, //
    CPED_RESET_FLAG_DisableLegSolver = 136, //
    CPED_RESET_FLAG_DisableTorsoReactSolver = 137, //
    CPED_RESET_FLAG_ForcePreCameraAIUpdate = 138,
    CPED_RESET_FLAG_TasksNeedProcessMoveSignalCalls = 139, //Set when peds require calls to ProcessMoveSignals(), for AI timeslicing to work with Move
    CPED_RESET_FLAG_ShootFromGround = 140, //
    CPED_RESET_FLAG_NoCollisionMovementMode = 141, //Set when a ped is moving in an area where collisions with fixed geometry are unlikely.  The ped's physics will not be forced to activate.
    CPED_RESET_FLAG_IsNearLaddder = 142, //Ped is near top of a ladder
    CPED_RESET_FLAG_SkipAimingIdleIntro = 143, //
    CPED_RESET_FLAG_IgnoredByAutoOpenDoors = 144, //Set this for a ped to be ignored by the auto opened doors when checking to see if the door should be opened.
    CPED_RESET_FLAG_BlockIkWeaponReactions = 145, //Ped should not play Ik damager reactions while this flag is set
    CPED_RESET_FLAG_FirstPhysicsUpdate = 146, //Ped was just created this frame
    CPED_RESET_FLAG_SpawnedThisFrameByAmbientPopulation = 147, //Ped was spawned this frame
    CPED_RESET_FLAG_DisableRootSlopeFixupSolver = 148, //
    CPED_RESET_FLAG_SuspendInitiatedMeleeActions = 149, //Temporarily suspend any melee actions this frame (does not include hit reactions). Use PCF_DisableMelee to turn it off completely
    CPED_RESET_FLAG_SuppressInAirEvent = 150, //Prevents ped from getting the in air event the next frame
    CPED_RESET_FLAG_AllowTasksIncompatibleWithMotion = 151, //If set, ped will skip CheckTasksAreCompatibleWithMotion
    CPED_RESET_FLAG_IsEnteringOrExitingVehicle = 152, //TASK_ENTER_VEHICLE or TASK_EXIT_VEHICLE
    CPED_RESET_FLAG_PlayerOnHorse = 153, //TASK_PLAYER_ON_HORSE
    CPED_RESET_FLAG_HasGunTaskWithAimingState = 154, //Ped is running TASK_GUN and task's state is State_Aim
    CPED_RESET_FLAG_SuppressLethalMeleeActions = 155, //This will suppress any melee action that is considered lethal (RA_IS_LETHAL, defined in action_table.meta)
    CPED_RESET_FLAG_InstantBlendToAimFromScript = 156, //
    CPED_RESET_FLAG_IsStillOnBicycle = 157, //
    CPED_RESET_FLAG_IsSittingAndCycling = 158, //
    CPED_RESET_FLAG_IsStandingAndCycling = 159, //
    CPED_RESET_FLAG_IsDoingCoverAimOutro = 160, //
    CPED_RESET_FLAG_ApplyCoverWeaponBlockingOffsets = 161, //
    CPED_RESET_FLAG_IsInLowCover = 162, //
    CPED_RESET_FLAG_AmbientIdleAndBaseAnimsBlocked = 163, //Blocks ambient idles and base animations from playing.
    CPED_RESET_FLAG_UseAlternativeWhenBlock = 164, //If set, ped will use alternative aiming/firing anims
    CPED_RESET_FLAG_ForceLowLodWaterCheck = 165, //If set, the ped will always force probe for being in water when in low LOD mode.
    CPED_RESET_FLAG_MakeHeadInvisible = 166, //If set, scale the head of the ped to 0.001
    CPED_RESET_FLAG_NoAutoRunWhenFiring = 167, //Don't auto run when NoAutoRunWhenFiring is set.
    CPED_RESET_FLAG_PermitEventDuringScenarioExit = 168, //Ignore certain aspects (FOV checks, etc) of AffectsPedCore() on some events while the ped is playing a scenario exit.
    CPED_RESET_FLAG_DisableSteeringAroundVehicles = 169, // Enables/disables the low-level steering behaviour around vehicles
    CPED_RESET_FLAG_DisableSteeringAroundPeds = 170, // Enables/disables the low-level steering behaviour around peds
    CPED_RESET_FLAG_DisableSteeringAroundObjects = 171, // Enables/disables the low-level steering behaviour around objects
    CPED_RESET_FLAG_DisableSteeringAroundNavMeshEdges = 172, // Enables/disables the low-level steering behaviour around nav mesh edges
    CPED_RESET_FLAG_WantsToEnterVehicleFromCover = 173, //
    CPED_RESET_FLAG_WantsToEnterCover = 174, //
    CPED_RESET_FLAG_WantsToEnterVehicleFromAiming = 175, //
    CPED_RESET_FLAG_CapsuleBeingPushedByVehicle = 176, //
    CPED_RESET_FLAG_DisableTakeOffParachutePack = 177, //
    CPED_RESET_FLAG_IsCallingPolice = 178, //
    CPED_RESET_FLAG_ForceCombatTaunt = 179, //Forces a combat taunt for peds using the insult special ability.
    CPED_RESET_FLAG_IgnoreCombatTaunts = 180, //
    CPED_RESET_FLAG_SkipAiUpdateProcessControl = 181, //True if we've already run this ped's AI and can skip it from within ProcessControl
    CPED_RESET_FLAG_OverridePhysics = 182, //A reset flag that disables collision and gravity on the ped and drives entity positions and rotations directly, rather than going through the physics update.
    CPED_RESET_FLAG_WasPhysicsOverridden = 183, //True if physics was overriden during the last update.
    CPED_RESET_FLAG_BlockWeaponHoldingAnims = 184, //Block any onfoot weapon holding anims.
    CPED_RESET_FLAG_DisableMoveTaskHeadingAdjustments = 185, //True if the ped's movement task should not adjust the heading of the ped.
    CPED_RESET_FLAG_DisableBodyLookSolver = 186, //
    CPED_RESET_FLAG_PreventAllMeleeTakedowns = 187, //Will temporarily prevent any takedown from being performed on this ped
    CPED_RESET_FLAG_PreventFailedMeleeTakedowns = 188, //Will temporarily prevent any failed takedowns from being performed on this ped
    CPED_RESET_FLAG_IsPedalling = 189, //
    CPED_RESET_FLAG_UseTighterAvoidanceSettings = 190, //Ped should use tighter avoidance settings in navigation task
    CPED_RESET_FLAG_IsHigherPriorityClipControllingPed = 191, //True if the active task on the main task tree is taking responsibility for the mover track
    CPED_RESET_FLAG_VehicleCrushingRagdoll = 192, //Set to true if a vehicle is pressing downward on the ragdoll
    CPED_RESET_FLAG_OnActivationUpdate = 193, //Ped was just activated this frame
    CPED_RESET_FLAG_ForceMotionStateLeaveDesiredMBR = 194, //Set this to disable setting the desired move blendratio when forcing the motion state. Usefull for forcing a flee start, etc
    CPED_RESET_FLAG_DisableDropDowns = 195, //Disable drop downs for this ped
    CPED_RESET_FLAG_InContactWithBIGFoliage = 196, //ped is in contact with GTA_FOLIAGE_TYPE bounds that are large and the player can be hidden
    CPED_RESET_FLAG_DisableTakeOffScubaGear = 197, //
    CPED_RESET_FLAG_DisableCellphoneAnimations = 198, //tells taskmobile phone to Blends out move network and prevents it from blending in
    CPED_RESET_FLAG_IsExitingVehicle = 199, //TASK_EXIT_VEHICLE
    CPED_RESET_FLAG_DisableActionMode = 200, //Disables combat anims for ped
    CPED_RESET_FLAG_EquippedWeaponChanged = 201, //Equipped weapon changed this frame
    CPED_RESET_FLAG_TouchingOverhang = 202, //Some part appears to be contrained downwards
    CPED_RESET_FLAG_TooSteepForPlayer = 203, //We're standing on something flagged too steep for the player to stand on
    CPED_RESET_FLAG_BlockSecondaryAnim = 204, //Block any secondary scripted task animations playing on this ped
    CPED_RESET_FLAG_IsInCombat = 205, //This ped is running the combat task
    CPED_RESET_FLAG_UseHeadOrientationForPerception = 206, //Will use the ped's head orientation for perception tests
    CPED_RESET_FLAG_IsDoingDriveby = 207, //This ped is running a driveby gun or projectile task
    CPED_RESET_FLAG_IsEnteringCover = 208, //This ped is running a cover entry task
    CPED_RESET_FLAG_ForceMovementScannerCheck = 209, //Set to make CStaticMovementScanner::Scan() check for collisions as if we were moving
    CPED_RESET_FLAG_DisableJumpRagdollOnCollision = 210, //If true, the player will no longer auto-ragdoll when colliding with objects, peds, etc. while jumping
    CPED_RESET_FLAG_IsBeingMeleeHomedByPlayer = 211, //Set on the target ped in melee if the player is homing towards them
    CPED_RESET_FLAG_ShouldLaunchBicycleThisFrame = 212, //This ped should launch the bicycle this frame
    CPED_RESET_FLAG_CanDoBicycleWheelie = 213, //This ped can do a bicycle wheelie
    CPED_RESET_FLAG_ForceProcessPhysicsUpdateEachSimStep = 214, //If true, ProcessPhysics() will execute completely for each physics simulation step
    CPED_RESET_FLAG_DisablePedCapsuleMapCollision = 215, //Disables collision between the ped capsule and the map (usefull in cases where the entity position is being tightly controlled outside of physics, e.g. by an animation)
    CPED_RESET_FLAG_DisableSeatShuffleDueToInjuredDriver = 216, //If true, motion in vehicle task won't shuffle to the driver seat just because the driver is injured
    CPED_RESET_FLAG_DisableParachuting = 217, //
    CPED_RESET_FLAG_ProcessPostMovement = 218, //do we need to call ProcessPostMovement for tasks
    CPED_RESET_FLAG_ProcessPostCamera = 219, //do we need to call ProcessPostCamera for tasks
    CPED_RESET_FLAG_ProcessPostPreRender = 220, //do we need to call ProcessPostPreRender for tasks
    CPED_RESET_FLAG_PreventBicycleFromLeaningOver = 221, //
    CPED_RESET_FLAG_KeepParachutePackOnAfterTeleport = 222, //
    CPED_RESET_FLAG_DontRaiseFistsWhenLockedOn = 223, //
    CPED_RESET_FLAG_PreferMeleeBodyIkHitReaction = 224,  //This will prefer all melee hit reactions to use body ik hit reactions if ragdoll is not selected
    CPED_RESET_FLAG_ProcessPhysicsTasksMotion = 225, //do we need to call process physics for motion tasks this frame
    CPED_RESET_FLAG_ProcessPhysicsTasksMovement = 226, //do we need to call process physics for movement tasks this frame
    CPED_RESET_FLAG_DisableFriendlyGunReactAudio = 227, //If set, disables friendly responses to gunshots/being aimed at.
    CPED_RESET_FLAG_DisableAgitationTriggers = 228, //
    CPED_RESET_FLAG_ForceForwardTransitionInReactAndFlee = 229, //If set, force CTaskReactAndFlee to use a forward facing flee transition
    CPED_RESET_FLAG_IsEnteringVehicle = 230, //TASK_ENTER_VEHICLE
    CPED_RESET_FLAG_DoNotSkipNavMeshTrackerUpdate = 231, //If set we will not allow the NavMeshTracker update to be skipped this frame.
    CPED_RESET_FLAG_RagdollOnVehicle = 232, //Set to true when the ragdoll is lying on top of a vehicle (note- hands, feet, forearms and shins are not included in the test)
    CPED_RESET_FLAG_BlockRagdollActivationInVehicle = 233, //
    CPED_RESET_FLAG_DisableNMForRiverRapids = 234, //If set, disable NM reactions to fast moving water
    CPED_RESET_FLAG_IsInWrithe = 235, //If set, the ped is on the ground writhing and might start shooting from ground
    CPED_RESET_FLAG_PreventGoingIntoStillInVehicleState = 236, //If set, the ped will not go into the still in vehicle pose
    CPED_RESET_FLAG_UseFastEnterExitVehicleRates = 237, //If set, the ped will get in and out of vehicles faster
    CPED_RESET_FLAG_DisableGroundAttachment = 238, //If set, the ped won't attach to a ground physical when his physics disables (useful for cutscenes, etc)
    CPED_RESET_FLAG_DisableAgitation = 239, //
    CPED_RESET_FLAG_DisableTalk = 240, //
    CPED_RESET_FLAG_InterruptedToQuickStartEngine = 241, //
    CPED_RESET_FLAG_PedEnteredFromLeftEntry = 242, //
    CPED_RESET_FLAG_IsDiving = 243, //
    CPED_RESET_FLAG_DisableVehicleImpacts = 244, //
    CPED_RESET_FLAG_DeepVehicleImpacts = 245, //
    CPED_RESET_FLAG_DisablePedCapsuleControl = 246, //
    CPED_RESET_FLAG_UseProbeSlopeStairsDetection = 247, //
    CPED_RESET_FLAG_DisableVehicleDamageReactions = 248, //
    CPED_RESET_FLAG_DisablePotentialBlastReactions = 249, //
    CPED_RESET_FLAG_OnlyAllowLeftArmDoorIk = 250, //
    CPED_RESET_FLAG_OnlyAllowRightArmDoorIk = 251, //
    CPED_RESET_FLAG_ForceProcessPedStandingUpdateEachSimStep = 252, //When set, ProcessPedStanding will get called for each physics step.
    CPED_RESET_FLAG_DisableFlashLight = 253, //When set, the flash light on a Ai weapon will be turned off.
    CPED_RESET_FLAG_DoingCombatRoll = 254, //When set, the ped is doing a combat roll
    CPED_RESET_FLAG_DisableBodyRecoilSolver = 255, //
    CPED_RESET_FLAG_CanAbortExitForInAirEvent = 256, //When set, the ped can abort the exit vehicle anim to go into fall
    CPED_RESET_FLAG_DisableSprintDamage = 257, //
    CPED_RESET_FLAG_ForceEnableFlashLightForAI = 258, //When set, the ai ped will enable their flash light
    CPED_RESET_FLAG_IsDoingCoverAimIntro = 259, //
    CPED_RESET_FLAG_IsAimingFromCover = 260, //
    CPED_RESET_FLAG_WaitingForCompletedPathRequest = 261, //This ped is waiting for a path request which is now complete, so their tasks must be updated this frame
    CPED_RESET_FLAG_DisableCombatAudio = 262,
    CPED_RESET_FLAG_DisableCoverAudio = 263,
    CPED_RESET_FLAG_PreventBikeFromLeaning = 264, //
    CPED_RESET_FLAG_InCoverTaskActive = 265, //
    CPED_RESET_FLAG_EnableSteepSlopePrevention = 266, //Pushes the ped through the same steep slope tolerances in TaskMotionBase that the player encounters
    CPED_RESET_FLAG_InsideEnclosedSearchRegion = 267, 
    CPED_RESET_FLAG_JumpingOutOfVehicle = 268, 
    CPED_RESET_FLAG_IsTuckedOnBicycleThisFrame = 269, 
    CPED_RESET_FLAG_ProcessPostMovementTimeSliced = 270, //Parallel flag to ProcessPostMovement, except this is reset in PreTask(), meaning it stays consistent across timeslicing.
    CPED_RESET_FLAG_EnablePressAndReleaseDives = 271, 
    CPED_RESET_FLAG_OnlyExitVehicleOnButtonRelease = 272, 
    CPED_RESET_FLAG_IsGoingToStandOnExitedVehicle = 273, 
    CPED_RESET_FLAG_BlockRagdollFromVehicleFallOff = 274, 
    CPED_RESET_FLAG_DisableTorsoVehicleSolver = 275, //
    CPED_RESET_FLAG_IsExitingUpsideDownVehicle = 276, //
    CPED_RESET_FLAG_IsExitingOnsideVehicle = 277, //
    CPED_RESET_FLAG_IsExactStopping = 278, //
    CPED_RESET_FLAG_IsExactStopSettling = 279, //
    CPED_RESET_FLAG_IsTrainCrushingRagdoll = 280, //
    CPED_RESET_FLAG_OverrideHairScale = 281, //Scales the ped's hair down to the specified value
    CPED_RESET_FLAG_ConsiderAsPlayerCoverThreatWithoutLOS = 282, //Considered as a threat as part of player cover search even if they can't see the player
    CPED_RESET_FLAG_BlockCustomAIEntryAnims = 283, //
    CPED_RESET_FLAG_IgnoreVehicleEntryCollisionTests = 284, //
    CPED_RESET_FLAG_StreamActionModeAnimsIfDisabled = 285, //Stream action mode anims even if action mode is disabled
    CPED_RESET_FLAG_ForceUpdateRagdollMatrix = 286, //Ped requires ragdoll matrix update next frame.
    CPED_RESET_FLAG_PreventGoingIntoShuntInVehicleState = 287, //If set, the ped will not go into the shunt in vehicle pose
    CPED_RESET_FLAG_DisableIndependentMoverFrame = 288, 
    CPED_RESET_FLAG_DoingDrivebyOutro = 289, 
    CPED_RESET_FLAG_BeingElectrocuted = 290, 
    CPED_RESET_FLAG_DisableUnarmedDrivebys = 291, 
    CPED_RESET_FLAG_TalkingToPlayer = 292, 
    CPED_RESET_FLAG_DontActivateRagdollFromPlayerPedImpactReset = 293, //Block ragdoll activations from animated player bumps
    CPED_RESET_FLAG_DontActivateRagdollFromAiRagdollImpactReset = 294, //Block ragdoll activations from collisions with an ai ragdoll
    CPED_RESET_FLAG_DontActivateRagdollFromPlayerRagdollImpactReset = 295, //Block ragdoll activations from collisions with a player ragdoll
    CPED_RESET_FLAG_DisableVisemeBodyAdditive = 296, //If set, prevents visemes from playing any additive body animations
    CPED_RESET_FLAG_CapsuleBeingPushedByPlayerCapsule = 297, //Set when the player capsule is pushing up against this peds capsule
    CPED_RESET_FLAG_ForceActionMode = 298, 
    CPED_RESET_FLAG_ForceUnarmedActionMode = 299, 
    CPED_RESET_FLAG_UsingMoverExtraction = 300, //Set when the players capsule is getting repositioned each frame relative to an anim and origin
    CPED_RESET_FLAG_BeingJacked = 301, 
    CPED_RESET_FLAG_EnableVoiceDrivenMouthMovement = 302, //If set, turn on the voice driven mouth movement
    CPED_RESET_FLAG_IsReloading = 303, 
    CPED_RESET_FLAG_UseTighterEnterVehicleSettings = 304, //Ped should use tighter (shorter) settings for entering vehicles
    CPED_RESET_FLAG_InRaceMode = 305, //Set when the player is in the race mode.
    CPED_RESET_FLAG_DisableAmbientMeleeMoves = 306, //Disable ambient (initial) melee moves
    CPED_RESET_FLAG_ForceBuoyancyProcessingIfAsleep = 307, //
    CPED_RESET_FLAG_AllowSpecialAbilityInVehicle = 308, //Allows the player to trigger the special ability while in a vehicle
    CPED_RESET_FLAG_DisableInVehicleActions = 309, //Prevents ped from doing in vehicle actions such as starting engine, hotwiring, closing door etc.
    CPED_RESET_FLAG_ForceInstantSteeringWheelIkBlendIn = 310, //Forces ped to blend in steering wheel ik instantly rather than over time.
    CPED_RESET_FLAG_IgnoreThreatEngagePlayerCoverBonus = 311, //Ignores the bonus score for selecting cover that the player can engage the enemy at
    CPED_RESET_FLAG_Block180Turns = 312, //Blocks triggering of 180 turns in human locomotion this frame.
    CPED_RESET_FLAG_DontCloseVehicleDoor = 313, //Prevents the ped from closing the vehicle door of the car they're in
    CPED_RESET_FLAG_SkipExplosionOcclusion = 314, //Map collision will not block this ped from being hit by explosions
    CPED_RESET_FLAG_ProcessPhysicsTasksTimeSliced = 315, //Parallel flag to ProcessPhysicsTasks, except this is reset in PreTask(), meaning it stays consistent across timeslicing.
    CPED_RESET_FLAG_MeleeStrikeAgainstNonPed = 316, //Set when the ped has performed a melee strike and hit any non ped material
    CPED_RESET_FLAG_IgnoreNavigationForDoorArmIK = 317, //We will not attempt to walk around doors when using arm IK
    CPED_RESET_FLAG_DisableAimingWhileParachuting = 318, //Disable aiming while parachuting
    CPED_RESET_FLAG_DisablePedCollisionWithPedEvent = 319, //Disable hit reaction due to colliding with a ped
    CPED_RESET_FLAG_IgnoreVelocityWhenClosingVehicleDoor = 320, //Will ignore the vehicle speed threshold and close the door anyway
    CPED_RESET_FLAG_SkipOnFootIdleIntro = 321,
    CPED_RESET_FLAG_DontWalkRoundObjects = 322, //Don't walk round objects that we collide with whilst moving
    CPED_RESET_FLAG_DisablePedEnteredMyVehicleEvents = 323,
    CPED_RESET_FLAG_CancelLeftHandGripIk = 324, //Call ProcessLeftHandGripIk() to cancel left hand grip IK, at the right time of the frame
    CPED_RESET_FLAG_ResetMovementStaticCounter = 325, //Will keep reset the static counter when this is set
    CPED_RESET_FLAG_DisableInVehiclePedVariationBlocking = 326, //Will allow ped variations to be rendered in vehicles, even if marked otherwise
    CPED_RESET_FLAG_ReduceEffectOfVehicleRamControlLoss = 327, //When on a mission this reset flag will slightly reduce the amount of time the player loses control of their vehicle when hit by an AI ped
    CPED_RESET_FLAG_DisablePlayerMeleeFriendlyAttacks = 328, //Another flag to disable friendly attack from the player. Set on the opponent you would like it to be disabled on.
    CPED_RESET_FLAG_MotionPedDoPostMovementIndependentMover = 329,
    CPED_RESET_FLAG_IsMeleeTargetUnreachable = 330, //Set when the melee target has been deemed unreachable (AI only)
    CPED_RESET_FLAG_DisableAutoForceOutWhenBlowingUpCar = 331,
    CPED_RESET_FLAG_ThrowingProjectile = 332,
    CPED_RESET_FLAG_OverrideHairScaleLarger = 333, //Scales the ped's hair up to the specified value
    CPED_RESET_FLAG_DisableDustOffAnims = 334, //Disable amient dust off animations
    CPED_RESET_FLAG_DisableMeleeHitReactions = 335, //This ped will refrain from ever performing a melee hit reaction
    CPED_RESET_FLAG_VisemeAnimsAudioBlocked = 336, //Blocks viseme anims audio from playing
    CPED_RESET_FLAG_AllowHeadPropInVehicle = 337, //This overrides PV_FLAG_NOT_IN_CAR set on any head prop and stops it from being removed when getting into the vehicle
    CPED_RESET_FLAG_IsInVehicleChase = 338,
    CPED_RESET_FLAG_DontQuitMotionAiming = 339,
    CPED_RESET_FLAG_SetLastBoundMatricesDone = 340, //Ensure that the last bound matrices are only updated once per frame
    CPED_RESET_FLAG_PreserveAnimatedAngularVelocity = 341, //Don't allow the locomotion task to adjust angular velocity coming from animation
    CPED_RESET_FLAG_OpenDoorArmIK = 342, //Set if the ped should enable open door arm IK
    CPED_RESET_FLAG_UseTighterTurnSettingsForScript = 343, //Script set flag, to force use of tighter turn settings in locomotion task
    CPED_RESET_FLAG_ForcePreCameraProcessExternallyDrivenDOFs = 344, //Set if the ped should process externally driven dofs before the pre-camera ai update
    CPED_RESET_FLAG_LadderBlockingMovement = 345, //Ped is waiting for ladder and blocking movement to prevent falling off
    CPED_RESET_FLAG_DisableVoiceDrivenMouthMovement = 346, //If set, turn off the voice driven mouth movement (overrides EnableVoiceDrivenMouthMovement)
    CPED_RESET_FLAG_SteerIntoSkids = 347, //If set, steer into skids while driving
    CPED_RESET_FLAG_AllowOpenDoorIkBeforeFullMovement = 348, //When set, code will ignore the logic that requires the ped to be in CTaskHumanLocomotion::State_Moving
    CPED_RESET_FLAG_AllowHomingMissileLockOnInVehicle = 349, //When set, code will bypass rel settings and allow a homing lock on to this ped when they are in a vehicle
    CPED_RESET_FLAG_AllowCloneForcePostCameraAIUpdate = 350,
    CPED_RESET_FLAG_DisableHighHeels = 351, //Force the high heels DOF to be 0 
    CPED_RESET_FLAG_BreakTargetLock = 352, //Force lock on to break for this ped 
    CPED_RESET_FLAG_DontUseSprintEnergy = 353, //Player does not get tired when sprinting 
    CPED_RESET_FLAG_DontChangeHorseMbr = 354, //Similar to CPED_RESET_FLAG_DontChangeMbrInSimpleMoveDoNothing, but for horses.
    CPED_RESET_FLAG_DisableMaterialCollisionDamage = 355, //Don't be damaged by touching dangerous material (e.g. electic generator)
    CPED_RESET_FLAG_DisableMPFriendlyLockon = 356, //Don't target friendly players in MP
    CPED_RESET_FLAG_DisableMPFriendlyLethalMeleeActions = 357, //Don't melee kill friendly players in MP
    CPED_RESET_FLAG_IfLeaderStopsSeekCover = 358, //If our leader stops, try and seek cover if we can
    CPED_RESET_FLAG_ProcessPostPreRenderAfterAttachments = 359, //do we need to call CPED_RESET_FLAG_ProcessPostPreRenderAfterAttachments for tasks
    CPED_RESET_FLAG_DoDamageCoughFacial = 360,
    CPED_RESET_FLAG_IsUsingJetpack = 361, //Is ped currently using jetpack. e.g. in air
    CPED_RESET_FLAG_UseInteriorCapsuleSettings = 362, //Use Interior capsule settings
    CPED_RESET_FLAG_IsClosingVehicleDoor = 363, //Ped is closing a vehicle door
    CPED_RESET_FLAG_DisableIdleExtraHeadingChange = 364, //Disable lerping the ped towards the desired heading in the locomotion idle
    CPED_RESET_FLAG_OnlySelectVehicleWeapons = 365, //Only allows vehicle weapons to be selected in CPedWeaponSelector::SelectWeapon
    CPED_RESET_FLAG_IsWarpingIntoVehicleMP = 366, //Set in CTaskEnterVehicle::SetPedInSeat_OnEnter if ped is warping into a vehicle in multiplayer
    CPED_RESET_FLAG_RemoveHelmet = 367, //Forces a ped to remove its helmet.
    CPED_RESET_FLAG_IsRemovingHelmet = 368, //Returns true if ped is removing its helmet.
    CPED_RESET_FLAG_GestureAnimsBlockedFromScript = 369,
    CPED_RESET_FLAG_NeverRagdoll = 370, //Disable all attempts by this ped to ragdoll.
    CPED_RESET_FLAG_DisableWallHitAnimation = 371, //Disable stuck wall hit animation for the ped this frame.
    CPED_RESET_FLAG_PlayAgitatedAnimsInVehicle = 372, //Play agitated anims in vehicle - overrides normal sit idle
    CPED_RESET_FLAG_IsSeatShuffling = 373, //Returns true if ped is shuffling seat.
    CPED_RESET_FLAG_IsThrowingProjectileWhileAiming = 374, //True if we are running TASK_AIM_AND_THROW_PROJECTILE as a subtask of TASK_AIM_GUN_ON_FOOT.
    CPED_RESET_FLAG_DisableProjectileThrowsWhileAimingGun = 375, //Set by script command DISABLE_PLAYER_THROW_GRENADE_WHILE_USING_GUN.
    CPED_RESET_FLAG_AllowControlRadioInAnySeatInMP = 376, //Allows ped in any seat to control radio in multiplayer.
    CPED_RESET_FLAG_DisableSpycarTransformation = 377, //Blocks ped from manually transforming spycar to/from car/sub modes.
    CPED_RESET_FLAG_BlockQuadLocomotionIdleTurns = 378, //Prevent CTaskQuadLocomotion from blending in idle turns, regardless of desired/currenting heading differential.
    CPED_RESET_FLAG_BlockHeadbobbingToRadio = 379, //Blocks ped from headbobbing to radio music in vehicles.
    CPED_RESET_FLAG_PlayFPSIdleFidgets = 380, //Allows us to load and play idle fidgets in TaskMotionAiming
    CPED_RESET_FLAG_ForceExtraLongBlendInForPedSkipIdleCoverTransition = 381, //When putting a ped directly into cover, the ped will blend in the new cover anims slowly to prevent a pose pop
    CPED_RESET_FLAG_BlendingOutFPSIdleFidgets = 382, //True if FPS idle fidgets are blending out
    CPED_RESET_FLAG_DisableMotionBaseVelocityOverride = 383,    
    CPED_RESET_FLAG_FPSSwimUseSwimMotionTask = 384, //Set to true when we are pressing forward on the left stick in FPS mode so we switch from Aiming to Swimmimg/Diving motion tasks
    CPED_RESET_FLAG_FPSSwimUseAimingMotionTask = 385, //Set to true when we are strafing in water in FPS mode so we use the motion aiming task
    CPED_RESET_FLAG_FiringWeaponWhenReady = 386, //set when ped has decided to fire weapon when ready, used in FPS mode      
    CPED_RESET_FLAG_IsBlindFiring = 387, //True if the blind fire task is running
    CPED_RESET_FLAG_IsPeekingFromCover = 388, //True if the ped is peeking in cover
    CPED_RESET_FLAG_TaskSkipProcessPreComputeImpacts = 389, //True to bail out of ProcessPreComputeImpacts
    CPED_RESET_FLAG_DisableAssistedAimLockon = 390, //Don't ever try to lock on to this ped with cinematic aim
    CPED_RESET_FLAG_FPSAllowAimIKForThrownProjectile = 391, //To control enabling of FPS aim IK while using a projectile until it is ready
    CPED_RESET_FLAG_TriggerRoadRageAnim = 392, //
    CPED_RESET_FLAG_ForcePreCameraAiAnimUpdateIfFirstPerson = 393, //Force a pre camera ai and animation update if the ped is the first person camera target during the pre camera update
    CPED_RESET_FLAG_NoCollisionDamageFromOtherPeds = 394, //Any ped this is set on won't register damage from collisions against other peds. 
    CPED_RESET_FLAG_BlockCameraSwitching = 395, //Block camera view mode switching. 
    CPED_RESET_FLAG_NeverDieFromCapsuleRagdollSettings = 396, //Negate the capsule's preference for ragdoll triggering death on this ped.
    CPED_RESET_FLAG_InContactWithDeepSurface = 397, //ped is in contact with GTA_DEEP_SURFACE_TYPE bounds
    CPED_RESET_FLAG_DontSuppressUseNavMeshToNavigateToVehicleDoorWhenVehicleInWater = 398, //
    CPED_RESET_FLAG_IncludePedReferenceVelocityWhenFiringProjectiles = 399, //Add on the ped's velocity to the projectile's initial velocity.
    CPED_RESET_FLAG_IsDoingCoverOutroToPeek = 400, //    
    CPED_RESET_FLAG_InstantBlendToAimNoSettle = 401,
    CPED_RESET_FLAG_ForcePreCameraAnimUpdate = 402, //Force a pre camera animation update if the ped is the first person camera target during the pre camera update
    CPED_RESET_FLAG_DisableHelmetCullFPS = 403, //Disables PV_FLAG_HIDE_IN_FIRST_PERSON from culling the prop in CPedPropsMgr::RenderPropsInternal
    CPED_RESET_FLAG_ShouldIgnoreCoverAutoHeadingCorrection = 404, // 
    CPED_RESET_FLAG_DisableReticuleInCoverThisFrame = 405,
    CPED_RESET_FLAG_ForceScriptedCameraLowCoverAngleWhenEnteringCover = 406,
    CPED_RESET_FLAG_DisableCameraConstraintFallBackThisFrame = 407,
    CPED_RESET_FLAG_DisableFPSArmIK = 408, //Disables FPS arm IK in CTaskPlayerOnFoot::IsStateValidForFPSIK    
    CPED_RESET_FLAG_DisableRightArmIKInCoverOutroFPS = 409, //Turn off right arm IK during cover outros in FPS mode when set
    CPED_RESET_FLAG_DoFPSSprintBreakOut = 410,
    CPED_RESET_FLAG_DoFPSJumpBreakOut = 411,
    CPED_RESET_FLAG_IsExitingCover = 412,
    CPED_RESET_FLAG_WeaponBlockedInFPSMode = 413, //True if running CTaskWeaponBlocked in FPS mode
    CPED_RESET_FLAG_PoVCameraConstrained = 414,
    CPED_RESET_FLAG_ScriptClearingPedTasks = 415, //Set in CommandClearPedTasksImmediately in commands_task.cpp
    CPED_RESET_FLAG_WasFPSJumpingWithProjectile = 416, //ped was jumping on foot with projectile in hand
    CPED_RESET_FLAG_DisableMeleeWeaponSelection = 417,
    CPED_RESET_FLAG_WaypointPlaybackSlowMoreForCorners = 418, //slow for corners more aggressively for waypoint playback
    CPED_RESET_FLAG_FPSPlacingProjectile = 419, //True while placing a projectile in FPS mode 
    CPED_RESET_FLAG_UseBulletPenetrationForGlass = 420, //Ped will use bullet penetration code when glass material is hit.
    CPED_RESET_FLAG_FPSPlantingBombOnFloor = 421, //Doing a floor plant with a bomb in FPS mode 
    CPED_RESET_FLAG_ForceSkipFPSAimIntro = 422, //don't do FPS Aim intro
    CPED_RESET_FLAG_CanBePinnedByFriendlyBullets = 423, //If set on a ped then they are allowed to be pinned by bullets from friendly peds
    CPED_RESET_FLAG_DisableLeftArmIKInCoverOutroFPS = 424, //Turn off left arm IK during cover outros in FPS mode when set
    CPED_RESET_FLAG_DisableSpikeStripRoadBlocks = 425, //Blocks road blocks with spike strips from spawning
    CPED_RESET_FLAG_SkipFPSUnHolsterTransition = 426, //skip aim unholster transition
    CPED_RESET_FLAG_PutDownHelmetFX = 427, //trigger the put down helmet fx
    CPED_RESET_FLAG_IsLowerPriorityMeleeTarget = 428, //Peds marked with this flag will only be able to be hit by the player if the player explicitly presses the melee button
    CPED_RESET_FLAG_ForceScanForEventsThisFrame = 429, //disable timeslicing of event scanning
    CPED_RESET_FLAG_StartProjectileTaskWithPrimingDisabled = 430, //Set this flag to disable priming when the projectile task starts up until the attack trigger is released and pressed again
    CPED_RESET_FLAG_CheckFPSSwitchInCameraUpdate = 431, //Set if we want to perform a second AI/anim update when switching between first person/third person
    CPED_RESET_FLAG_ForceAutoEquipHelmetsInAicraft = 432, //Force ped to auto-equip a helmet om entering aircraft. Overrides PCF_DisableAutoEquipHelmetsInAicraft (set in the interaction menu)
    CPED_RESET_FLAG_BlockRemotePlayerRecording = 433, //Flag used by replay editor to disable recording specified remote players (for url:bugstar:2218297).
    CPED_RESET_FLAG_InflictedDamageThisFrame = 434, //Inflicted damage this frame
    CPED_RESET_FLAG_UseFirstPersonVehicleAnimsIfFPSCamNotDominant = 435, //allow FPS vehicle anims even if FPS camera isn't dominant
    CPED_RESET_FLAG_ForceIntoStandPoseOnJetski = 436, //puts the ped in a standing pose on the jetski
    CPED_RESET_FLAG_InAirDefenceSphere = 437, //Ped is located inside an air defence sphere.
    CPED_RESET_FLAG_SuppressTakedownMeleeActions = 438, //This will suppress all takedown melee actions (RA_IS_TAKEDOWN or RA_IS_STEALTH_KILL, defined in action_table.meta)
    CPED_RESET_FLAG_InvertLookAroundControls = 439, //Inverts lookaround controls (right stick / mouse) for this player, for this frame.
    CPED_RESET_FLAG_IgnoreCombatManager = 440, //Allows attacking ped to engage another entity without waiting for its turn (if there's multiple attackers).
    CPED_RESET_FLAG_UseBlendedCamerasOnUpdateFpsCameraRelativeMatrix = 441, //Check if there is an active camera blending and use the blended camera frame when compute the FPS camera relative matrix.
    CPED_RESET_FLAG_ForceMeleeCounter = 442, //Forces the ped to perform a dodge and a counter move if it's attacked.
    CPED_RESET_FLAG_WasHitByVehicleMelee = 443, //Indicates that ped was hit by vehicle melee attack.
    CPED_RESET_FLAG_SuppressNavmeshForEnterVehicleTask = 444, //Dont allow ped to use navmesh when navigating in TaskEnterVehicle
    CPED_RESET_FLAG_DisableShallowWaterBikeJumpOutThisFrame = 445, //
    CPED_RESET_FLAG_DisablePlayerCombatRoll = 446, //Disables player combat rolling.
    CPED_RESET_FLAG_IgnoreDetachSafePositionCheck = 447, //Will ignore safe position check on detaching the ped
    CPED_RESET_FLAG_DisableEasyLadderConditions = 448, //Prevents the more forgiving MP ladder detection settings from being used, and forces SP settings.
    CPED_RESET_FLAG_PlayerIgnoresScenarioSpawnRestrictions = 449, //Makes local player ignore certain scenario spawn restrictions on scenarios that respect this flag
    CPED_RESET_FLAG_UsingDrone = 450, //Indicates player is using Drone from Battle DLC
    CPED_RESET_FLAG_ForceWantedLevelWhenKilled = 451, //Will force the player that killed this ped to get wanted level, even if he wouldnt otherwise
    CPED_RESET_FLAG_UseScriptedWeaponFirePosition = 452, //Will use scripted firing position on the clones of this ped on other machines
    CPED_RESET_FLAG_EnableCollisionOnNetworkCloneWhenFixed = 453, //Enable collision on player ped network clones when physics is fixed
    CPED_RESET_FLAG_UseExtendedRagdollCollisionCalculator = 454, //Use extended logic for determining damage instigator for ragdoll collisions
    CPED_RESET_FLAG_PreventLockonToFriendlyPlayers = 455, //Prevent the player locking on to friendly players
    CPED_RESET_FLAG_OnlyAbortScriptedAnimOnMovementByInput = 456, //Modifies AF_ABORT_ON_PED_MOVEMENT to only trigger an abort when movement would be caused by player input
    CPED_RESET_FLAG_PreventAllStealthKills = 457, //Prevents stealth take downs from being preformed on a ped
    CPED_RESET_FLAG_BlockFallTaskFromExplosionDamage = 458, //Prevent peds from entering a fall task if affected by explosion damage
    CPED_RESET_FLAG_AllowPedRearEntry = 459, //Mimics the behaviour like with boss peds by holding the button for entering the rear seats
}
```

## Parameters
* **ped**: 
* **flagId**: 
* **doReset**: 
