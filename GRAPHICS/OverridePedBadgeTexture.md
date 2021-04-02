---
ns: GRAPHICS
aliases: ["0x95EB5E34F821BABE"]
---
## _OVERRIDE_PED_BADGE_TEXTURE

```c
// 0x95EB5E34F821BABE
BOOL _OVERRIDE_PED_BADGE_TEXTURE(Ped ped, char* txd, char* txn);
```

```
Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
```

## Parameters
* **ped**: 
* **txd**: 
* **txn**: 

## Return value
