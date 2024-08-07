---
ns: GRAPHICS
---
## ADD_DECAL

```c
// 0xB302244A1839BDAD 0xEAD0C412
int ADD_DECAL(int decalType, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float sideX, float sideY, float sideZ, float width, float height, float rCoef, float gCoef, float bCoef, float opacity, float timeout, BOOL isLongRange, BOOL isDynamic, BOOL useComplexColn);
```

Places a decal into the world

```cs
public enum DecalTypes  
{  
    splatters_blood = 1010,  
    splatters_blood_dir = 1015,  
    splatters_blood_mist = 1017,  
    splatters_mud = 1020,  
    splatters_paint = 1030,  
    splatters_water = 1040,  
    splatters_water_hydrant = 1050,  
    splatters_blood2 = 1110,  
    weapImpact_metal = 4010,  
    weapImpact_concrete = 4020,  
    weapImpact_mattress = 4030,  
    weapImpact_mud = 4032,  
    weapImpact_wood = 4050,  
    weapImpact_sand = 4053,  
    weapImpact_cardboard = 4040,  
    weapImpact_melee_glass = 4100,  
    weapImpact_glass_blood = 4102,  
    weapImpact_glass_blood2 = 4104,  
    weapImpact_shotgun_paper = 4200,  
    weapImpact_shotgun_mattress,  
    weapImpact_shotgun_metal,  
    weapImpact_shotgun_wood,  
    weapImpact_shotgun_dirt,  
    weapImpact_shotgun_tvscreen,  
    weapImpact_shotgun_tvscreen2,  
    weapImpact_shotgun_tvscreen3,  
    weapImpact_melee_concrete = 4310,  
    weapImpact_melee_wood = 4312,  
    weapImpact_melee_metal = 4314,  
    burn1 = 4421,  
    burn2,  
    burn3,  
    burn4,  
    burn5,  
    bang_concrete_bang = 5000,  
    bang_concrete_bang2,  
    bang_bullet_bang,  
    bang_bullet_bang2 = 5004,  
    bang_glass = 5031,  
    bang_glass2,  
    solidPool_water = 9000,  
    solidPool_blood,  
    solidPool_oil,  
    solidPool_petrol,  
    solidPool_mud,  
    porousPool_water,  
    porousPool_blood,  
    porousPool_oil,  
    porousPool_petrol,  
    porousPool_mud,  
    porousPool_water_ped_drip,  
    liquidTrail_water = 9050  
}  
```

## Parameters
* **decalType**: which type of decal to place, based on the ID, see `DecalTypes` enum.
* **posX**: X position coordinate.
* **posY**: Y position coordinate.
* **posZ**: Z position coordinate.
* **dirX**: X Orientation.
* **dirY**: Y Orientation.
* **dirZ**: Z Orientation.
* **sideX**: Usually set to 0.
* **sideY**: Usually set to 1.
* **sideZ**: Usually set to 0.
* **width**: Width of the decal.
* **height**: Height of the decal.
* **rCoef**: Red Color.
* **gCoef**: Green Color.
* **bCoef**: Blue Color.
* **opacity**: Alpha Color.
* **timeout**: The lifetime of the decal.
* **isLongRange**: toggle further LOD draw distance.
* **isDynamic**: toggle dynamics.
* **useComplexColn**: use complex coloring.

## Return value
An integer value representing the added decal index, will return `0` if the decal cannot be added.
