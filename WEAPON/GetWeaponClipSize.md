---
ns: WEAPON
---
## GET_WEAPON_CLIP_SIZE

```c
// 0x583BE370B1EC6EB4 0x8D515E66
int GET_WEAPON_CLIP_SIZE(Hash weaponHash);
```

```
// Returns the size of the default weapon component clip.  
Use it like this:  
char cClipSize[32];  
Hash cur;  
if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))  
{  
    if (WEAPON::IS_WEAPON_VALID(cur))  
    {  
        int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);  
        sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);  
        vDrawString(cClipSize, 0.5f, 0.5f);  
    }  
}  
```

## Parameters
* **weaponHash**: 

## Return value
