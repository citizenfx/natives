---
ns: ENTITY
---
## APPLY_FORCE_TO_ENTITY

```c
// 0xC5F68BE9613E2D18 0xC1C0855A
void APPLY_FORCE_TO_ENTITY(Entity entity, int forceType, float x, float y, float z, float offX, float offY, float offZ, int boneIndex, BOOL isDirectionRel, BOOL ignoreUpVec, BOOL isForceRel, BOOL p12, BOOL p13);
```

Applies a force to the specified entity.

**List of force types (p1)**:

```
public enum ForceType
{
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}
```

Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).


## Parameters
* **entity**: The entity you want to apply a force on
* **forceType**: See native description above for a list of commonly used values
* **x**: Force amount (X)
* **y**: Force amount (Y)
* **z**: Force amount (Z)
* **offX**: Rotation/offset force (X)
* **offY**: Rotation/offset force (Y)
* **offZ**: Rotation/offset force (Z)
* **boneIndex**: (Often 0) Entity bone index
* **isDirectionRel**: (Usually false) Vector defined in local (body-fixed) coordinate frame
* **ignoreUpVec**: (Usually true)
* **isForceRel**: (Usually true) When true, force gets multiplied with the objects mass and different objects will have the same acceleration
* **p12**: (Usually false)
* **p13**: (Usually true)


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
local boneIndex = 0
local isDirectionRel = false
local ignoreUpVec = true
local isForceRel = true
local p12 = false
local p13 = true

ApplyForceToEntity(
    entity,
    forceType,
    direction,
    rotation,
    boneIndex,
    isDirectionRel,
    ignoreUpVec,
    isForceRel,
    p12,
    p13
)
```
