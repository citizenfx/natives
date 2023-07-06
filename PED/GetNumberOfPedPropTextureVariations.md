---
ns: PED
---
## GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS

```c
// 0xA6E7F1CEB523E171 0x4892B882
int GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(Ped ped, int propId, int drawableId);
```

```
Need to check behavior when drawableId = -1
```

## Parameters
* **ped**: The ped handle.
* **propId**: The prop id you want to get the texture variations of. Refer to [SET_PED_PROP_INDEX](#_0x93376B65A266EB5F)
* **drawableId**: The drawable id of the prop you want to get the texture variations of. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47).

## Return value
