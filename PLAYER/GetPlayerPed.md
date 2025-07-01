---
ns: PLAYER
---
## GET_PLAYER_PED

```c
// 0x43A66C31C68491C0 0x6E31E993
Ped GET_PLAYER_PED(Player playerId);
```

Gets the ped for a specified player index.

Note: For performance reasons, usage of [`PLAYER_PED_ID`](#_0xD80958FC74E988A6) is recommended over the use of `GetPlayerPed(-1)` when wanting to acquire your local player ped. For more information, please refer to [this](https://forum.cfx.re/t/question-difference-between-getplayerped-1-and-playerpedid/539437/2) forum post.

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