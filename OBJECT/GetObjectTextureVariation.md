---
ns: OBJECT
aliases: ["0xE84EB93729C5F36A"]
---
## _GET_OBJECT_TEXTURE_VARIATION

```c
// 0xE84EB93729C5F36A
int _GET_OBJECT_TEXTURE_VARIATION(Object object);
```

Retrieves the texture variation (tint) of the object.

## Parameters
* **object**: Target object of which the texture variation gets retrieved

## Return value
Integer index of the texture variation of the object. Returns `0` on objects without applied tint
