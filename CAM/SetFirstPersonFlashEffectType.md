---
ns: CAM
aliases: ["0x5C41E6BABC9E2112"]
---
## SET_FIRST_PERSON_FLASH_EFFECT_TYPE

```c
// 0x5C41E6BABC9E2112
void SET_FIRST_PERSON_FLASH_EFFECT_TYPE(int flashType);
```

Specifies the type of visual flash effect to be used during a scripted camera transition back to first-person view within the current frame.

```c
enum eFpsFlashType {
    FLASH_TYPE_NEUTRAL = 0,   // Neutral flash (default, for non-character switch situations)
    FLASH_TYPE_MICHAEL = 1,   // Michael's character color
    FLASH_TYPE_FRANKLIN = 2,  // Franklin's character color
    FLASH_TYPE_TREVOR = 3,   // Trevor's character color
}
```

```
NativeDB Introduced: v323
```

## Parameters
* **flashType**: A `fpsFlashType` enum value specifying the type of flash effect to be applied. The flash effect can simulate character-specific colors or a neutral flash for non-character switch situations.