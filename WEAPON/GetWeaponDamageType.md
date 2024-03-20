---
ns: WEAPON
---
## GET_WEAPON_DAMAGE_TYPE

```c
// 0x3BE0BB12D25FB305 0x013AFC13
int GET_WEAPON_DAMAGE_TYPE(Hash weaponHash);
```

Retrieves the damage type caused by a specific weapon.

```c
enum eDamageType {
    UNKNOWN = 0, // (Incorrect weaponHash or unknown weapon type)
    NONE = 1, // (Flare, Snowball, PetrolCan)
    MELEE = 2,
    BULLET = 3,
    BULLET_RUBBER = 4,
    EXPLOSIVE = 5,
    FIRE = 6,
    COLLISION = 7,
    FALL = 8, // (WEAPON_HELI_CRASH)
    DROWN = 9,
    ELECTRIC = 10,
    BARBED_WIRE = 11,
    FIRE_EXTINGUISHER = 12,
    SMOKE = 13,
    WATER_CANNON = 14,
    TRANQUILIZER = 15,
};

```

## Parameters
* **weaponHash**: The hash of the weapon to get the damage type for.

## Return value
Returns an integer representing the damage type of the specified weapon, as defined in `eDamageType`.