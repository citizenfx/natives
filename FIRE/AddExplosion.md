---
ns: FIRE
---
## ADD_EXPLOSION

```c
// 0xE3AD2BDBAEE269AC 0x10AF5258
void ADD_EXPLOSION(float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
```

```
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.  
this native is missing a new argument: noDamage  
nodamage = false: damage || nodamage = true: no damage  
enum ExplosionTypes  
{  
	EXPLOSION_GRENADE,  
	EXPLOSION_GRENADELAUNCHER,  
	EXPLOSION_STICKYBOMB,  
	EXPLOSION_MOLOTOV,  
	EXPLOSION_ROCKET,  
	EXPLOSION_TANKSHELL,  
	EXPLOSION_HI_OCTANE,  
	EXPLOSION_CAR,  
	EXPLOSION_PLANE,  
	EXPLOSION_PETROL_PUMP,  
	EXPLOSION_BIKE,  
	EXPLOSION_DIR_STEAM,  
	EXPLOSION_DIR_FLAME,  
	EXPLOSION_DIR_WATER_HYDRANT,  
	EXPLOSION_DIR_GAS_CANISTER,  
	EXPLOSION_BOAT,  
	EXPLOSION_SHIP_DESTROY,  
	EXPLOSION_TRUCK,  
	EXPLOSION_BULLET,  
	EXPLOSION_SMOKEGRENADELAUNCHER,  
	EXPLOSION_SMOKEGRENADE,  
	EXPLOSION_BZGAS,  
	EXPLOSION_FLARE,  
	EXPLOSION_GAS_CANISTER,  
	EXPLOSION_EXTINGUISHER,  
	EXPLOSION_PROGRAMMABLEAR,  
	EXPLOSION_TRAIN,  
	EXPLOSION_BARREL,  
	EXPLOSION_PROPANE,  
	EXPLOSION_BLIMP,  
	EXPLOSION_DIR_FLAME_EXPLODE,  
	EXPLOSION_TANKER,  
	EXPLOSION_PLANE_ROCKET,  
	EXPLOSION_VEHICLE_BULLET,  
	EXPLOSION_GAS_TANK,  
	EXPLOSION_BIRD_CRAP  
};  
```

```
NativeDB Added Parameter 9: BOOL noDamage
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

