---
ns: OBJECT
aliases: ["0x971DA0055324D033","_SET_OBJECT_TEXTURE_VARIANT"]
---
## _SET_OBJECT_TEXTURE_VARIATION

```c
// 0x971DA0055324D033
void _SET_OBJECT_TEXTURE_VARIATION(Object object, int textureVariation);
```

Sets the texture variation of a prop. Texture variations are defined in the tint palette texture of the object model.
Props can have up to 64 texture variations defined in their tint palette. Texture variations index starts at 0.
Base game props which utilize tinting usually have no more than 16 variations.

## Parameters
* **object**: The target object
* **textureVariation**: New index of the texture variation
