---
ns: WEAPON
---
## CREATE_WEAPON_OBJECT

```c
// 0x9541D3CF0D398F36 0x62F5987F
Object CREATE_WEAPON_OBJECT(Hash weaponHash, int ammoCount, float x, float y, float z, BOOL showWorldModel, float size, Any p7);
```

```
Now has 8 params.  
```

```
NativeDB Added Parameter 9: Any p8
NativeDB Added Parameter 10: Any p9
```

```
To be able to create a weapon object you'll need to request the weapon asset with the REQUEST_WEAPON_ASSET native
```

## Parameters
* **weaponHash**: 
* **ammoCount**: 
* **x**: 
* **y**: 
* **z**: 
* **showWorldModel**: 
* **size**: 
* **p7**: 

## Return value

## Examples

```lua
RequestWeaponAsset('WEAPON_ASSAULTRIFLE')

local coords = GetEntityCoords(PlayerPedId())

CreateWeaponObject('WEAPON_ASSAULTRIFLE', 0, coords[0], coords[1], coords[2])
```

```js
RequestWeaponAsset('WEAPON_ASSAULTRIFLE');

let coords = GetEntityCoords(PlayerPedId());

CreateWeaponObject('WEAPON_ASSAULTRIFLE', 0, coords[0], coords[1], coords[2]);
```
