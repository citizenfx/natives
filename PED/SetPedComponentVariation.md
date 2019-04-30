---
ns: PED
---
## SET_PED_COMPONENT_VARIATION

```c
// 0x262B14F48D29DE80 0xD4F7B05C
void SET_PED_COMPONENT_VARIATION(Ped ped, int componentId, int drawableId, int textureId, int paletteId);
```

This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model. 

### MP Freemode list of components
**0**: Face  
**1**: Mask  
**2**: Hair  
**3**: Torso  
**4**: Leg  
**5**: Parachute / bag  
**6**: Shoes  
**7**: Accessory  
**8**: Undershirt  
**9**: Kevlar  
**10**: Badge  
**11**: Torso 2  

### Related and useful natives
[GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#_0x27561561732A7842)  
[GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#_0x8F7156A3142A6BAD)  

[List of component/props ID](gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html) of player_two with examples

## Parameters
* **ped**: The ped handle.
* **componentId**: The component that you want to set.
* **drawableId**: The drawable id that is going to be set.
* **textureId**: The texture id of the drawable.
* **paletteId**: 0 to 3.
