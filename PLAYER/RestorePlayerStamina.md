---
ns: PLAYER
---
## RESTORE_PLAYER_STAMINA

```c
// 0xA352C1B864CAFD33 0x62A93608
void RESTORE_PLAYER_STAMINA(Player player, float percentage);
```
Adds a percentage to a players stamina

## Parameters
* **player**: player to restore the stamina for
* **percentage**: seems to be a percentage that ranges from 0.0 to 1.0 (1.0 being 100%)

## Examples
```lua
Citizen.CreateThread(function()
  while true do
    RestorePlayerStamina(PlayerId(), 0.3)
    Citizen.Wait(15000) -- 15 seconds
  end
end)
```
