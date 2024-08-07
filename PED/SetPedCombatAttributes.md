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

```c
enum eCombatAttribute
{
  CA_INVALID = -1,	
  CA_USE_COVER = 0, // AI will only use cover if this is set
  CA_USE_VEHICLE = 1, // AI will only use vehicles if this is set
  CA_DO_DRIVEBYS = 2, // AI will only driveby from a vehicle if this is set
  CA_LEAVE_VEHICLES = 3, // Will be forced to stay in a ny vehicel if this isn't set
  CA_CAN_USE_DYNAMIC_STRAFE_DECISIONS	= 4, // This ped can make decisions on whether to strafe or not based on distance to destination, recent bullet events, etc.
  CA_ALWAYS_FIGHT = 5, // Ped will always fight upon getting threat response task
  CA_FLEE_WHILST_IN_VEHICLE = 6, // If in combat and in a vehicle, the ped will flee rather than attacking
  CA_JUST_FOLLOW_VEHICLE = 7, // If in combat and chasing in a vehicle, the ped will keep a distance behind rather than ramming
  CA_PLAY_REACTION_ANIMS = 8, // Deprecated
  CA_WILL_SCAN_FOR_DEAD_PEDS = 9, // Peds will scan for and react to dead peds found
  CA_IS_A_GUARD = 10, // Deprecated
  CA_JUST_SEEK_COVER = 11, // The ped will seek cover only 
  CA_BLIND_FIRE_IN_COVER = 12, // Ped will only blind fire when in cover
  CA_AGGRESSIVE = 13, // Ped may advance
  CA_CAN_INVESTIGATE = 14, // Ped can investigate events such as distant gunfire, footsteps, explosions etc
  CA_CAN_USE_RADIO = 15, // Ped can use a radio to call for backup (happens after a reaction)
  CA_CAN_CAPTURE_ENEMY_PEDS = 16, // Deprecated
  CA_ALWAYS_FLEE = 17, // Ped will always flee upon getting threat response task
  CA_CAN_TAUNT_IN_VEHICLE = 20, // Ped can do unarmed taunts in vehicle
  CA_CAN_CHASE_TARGET_ON_FOOT = 21, // Ped will be able to chase their targets if both are on foot and the target is running away
  CA_WILL_DRAG_INJURED_PEDS_TO_SAFETY = 22, // Ped can drag injured peds to safety
  CA_REQUIRES_LOS_TO_SHOOT = 23, // Ped will require LOS to the target it is aiming at before shooting
  CA_USE_PROXIMITY_FIRING_RATE = 24, // Ped is allowed to use proximity based fire rate (increasing fire rate at closer distances)
  CA_DISABLE_SECONDARY_TARGET = 25, // Normally peds can switch briefly to a secondary target in combat, setting this will prevent that
  CA_DISABLE_ENTRY_REACTIONS = 26, // This will disable the flinching combat entry reactions for peds, instead only playing the turn and aim anims
  CA_PERFECT_ACCURACY = 27, // Force ped to be 100% accurate in all situations (added by Jay Reinebold)
  CA_CAN_USE_FRUSTRATED_ADVANCE	= 28, // If we don't have cover and can't see our target it's possible we will advance, even if the target is in cover
  CA_MOVE_TO_LOCATION_BEFORE_COVER_SEARCH = 29, // This will have the ped move to defensive areas and within attack windows before performing the cover search
  CA_CAN_SHOOT_WITHOUT_LOS = 30, // Allow shooting of our weapon even if we don't have LOS (this isn't X-ray vision as it only affects weapon firing)
  CA_MAINTAIN_MIN_DISTANCE_TO_TARGET = 31, // Ped will try to maintain a min distance to the target, even if using defensive areas (currently only for cover finding + usage) 
  CA_CAN_USE_PEEKING_VARIATIONS	= 34, // Allows ped to use steamed variations of peeking anims
  CA_DISABLE_PINNED_DOWN = 35, // Disables pinned down behaviors
  CA_DISABLE_PIN_DOWN_OTHERS = 36, // Disables pinning down others
  CA_OPEN_COMBAT_WHEN_DEFENSIVE_AREA_IS_REACHED = 37, // When defensive area is reached the area is cleared and the ped is set to use defensive combat movement
  CA_DISABLE_BULLET_REACTIONS = 38, // Disables bullet reactions
  CA_CAN_BUST = 39, // Allows ped to bust the player
  CA_IGNORED_BY_OTHER_PEDS_WHEN_WANTED = 40, // This ped is ignored by other peds when wanted
  CA_CAN_COMMANDEER_VEHICLES = 41, // Ped is allowed to "jack" vehicles when needing to chase a target in combat
  CA_CAN_FLANK = 42, // Ped is allowed to flank
  CA_SWITCH_TO_ADVANCE_IF_CANT_FIND_COVER = 43,	// Ped will switch to advance if they can't find cover
  CA_SWITCH_TO_DEFENSIVE_IF_IN_COVER = 44, // Ped will switch to defensive if they are in cover
  CA_CLEAR_PRIMARY_DEFENSIVE_AREA_WHEN_REACHED = 45, // Ped will clear their primary defensive area when it is reached
  CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED = 46, // Ped is allowed to fight armed peds when not armed
  CA_ENABLE_TACTICAL_POINTS_WHEN_DEFENSIVE = 47, // Ped is not allowed to use tactical points if set to use defensive movement (will only use cover)
  CA_DISABLE_COVER_ARC_ADJUSTMENTS = 48, // Ped cannot adjust cover arcs when testing cover safety (atm done on corner cover points when  ped usingdefensive area + no LOS)
  CA_USE_ENEMY_ACCURACY_SCALING	= 49, // Ped may use reduced accuracy with large number of enemies attacking the same local player target
  CA_CAN_CHARGE = 50, // Ped is allowed to charge the enemy position
  CA_REMOVE_AREA_SET_WILL_ADVANCE_WHEN_DEFENSIVE_AREA_REACHED = 51, // When defensive area is reached the area is cleared and the ped is set to use will advance movement
  CA_USE_VEHICLE_ATTACK = 52, // Use the vehicle attack mission during combat (only works on driver)
  CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS = 53, // Use the vehicle attack mission during combat if the vehicle has mounted guns (only works on driver)
  CA_ALWAYS_EQUIP_BEST_WEAPON = 54, // Always equip best weapon in combat
  CA_CAN_SEE_UNDERWATER_PEDS = 55, // Ignores in water at depth visibility check
  CA_DISABLE_AIM_AT_AI_TARGETS_IN_HELIS = 56, // Will prevent this ped from aiming at any AI targets that are in helicopters
  CA_DISABLE_SEEK_DUE_TO_LINE_OF_SIGHT = 57, // Disables peds seeking due to no clear line of sight
  CA_DISABLE_FLEE_FROM_COMBAT = 58, // To be used when releasing missions peds if we don't want them fleeing from combat (mission peds already prevent flee)
  CA_DISABLE_TARGET_CHANGES_DURING_VEHICLE_PURSUIT = 59, // Disables target changes during vehicle pursuit
  CA_CAN_THROW_SMOKE_GRENADE = 60, // Ped may throw a smoke grenade at player loitering in combat
  CA_CLEAR_AREA_SET_DEFENSIVE_IF_DEFENSIVE_CANNOT_BE_REACHED = 62, // Will clear a set defensive area if that area cannot be reached
  CA_DISABLE_BLOCK_FROM_PURSUE_DURING_VEHICLE_CHASE = 64, // Disable block from pursue during vehicle chases
  CA_DISABLE_SPIN_OUT_DURING_VEHICLE_CHASE = 65, // Disable spin out during vehicle chases
  CA_DISABLE_CRUISE_IN_FRONT_DURING_BLOCK_DURING_VEHICLE_CHASE = 66, // Disable cruise in front during block during vehicle chases
  CA_CAN_IGNORE_BLOCKED_LOS_WEIGHTING = 67, // Makes it more likely that the ped will continue targeting a target with blocked los for a few seconds
  CA_DISABLE_REACT_TO_BUDDY_SHOT = 68, // Disables the react to buddy shot behaviour.
  CA_PREFER_NAVMESH_DURING_VEHICLE_CHASE = 69, // Prefer pathing using navmesh over road nodes
  CA_ALLOWED_TO_AVOID_OFFROAD_DURING_VEHICLE_CHASE = 70, // Ignore road edges when avoiding
  CA_PERMIT_CHARGE_BEYOND_DEFENSIVE_AREA = 71, // Permits ped to charge a target outside the assigned defensive area.
  CA_USE_ROCKETS_AGAINST_VEHICLES_ONLY = 72, // This ped will switch to an RPG if target is in a vehicle, otherwise will use alternate weapon.
  CA_DISABLE_TACTICAL_POINTS_WITHOUT_CLEAR_LOS = 73, // Disables peds moving to a tactical point without clear los
  CA_DISABLE_PULL_ALONGSIDE_DURING_VEHICLE_CHASE = 74, // Disables pull alongside during vehicle chase
  CA_DISABLE_ALL_RANDOMS_FLEE = 78,	// If set on a ped, they will not flee when all random peds flee is set to TRUE (they are still able to flee due to other reasons)
  CA_WILL_GENERATE_DEAD_PED_SEEN_SCRIPT_EVENTS = 79, // This ped will send out a script DeadPedSeenEvent when they see a dead ped
  CA_USE_MAX_SENSE_RANGE_WHEN_RECEIVING_EVENTS = 80, // This will use the receiving peds sense range rather than the range supplied to the communicate event
  CA_RESTRICT_IN_VEHICLE_AIMING_TO_CURRENT_SIDE = 81, // When aiming from a vehicle the ped will only aim at targets on his side of the vehicle
  CA_USE_DEFAULT_BLOCKED_LOS_POSITION_AND_DIRECTION = 82, // LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
  CA_REQUIRES_LOS_TO_AIM = 83, // LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
  CA_CAN_CRUISE_AND_BLOCK_IN_VEHICLE = 84, // Allow vehicles spawned infront of target facing away to enter cruise and wait to block approaching target
  CA_PREFER_AIR_COMBAT_WHEN_IN_AIRCRAFT = 85, // Peds flying aircraft will prefer to target other aircraft over entities on the ground
  CA_ALLOW_DOG_FIGHTING = 86, //Allow peds flying aircraft to use dog fighting behaviours
  CA_PREFER_NON_AIRCRAFT_TARGETS = 87, // This will make the weight of targets who aircraft vehicles be reduced greatly compared to targets on foot or in ground based vehicles
  CA_PREFER_KNOWN_TARGETS_WHEN_COMBAT_CLOSEST_TARGET = 88, //When peds are tasked to go to combat, they keep searching for a known target for a while before forcing an unknown one
  CA_FORCE_CHECK_ATTACK_ANGLE_FOR_MOUNTED_GUNS = 89, // Only allow mounted weapons to fire if within the correct attack angle (default 25-degree cone). On a flag in order to keep exiting behaviour and only fix in specific cases.
  CA_BLOCK_FIRE_FOR_VEHICLE_PASSENGER_MOUNTED_GUNS = 90 // Blocks the firing state for passenger-controlled mounted weapons. Existing flags CA_USE_VEHICLE_ATTACK and CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS only work for drivers.
};
```

## Parameters
* **ped**: The ped to set attributes to.
* **attributeIndex**: The attribute index to set. See `eCombatAttribute` enum.
* **enabled**: A boolean to enable/disable the attribute (true/false).
