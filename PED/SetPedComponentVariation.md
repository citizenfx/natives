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

List of Component IDs
```c
// Components
enum ePedVarComp
{
    PV_COMP_INVALID = 0xFFFFFFFF,
    PV_COMP_HEAD = 0, // "HEAD"
    PV_COMP_BERD = 1, // "BEARD"
    PV_COMP_HAIR = 2, // "HAIR"
    PV_COMP_UPPR = 3, // "UPPER"
    PV_COMP_LOWR = 4, // "LOWER"
    PV_COMP_HAND = 5, // "HAND"
    PV_COMP_FEET = 6, // "FEET"
    PV_COMP_TEEF = 7, // "TEETH"
    PV_COMP_ACCS = 8, // "ACCESSORIES"
    PV_COMP_TASK = 9, // "TASK"
    PV_COMP_DECL = 10, // "DECL"
    PV_COMP_JBIB = 11, // "JBIB"
    PV_COMP_MAX = 12,
};
```

## Parameters
* **ped**: The ped handle.
* **componentId**: The component that you want to set.
* **drawableId**: The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#_0x27561561732A7842).
* **textureId**: The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#_0x8F7156A3142A6BAD).
* **paletteId**: 0 to 3.
