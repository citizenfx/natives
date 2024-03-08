---
ns: WEAPON
---
## GET_WEAPONTYPE_GROUP

```c
// 0xC3287EE3050FB74C 0x5F2DE833
Hash GET_WEAPONTYPE_GROUP(Hash weaponHash);
```

Gets and returns the hash of the group of the specified weapon (group names can be found/changed under "Group" in the weapons' meta file).
Note that the group is **not** the same as the location on the weapon wheel.

## Parameters
* **weaponHash**: The hash of the weapon.

## Return value

Returns the hash of the group of the weapon. Hashes:

| Group                  | Unsigned   | Signed      | Example                 |
|:----------------------:|:----------:|:-----------:|:-----------------------:|
| GROUP_DIGISCANNER      | 3539449195 | -755518101  | WEAPON_DIGISCANNER      |
| GROUP_FIREEXTINGUISHER | 4257178988 | -37788308   | WEAPON_FIREEXTINGUISHER |
| GROUP_HACKINGDEVICE    | 1175761940 | 1175761940  | WEAPON_HACKINGDEVICE    |
| GROUP_HEAVY            | 2725924767 | -1569042529 | WEAPON_RPG              |
| GROUP_MELEE            | 3566412244 | -728555052  | WEAPON_BAT              |
| GROUP_METALDETECTOR    | 3759491383 | -535475913  | WEAPON_METALDETECTOR    |
| GROUP_MG               | 1159398588 | 1159398588  | WEAPON_COMBATMG         |
| GROUP_NIGHTVISION      | 3493187224 | -801780072  | GADGET_NIGHTVISION      |
| GROUP_PARACHUTE        | 431593103  | 431593103   | GADGET_PARACHUTE        |
| GROUP_PETROLCAN        | 1595662460 | 1595662460  | WEAPON_PETROLCAN        |
| GROUP_PISTOL           | 416676503  | 416676503   | WEAPON_PISTOL           |
| GROUP_RIFLE            | 970310034  | 970310034   | WEAPON_ASSAULTRIFLE     |
| GROUP_SHOTGUN          | 860033945  | 860033945   | WEAPON_PUMPSHOTGUN      |
| GROUP_SMG              | 3337201093 | -957766203  | WEAPON_MICROSMG         |
| GROUP_SNIPER           | 3082541095 | -1212426201 | WEAPON_SNIPERRIFLE      |
| GROUP_STUNGUN          | 690389602  | 690389602   | WEAPON_STUNGUN          |
| GROUP_THROWN           | 1548507267 | 1548507267  | WEAPON_SNOWBALL         |
| GROUP_TRANQILIZER      | 75159441   | 75159441    | WEAPON_TRANQUILIZER     |
| GROUP_UNARMED          | 2685387236 | -1609580060 | WEAPON_UNARMED          |

## Examples
```lua
print(GetWeapontypeGroup(`WEAPON_PISTOL`)) -- Outputs the hash of GROUP_PISTOL
print(GetWeapontypeGroup(`WEAPON_RPG`)) -- Outputs the hash of GROUP_HEAVY
print(GetWeapontypeGroup(`WEAPON_SNOWBALL`)) -- Outputs the hash of GROUP_THROWN
print(GetWeapontypeGroup(`WEAPON_MUSKET`)) -- Outputs the hash of GROUP_SNIPER
print(GetWeapontypeGroup(GetSelectedPedWeapon(PlayerPedId()))) -- Outputs the hash of the currently selected weapon
```

```js
console.log(GetWeapontypeGroup(`WEAPON_PISTOL`)); // Outputs the hash of GROUP_PISTOL
console.log(GetWeapontypeGroup(`WEAPON_RPG`)); // Outputs the hash of GROUP_HEAVY
console.log(GetWeapontypeGroup(`WEAPON_SNOWBALL`)); // Outputs the hash of GROUP_THROWN
console.log(GetWeapontypeGroup(`WEAPON_MUSKET`)); // Outputs the hash of GROUP_SNIPER
console.log(GetWeapontypeGroup(GetSelectedPedWeapon(PlayerPedId()))); // Outputs the hash of the currently selected weapon
```