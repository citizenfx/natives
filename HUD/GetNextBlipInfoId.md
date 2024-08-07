---
ns: HUD
---
## GET_NEXT_BLIP_INFO_ID

```c
// 0x14F96AA50D6FBEA7 0x9356E92F
Blip GET_NEXT_BLIP_INFO_ID(int blipSprite);
```

## Parameters
* **blipSprite**: Sprite ID, see the [Game Reference](https://docs.fivem.net/docs/game-references/blips/) for the full list.

## Return value
Returns the next blip ID in an interator that has the specified blip sprite.

## Examples
```lua
function GetAllBlipsWithSprite(blip_sprite)
  local current_blip = GetFirstBlipInfoId(blip_sprite)
  local blips_array = {}

  if not DoesBlipExist(current_blip) then 
    print('there are no blips with this sprite set') 
    return blips_array 
  end

  while DoesBlipExist(current_blip) do
    table.insert(blips_array, current_blip)
    current_blip = GetNextBlipInfoId(blip_sprite)
  end

  return blips_array
end
```
