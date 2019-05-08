---
ns: PED
---
## SET_PED_PROP_INDEX

```c
// 0x93376B65A266EB5F 0x0829F2E2
void SET_PED_PROP_INDEX(Ped ped, int componentId, int drawableId, int textureId, BOOL attach);
```

This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model. 

### MP Freemode list of props
**0**: Hat  
**1**: Glass  
**2**: Ear  
**6**: Watch  
**7**: Bracelet  

### Related and useful natives
[GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47)  
[GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171)  

[List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples

## Parameters
* **ped**: The ped handle.
* **componentId**: The component that you want to set.
* **drawableId**: The drawable id that is going to be set.
* **textureId**: The texture id of the drawable.
* **attach**: Attached or not. 