---
ns: PED
---
## SET_PED_PROP_INDEX

```c
// 0x93376B65A266EB5F 0x0829F2E2
void SET_PED_PROP_INDEX(Ped ped, int componentId, int drawableId, int TextureId, BOOL attach);
```

```
ComponentId can be set to various things based on what category you're wanting to set  
enum PedPropsData  
{  
	PED_PROP_HATS = 0,  
	PED_PROP_GLASSES = 1,  
	PED_PROP_EARS = 2,  
	PED_PROP_WATCHES = 3,  
};  
Usage: SET_PED_PROP_INDEX(playerPed, PED_PROP_HATS, GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(playerPed, PED_PROP_HATS), GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(playerPed, PED_PROP_HATS, 0), TRUE);  
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```

## Parameters
* **ped**: 
* **componentId**: 
* **drawableId**: 
* **TextureId**: 
* **attach**: 

