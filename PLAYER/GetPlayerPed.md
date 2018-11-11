---
ns: PLAYER
---
## GET_PLAYER_PED

```c
// 0x43A66C31C68491C0 0x6E31E993
Ped GET_PLAYER_PED(Player playerId);
```

Gets the ped for a specified player index.

## Parameters
* **playerId**: The player index, or -1 to get the local player ped.

## Return value
The specified player's ped, or 0 if invalid.

## Examples
```lua
local playerIdx = GetPlayerFromServerId(source)
local ped = GetPlayerPed(playerIdx)

-- act on the ped
```