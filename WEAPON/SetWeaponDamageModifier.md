---
ns: WEAPON
aliases: ["0x4757F00BC6323CFE", "_SET_WEAPON_DAMAGE_MODIFIER_THIS_FRAME"]
---
## _SET_WEAPON_DAMAGE_MODIFIER

```c
// 0x4757F00BC6323CFE
void _SET_WEAPON_DAMAGE_MODIFIER(Hash weaponHash, float damageMultiplier);
```

Changes the weapon damage output by the given multiplier value.
Does NOT need to be called every frame.

## Parameters
* **weaponHash**: Hash of the weapon
* **damageMultiplier**: Damage Multiplier

## Examples
```lua
SetWeaponDamageModifier(`WEAPON_CARBINERIFLE`, 0.8)
```
