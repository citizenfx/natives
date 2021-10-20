---
ns: MISC
---
## SHOOT_SINGLE_BULLET_BETWEEN_COORDS

```c
// 0x867654CBC7606F2C 0xCB7415AC
void SHOOT_SINGLE_BULLET_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, int damage, BOOL pureAccuracy, Hash weaponHash, Ped ownerPed, BOOL isAudible, BOOL isInvisible, float speed);
```

Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.

## Parameters
* **x1**: The X coordinate to start the shot at.
* **y1**: The Y coordinate to start the shot at.
* **z1**: The Z coordinate to start the shot at.
* **x2**: The X coordinate the shot should end up at.
* **y2**: The Y coordinate the shot should end up at.
* **z2**: The Z coordinate the shot should end up at.
* **damage**: The amount of damage the bullet carries.
* **pureAccuracy**: Whether the bullet should have pinpoint accuracy.
* **weaponHash**: Hash of the weapon the bullet is used as ammunition for.
* **ownerPed**: Owner of the bullet, e.g. if the bullet kills someone the kill feed shows 'X was shot by ownerPed.'
* **isAudible**: Whether the bullet should be audible. Optional, defaults to true
* **isInvisible**: Whether the bullet should be invisible. Optional, defaults to false
* **speed**: Speed the bullet should fly at. Optional

