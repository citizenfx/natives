---
ns: PLAYER
aliases: ["0x5FC472C501CCADB3"]
---
## GET_IS_PLAYER_DRIVING_ON_HIGHWAY

```c
// 0x5FC472C501CCADB3 0x46E7E31D
BOOL GET_IS_PLAYER_DRIVING_ON_HIGHWAY(Player playerId);
```

## Parameters
* **playerId**: The local index of the player to check (see [PLAYER_ID](#_0x4F8644AF03D0E0D6))

## Return value
Returns a boolean value representing if the player is driving on a highway.

## Examples
```lua
-- Get and store the local player index
local playerId = PlayerId()

if GetIsPlayerDrivingOnHighway(playerId) then
    print("Player is driving on a highway!")
else
    print("Player is not driving on a highway.")
end
```