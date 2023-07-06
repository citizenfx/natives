---
ns: PED
aliases: ["0x2B16A3BFF1FBCE49","_IS_PED_PROP_VALID"]
---
## SET_PED_PRELOAD_PROP_DATA

```c
// 0x2B16A3BFF1FBCE49 0xC0E23671
BOOL SET_PED_PRELOAD_PROP_DATA(Ped ped, int componentId, int drawableId, int textureId);
```

## Parameters
* **ped**: The ped handle.
* **componentId**: The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#_0x262B14F48D29DE80).
* **drawableId**: The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47).
* **textureId**: The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171).

## Return value
