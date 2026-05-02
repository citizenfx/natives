---
ns: PED
aliases: [ "0xB8B52E498014F5B0" ]
---
## IS_PED_SHELTERED

```c
// 0xB8B52E498014F5B0
BOOL IS_PED_SHELTERED(Ped ped);
```

Returns whether the specified ped is currently sheltered.
A ped is considered sheltered if they are under a **roof**, a **bridge**, inside a **tunnel**, or within a **vehicle with a solid roof**, meaning they are not directly exposed to the open sky.

## Parameters
* **ped**: The ped entity to check.

## Return value
Returns `true` if the ped is sheltered, `false` otherwise.

## Examples
```lua
-- Check if the player's ped is currently under a shelter.
local playerPed = PlayerPedId()
local isSheltered = IsPedSheltered(playerPed)

if isSheltered then
    print("The player is currently sheltered.")
else
    print("The player is out in the open.")
end
```

```js
// Check if the player's ped is currently under a shelter.
const playerPed = PlayerPedId();
const isSheltered = IsPedSheltered(playerPed);

if (isSheltered) {
    console.log("The player is currently sheltered.");
} else {
    console.log("The player is out in the open.");
}
```

```cs
using static CitizenFX.Core.Native.API;

// Check if the player's ped is currently under a shelter.
int playerPed = PlayerPedId();
bool isSheltered = IsPedSheltered(playerPed);

if (isSheltered)
{
    Debug.WriteLine("The player is currently sheltered.");
}
else
{
    Debug.WriteLine("The player is out in the open.");
}
```
