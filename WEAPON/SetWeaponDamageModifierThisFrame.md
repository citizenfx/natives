---
ns: WEAPON
aliases: ["0x4757F00BC6323CFE","_SET_WEAPON_DAMAGE_MODIFIER"]
---
## _SET_WEAPON_DAMAGE_MODIFIER_THIS_FRAME

```c
// 0x4757F00BC6323CFE
void _SET_WEAPON_DAMAGE_MODIFIER_THIS_FRAME(Hash weaponHash, float damageMultiplier);
```

Changes the weapon damage output by the given multiplier value. Must be run every frame.

## Parameters
* **weaponHash**: Hash of the weapon
* **damageMultiplier**: Damage Multiplier

## Example

```lua
Citizen.CreateThread(function()
    while true do
        SetWeaponDamageModifier(GetHashKey("WEAPON_CARBINERIFLE"), 0.8) 
        Wait(0)
        SetWeaponDamageModifier(GetHashKey("WEAPON_PISTOL"), 0.8) 
        Wait(0)
    end
end)
```
