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
local weapon = `WEAPON_ASSAULTRIFLE`

RequestWeaponAsset(weapon)

while not HasWeaponAssetLoaded(weapon) do
    Wait(0)
end

local coords = GetEntityCoords(PlayerPedId())

CreateWeaponObject(weapon, 0, coords.xyz)
```

```js
let weapon = 'WEAPON_ASSAULTRIFLE';

Delay = (ms) => new Promise(res => setTimeout(res, ms));

RequestWeaponAsset(weapon);

(async () => {
    while (!HasWeaponAssetLoaded(weapon)) {
        await Delay(10);
    }

    let coords = GetEntityCoords(PlayerPedId());

    CreateWeaponObject(weapon, 0, coords[0], coords[1], coords[2]);
})();
```
