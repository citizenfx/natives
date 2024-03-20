---
ns: WEAPON
---
## CAN_USE_WEAPON_ON_PARACHUTE

```c
// 0xBC7BE5ABC0879F74 0x135E7AD4
BOOL CAN_USE_WEAPON_ON_PARACHUTE(Hash weaponHash);
```

Determines if a specific weapon can be used by a player while parachuting.

```
NativeDB Introduced: v323
```

## Parameters
* **weaponHash**: The hash of the weapon to check.

## Return value
Returns `true` if the weapon can be used while parachuting.

## Examples
```lua
-- Retrieve the hash for the pistol weapon.
local weaponHash = GetHashKey("WEAPON_PISTOL")

-- Check if the weapon can be used while parachuting by passing the weapon hash to the function.
local canUseWeaponOnParachute = CanUseWeaponOnParachute(weaponHash)

if canUseWeaponOnParachute then
    -- If the weapon can be used while parachuting, print a confirmation message.
    print("The player can use this weapon while parachuting.")
else
    -- If the weapon cannot be used while parachuting, print a denial message.
    print("The player can't use this weapon while parachuting.")
end
```

```js
// Retrieve the hash for the pistol weapon.
const weaponHash = GetHashKey("WEAPON_PISTOL");

// Check if the weapon can be used while parachuting by passing the weapon hash to the function.
const canUseWeaponOnParachute = CanUseWeaponOnParachute(weaponHash);

if (canUseWeaponOnParachute) {
    // If the weapon can be used while parachuting, print a confirmation message.
    console.log("The player can use this weapon while parachuting.");
} else {
    // If the weapon cannot be used while parachuting, print a denial message.
    console.log("The player can't use this weapon while parachuting.");
}
```

```csharp
using static CitizenFX.Core.Native.API;

// Retrieve the hash for the pistol weapon.
uint weaponHash = (uint)GetHashKey("WEAPON_PISTOL");

// Check if the weapon can be used while parachuting by passing the weapon hash to the function.
bool canUseWeaponOnParachute = CanUseWeaponOnParachute(weaponHash);

if (canUseWeaponOnParachute) {
    // If the weapon can be used while parachuting, print a confirmation message.
    Debug.WriteLine("The player can use this weapon while parachuting.");
} else {
    // If the weapon cannot be used while parachuting, print a denial message.
    Debug.WriteLine("The player can't use this weapon while parachuting.");
}
```