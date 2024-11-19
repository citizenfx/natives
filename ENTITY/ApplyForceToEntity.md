---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY

```c
// 0xC5F68BE9613E2D18 0xC1C0855A
void APPLY_FORCE_TO_ENTITY(Entity entity, int forceType, float x, float y, float z, float offX, float offY, float offZ, int component, BOOL localForce, BOOL localOffset, BOOL scaleByMass, BOOL triggerAudio, BOOL scaleByTimeWarp);
```

Applies a force to the specified entity.

```c
enum eForceType
{
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}

enum eRagdollComponent
{
	RAGDOLL_INVALID = -1, // Invalid
	RAGDOLL_BUTTOCKS = 0, // Buttocks
	RAGDOLL_THIGH_LEFT = 1, // Thigh_Left
	RAGDOLL_SHIN_LEFT = 2, // Shin_Left
	RAGDOLL_FOOT_LEFT = 3, // Foot_Left
	RAGDOLL_THIGH_RIGHT = 4, // Thigh_Right
	RAGDOLL_SHIN_RIGHT = 5, // Shin_Right
	RAGDOLL_FOOT_RIGHT = 6, // Foot_Right
	RAGDOLL_SPINE0 = 7, // Spine0
	RAGDOLL_SPINE1 = 8, // Spine1
	RAGDOLL_SPINE2 = 9, // Spine2
	RAGDOLL_SPINE3 = 10, // Spine3
	RAGDOLL_CLAVICLE_LEFT = 11, // Clavicle_Left
	RAGDOLL_UPPER_ARM_LEFT = 12, // Upper_Arm_Left
	RAGDOLL_LOWER_ARM_LEFT = 13, // Lower_Arm_Left
	RAGDOLL_HAND_LEFT = 14, // Hand_Left
	RAGDOLL_CLAVICLE_RIGHT = 15, // Clavicle_Right
	RAGDOLL_UPPER_ARM_RIGHT = 16, // Upper_Arm_Right
	RAGDOLL_LOWER_ARM_RIGHT = 17, // Lower_Arm_Right
	RAGDOLL_HAND_RIGHT = 18, // Hand_Right
	RAGDOLL_NECK = 19, // Neck
	RAGDOLL_HEAD = 20 // Head
}

```

Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).


## Parameters
* **entity**: The entity you want to apply a force on
* **forceType**: Refer to `eForceType`
* **x**: Force amount (X)
* **y**: Force amount (Y)
* **z**: Force amount (Z)
* **offX**: Rotation/offset force (X)
* **offY**: Rotation/offset force (Y)
* **offZ**: Rotation/offset force (Z)
* **component**: Component of the entity to apply the force too - only matters for breakable or articulated (ragdoll) physics. 0 means the root or parent component. Reger to `RagdollComponent`
If the command is being called on a ped, the component passed in is one returned from GET_PED_RAGDOLL_BONE_INDEX, not GET_PED_BONE_INDEX
* **localForce**: Specifies whether the force vector passed in is in local or world coordinates. Local coordinates (TRUE) means the force will get automatically transformed into world space before being applied. 
* **localOffset**: Specifies whether the offset passed in is in local or world coordinates.
* **scaleByMass**: When true, force gets multiplied with the objects mass and different objects will have the same acceleration
* **triggerAudio**: Specifies whether to play audio events related to the force being applied. The audio will depend on the entity type. Currently vehicles are the only entity types supported, and will play a suspension squeal depending on the magnitude of the force
* **scaleByTimeWarp**: (Usually true)


## Examples
```lua
local forceTypes = {
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}

local entity = PlayerPedId()
local forceType = forceTypes.MaxForceRot2
 -- sends the entity straight up into the sky:
local direction = vector3(0.0, 0.0, 15.0)
local rotation = vector3(0.0, 0.0, 0.0)
local component = 0
local localForce = false
local localOffset = true
local scaleByMass = true
local triggerAudio = false
local scaleByTimeWarp = true

ApplyForceToEntity(
    entity,
    forceType,
    direction,
    rotation,
    component,
    localForce,
    localOffset,
    scaleByMass,
    triggerAudio,
    scaleByTimeWarp
)
```
