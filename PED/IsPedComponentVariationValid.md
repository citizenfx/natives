---
ns: PED
---
## IS_PED_COMPONENT_VARIATION_VALID

```c
// 0xE825F6B6CEA7671D 0x952ABD9A
BOOL IS_PED_COMPONENT_VARIATION_VALID(Ped ped, int componentId, int drawableId, int textureId);
```

Checks if the component variation is valid, this works great for randomizing components using loops.  

## Parameters
* **ped**: The ped handle.
* **componentId**: The component id to check the variation of. Refer to [SET_PED_COMPONENT_VARIATION](#_0x262B14F48D29DE80).
* **drawableId**: The drawable id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47).
* **textureId**: The texture id to get the component variation of. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171).

## Return value
