---
ns: PED
---
## EXPLODE_PED_HEAD

```c
// 0x2D05CED3A38D0F3A 0x05CC1380
void EXPLODE_PED_HEAD(Ped ped, Hash weaponHash);
```

Applies lethal damage (FLT_MAX) to the `SKEL_Head` bone of the specified ped using the weapon passed, leading to the
ped's untimely demise.

The naming of the native is a legacy leftover (formerly EXPLODE_CHAR_HEAD in GTA3) as in the early 3D GTA games, lethal
damage to a ped head would 'explode' it.

Do note that this native function does not work in multiplayer/network environment.

## Parameters
* **ped**: The ped to lethally injure.
* **weaponHash**: The weapon to attribute the damage to.

