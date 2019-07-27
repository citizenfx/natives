---
ns: WEAPON
---
## GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT

```c
// 0x33E179436C0B31DB 0xF7612A37
void GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT(Object weaponObject, Hash componentHash);
```

Adds a weapon component to a weapon object.
Before you add the component, you need to load it's world model which you can get from [GET_WEAPON_COMPONENT_TYPE_MODEL](#_0x0DB57B41EC1DB083).

## Parameters
* **weaponObject**: The weapon object handle
* **componentHash**: The component hash

