---
ns: HUD
aliases: ["0x6DD05E9D83EFA4C9","_CREATE_MP_GAMER_TAG_COLOR","_SET_MP_GAMER_TAG_COLOR","_CREATE_MP_GAMER_TAG_FOR_NET_PLAYER"]
---
## CREATE_MP_GAMER_TAG_WITH_CREW_COLOR

```c
// 0x6DD05E9D83EFA4C9 0xC969F2D0
void CREATE_MP_GAMER_TAG_WITH_CREW_COLOR(Player player, char* username, BOOL crewIsPrivate, BOOL crewIsRockstar, char* crewName, int crewRank, int crewR, int crewG, int crewB);
```

Creates a gamer tag for the specified local player ID, automatically attached to the player's current ped.
The created gamer tag will have the same ID as the player. You can use [IS_MP_GAMER_TAG_ACTIVE](#_0x4E929E7A5796FD26) to check if a gamer tag already exists for a player.
After the gamer tag is created, all components will be set as invisible. Use [SET_MP_GAMER_TAG_VISIBILITY](#_0x63BB75ABEDC1F6A0) to change the visibility of individual components or [_SET_MP_GAMER_TAG_VISIBILITY_ALL](#_0xEE76FF7E6A0166B0) to set all of them at once.

To create a gamer tag for a ped that is not a player, see [CREATE_FAKE_MP_GAMER_TAG](#_0xBFEFE3321A3F5015).


## Parameters
* **player**: The local player ID to assign the gamer tag to.
* **username**: The name displayed on the gamer tag.
* **crewIsPrivate**: If the crew is private. Public crews have a pointed end cap, private crews do not.
* **crewIsRockstar**: If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
* **crewName**: The name of the crew.
* **crewRank**: The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.
* **crewR**: Red component of the crew colour.
* **crewG**: Green component of the crew colour.
* **crewB**: Blue component of the crew colour.


## Examples
```lua
local playerId = PlayerId() -- you can use any local player ID here

-- clear any already existing gamer tag associated with this player
if IsMpGamerTagActive(playerId) then
	RemoveMpGamerTag(playerId)

	-- wait until the gamer tag actually becomes free
	repeat Wait(0) until IsMpGamerTagFree(playerId)
end

-- create the gamer tag
CreateMpGamerTagWithCrewColor(playerId, "jaymoo", false, true, "RSG", 0, 200, 0, 200)

-- set the name, crew and typing indicator components as visible
SetMpGamerTagVisibility(playerId, 0, true)
SetMpGamerTagVisibility(playerId, 1, true)
SetMpGamerTagVisibility(playerId, 16, true)
```

