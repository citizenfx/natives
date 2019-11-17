---
ns: FILES
aliases: ["0xD40AAC51E8E4C663"]
---
## _GET_SHOP_PED_APPAREL_VARIANT_PROP_COUNT

```c
// 0xD40AAC51E8E4C663
int _GET_SHOP_PED_APPAREL_VARIANT_PROP_COUNT(Hash propHash);
```

## Parameters
* **propHash**: Ped helmet prop hash

## Return value
This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version with a visor for this helmet prop.


## Examples
```lua
local iVar16 = GetPedPropIndex(PlayerPedId(), 0) -- helmet prop index
local iVar17 = GetPedPropTextureIndex(PlayerPedId(), 0) -- helmet prop index
local iVar18 = GetHashNameForProp(PlayerPedId(), 0, iVar16, iVar17) -- gets the hash name for the helmet
if N_0xd40aac51e8e4c663(iVar18) > 0 then -- visor variant so can toggle the visor
    BeginTextCommandDisplayHelp("VISOR_TOGGLE") -- Hold ~INPUT_SWITCH_VISOR~ to flip your helmet visor open or closed when on foot or on a motorcycle. You can also set the default state of your Helmet Visor in the Style section of the Interaction menu.
    EndTextCommandDisplayHelp(0, 0, true, 6000)
end
```
