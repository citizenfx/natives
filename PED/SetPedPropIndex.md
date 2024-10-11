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
**0**: Hats
**1**: Glasses
**2**: Ears
**6**: Watches
**7**: Bracelets

List of Prop IDs
```c
enum eAnchorPoints
{
    ANCHOR_HEAD = 0, // "p_head"
    ANCHOR_EYES = 1, // "p_eyes"
    ANCHOR_EARS = 2, // "p_ears"
    ANCHOR_MOUTH = 3, // "p_mouth"
    ANCHOR_LEFT_HAND = 4, // "p_lhand"
    ANCHOR_RIGHT_HAND = 5, // "p_rhand"
    ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
    ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
    ANCHOR_HIP = 8, // "p_lhip"
    ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
    ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
    ANCHOR_PH_L_HAND = 11, // "ph_lhand"
    ANCHOR_PH_R_HAND = 12, // "ph_rhand"
    NUM_ANCHORS = 13,
};
```

## Parameters
* **ped**: The ped handle.
* **componentId**: The component that you want to set. Refer to [SET_PED_COMPONENT_VARIATION](#_0x262B14F48D29DE80).
* **drawableId**: The drawable id that is going to be set. Refer to [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#_0x5FAF9754E789FB47).
* **textureId**: The texture id of the drawable. Refer to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#_0xA6E7F1CEB523E171).
* **attach**: Attached or not.
