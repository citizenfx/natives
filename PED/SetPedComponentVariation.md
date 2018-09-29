---
ns: PED
---
## SET_PED_COMPONENT_VARIATION

```c
// 0x262B14F48D29DE80 0xD4F7B05C
void SET_PED_COMPONENT_VARIATION(Ped ped, int componentId, int drawableId, int textureId, int paletteId);
```

```
paletteId/palletColor -  0 to 3.   
enum PedVariationData  
{  
	PED_VARIATION_FACE = 0,  
	PED_VARIATION_HEAD = 1,  
	PED_VARIATION_HAIR = 2,  
	PED_VARIATION_TORSO = 3,  
	PED_VARIATION_LEGS = 4,  
	PED_VARIATION_HANDS = 5,  
	PED_VARIATION_FEET = 6,  
	PED_VARIATION_EYES = 7,  
	PED_VARIATION_ACCESSORIES = 8,  
	PED_VARIATION_TASKS = 9,  
	PED_VARIATION_TEXTURES = 10,  
	PED_VARIATION_TORSO2 = 11  
};  
Usage:   
SET_PED_COMPONENT_VARIATION(playerPed, PED_VARIATION_FACE, GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(playerPed, PED_VARIATION_FACE), GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(playerPed, PED_VARIATION_FACE, 0), 2);  
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```

## Parameters
* **ped**: 
* **componentId**: 
* **drawableId**: 
* **textureId**: 
* **paletteId**: 

