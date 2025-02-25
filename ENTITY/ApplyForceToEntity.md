---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY

```c
// 0xC5F68BE9613E2D18 0xC1C0855A
void APPLY_FORCE_TO_ENTITY(Entity entity, int forceType, float x, float y, float z, float offX, float offY, float offZ, int nComponent, BOOL bLocalForce, BOOL bLocalOffset, BOOL bScaleByMass, BOOL bPlayAudio, BOOL bScaleByTimeWarp);
```


```c
enum eApplyForceTypes {
    APPLY_TYPE_FORCE = 0,
    APPLY_TYPE_IMPULSE = 1,
    APPLY_TYPE_EXTERNAL_FORCE = 2,
    APPLY_TYPE_EXTERNAL_IMPULSE = 3,
    APPLY_TYPE_TORQUE = 4,
    APPLY_TYPE_ANGULAR_IMPULSE = 5
}
```

## Parameters
* **entity**: The entity handle
* **forceType**: The force type
* **x**: The x component of the force to apply
* **y**: The y component of the force to apply
* **z**: The z component of the force to apply
* **offX**: Offset from center of entity (X)
* **offY**: Offset from center of entity (Y)
* **offZ**: Offset from center of entity (Z)
* **nComponent**: Component of the entity to apply the force too. Only matters for breakable or articulated (ragdoll) physics. 0 means the root or parent component
* **bLocalForce**: Specifies whether the force vector passed in is in local or world coordinates. `true` means the force will get automatically transformed into world space before being applied
* **bLocalOffset**: Specifies whether the offset passed in is in local or world coordinates
* **bScaleByMass**: Specifies whether to scale the force by mass
* **bPlayAudio**: Specifies whether to play audio events related to the force being applied. The audio will depend on the entity type. Currently vehicles are the only entity types supported, and will play a suspension squeal depending on the magnitude of the force
* **bScaleByTimeWarp**: Specifies whether to scale the force by time warp. Default is `true`

## Examples
```lua
local entity = PlayerPedId()
local forceType = 2
 -- sends the entity straight up into the sky:
local direction = vector3(0.0, 0.0, 15.0)
local offset = vector3(0.0, 0.0, 0.0)
local component = 0
local localForce = false
local localOffset = true
local scaleByMass = true
local playAudio = false
local scaleByTimeWarp = true

ApplyForceToEntity(
    entity,
    forceType,
    direction,
    offset,
    boneIndex,
    localForce,
    localOffset,
    scaleByMass,
    playAudio,
    scaleByTimeWarp
)
```
