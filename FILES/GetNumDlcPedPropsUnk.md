---
ns: FILES
---
## _0xD40AAC51E8E4C663

```c
// 0xD40AAC51E8E4C663
int _0xD40AAC51E8E4C663(Hash propHash);
```

Decompiled scripts have this listed as `FILES::_GET_NUM_DLC_PED_PROPS_UNK`, but that seems wrong.

Has something to do with ped (dlc) helmet props.

This native returns 1/true when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled, 0/false if there's no alternative version with a visor for this helmet prop.


So something like `_DOES_HELMET_HASH_HAVE_A_VISOR`, anyone that knows the joaat hash?

Decompiled scripts handle this as an int. But the result is always 0 or 1 (after testing every prop hash on freemode peds). So might actually be a bool?

```
iVar16 = PED::GET_PED_PROP_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar17 = PED::GET_PED_PROP_TEXTURE_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar18 = FILES::GET_HASH_NAME_FOR_PROP(PLAYER::PLAYER_PED_ID(), 0, iVar16, iVar17);
if (FILES::_GET_NUM_DLC_PED_PROPS_UNK(iVar18) > 0) // _0xD40AAC51E8E4C663
{
    HUD::BEGIN_TEXT_COMMAND_DISPLAY_HELP("VISOR_TOGGLE");
    HUD::END_TEXT_COMMAND_DISPLAY_HELP(0, 0, true, 6000);
    iVar15++;
    func_12660(7668, iVar15, -1, 1);
    MISC::SET_BIT(&(Global_2512581.f_1710), 24);
}
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
