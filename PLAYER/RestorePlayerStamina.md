---
ns: PLAYER
---
## RESTORE_PLAYER_STAMINA

```c
// 0xA352C1B864CAFD33 0x62A93608
void RESTORE_PLAYER_STAMINA(Player player, float p1);
```
Regenerate a players stamina. Unsure if p1 is some sort of multiplier or regen speed, need to look into this 🤔.

Mentioned once in triathlonsp.c4 line ~60019
sub_5a268 gets used a few times in the function above it, line ~59981

## Parameters
* **player**: player to restore the stamina for
* **p1**: could be regeneration speed or amount

## Examples
```lua
Citizen.CreateThread(function()
  while true do
    RestorePlayerStamina(PlayerId(), 0.3)
    Citizen.Wait(15000) -- 15 seconds
  end
end)
```
