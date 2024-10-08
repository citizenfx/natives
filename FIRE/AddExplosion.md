---
ns: FIRE
---
## ADD_EXPLOSION

```c
// 0xE3AD2BDBAEE269AC 0x10AF5258
void ADD_EXPLOSION(float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
```

```
NativeDB Added Parameter 9: BOOL noDamage
```

```
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.
BOOL noDamage = false: damage || nodamage = true: no damage
```

```c
enum eExplosionTag
{
	DONTCARE = -1,
	GRENADE = 0,
	GRENADELAUNCHER = 1,
	STICKYBOMB = 2,
	MOLOTOV = 3,
	ROCKET = 4,
	TANKSHELL = 5,
	HI_OCTANE = 6,
	CAR = 7,
	PLANE = 8,
	PETROL_PUMP = 9,
	BIKE = 10,
	DIR_STEAM = 11,
	DIR_FLAME = 12,
	DIR_WATER_HYDRANT = 13,
	DIR_GAS_CANISTER = 14,
	BOAT = 15,
	SHIP_DESTROY = 16,
	TRUCK = 17,
	BULLET = 18,
	SMOKE_GRENADE_LAUNCHER = 19,
	SMOKE_GRENADE = 20,
	BZGAS = 21,
	FLARE = 22,
	GAS_CANISTER = 23,
	EXTINGUISHER = 24,
	PROGRAMMABLEAR = 25,
	TRAIN = 26,
	BARREL = 27,
	PROPANE = 28,
	BLIMP = 29,
	DIR_FLAME_EXPLODE = 30,
	TANKER = 31,
	PLANE_ROCKET = 32,
	VEHICLE_BULLET = 33,
	GAS_TANK = 34,
	BIRD_CRAP = 35,
	RAILGUN = 36,
	BLIMP2 = 37,
	FIREWORK = 38,
	SNOWBALL = 39,
	PROXMINE = 40,
	VALKYRIE_CANNON = 41,
	AIR_DEFENCE = 42,
	PIPEBOMB = 43,
	VEHICLEMINE = 44,
	EXPLOSIVEAMMO = 45,
	APCSHELL = 46,
	BOMB_CLUSTER = 47,
	BOMB_GAS = 48,
	BOMB_INCENDIARY = 49,
	BOMB_STANDARD = 50,
	TORPEDO = 51,
	TORPEDO_UNDERWATER = 52,
	BOMBUSHKA_CANNON = 53,
	BOMB_CLUSTER_SECONDARY = 54,
	HUNTER_BARRAGE = 55,
	HUNTER_CANNON = 56,
	ROGUE_CANNON = 57,
	MINE_UNDERWATER = 58,
	ORBITAL_CANNON = 59,
	BOMB_STANDARD_WIDE = 60,
	EXPLOSIVEAMMO_SHOTGUN = 61,
	OPPRESSOR2_CANNON = 62,
	MORTAR_KINETIC = 63,
	VEHICLEMINE_KINETIC = 64,
	VEHICLEMINE_EMP = 65,
	VEHICLEMINE_SPIKE = 66,
	VEHICLEMINE_SLICK = 67,
	VEHICLEMINE_TAR = 68,
	SCRIPT_DRONE = 69,
	RAYGUN = 70,
	BURIEDMINE = 71,
	SCRIPT_MISSILE = 72,
	RCTANK_ROCKET = 73,
	BOMB_WATER = 74,
	BOMB_WATER_SECONDARY = 75,
	MINE_CNCSPIKE = 76,
	BZGAS_MK2 = 77,
	FLASHGRENADE = 78,
	STUNGRENADE = 79,
	CNC_KINETICRAM = 80,
	SCRIPT_MISSILE_LARGE = 81,
	SUBMARINE_BIG = 82,
	EMPLAUNCHER_EMP = 83
};
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **explosionType**: 
* **damageScale**: 
* **isAudible**: 
* **isInvisible**: 
* **cameraShake**: 

