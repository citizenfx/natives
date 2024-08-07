---
ns: HUD
aliases: ["0xBFEFE3321A3F5015", "_CREATE_MP_GAMER_TAG"]
---
## CREATE_FAKE_MP_GAMER_TAG

```c
// 0xBFEFE3321A3F5015 0xF5CD2AA4
int CREATE_FAKE_MP_GAMER_TAG(Ped ped, char* username, BOOL crewIsPrivate, BOOL crewIsRockstar, char* crewName, int crewRank);
```

As per the name, this native creates a "fake" gamer tag that is attached to a specific ped.
Unlike "real" gamer tags, you cannot set the crew colour of these gamer tags.

To create gamer tags for actual players and for more gamer tag information, see [CREATE_MP_GAMER_TAG_WITH_CREW_COLOR](#_0x6DD05E9D83EFA4C9).


## Parameters
* **ped**: The ped that the fake gamer tag will be attached to.
* **username**: The name displayed on the gamer tag.
* **crewIsPrivate**: If the crew is private. Public crews have a pointed end cap, private crews do not.
* **crewIsRockstar**: If the crew is a Rockstar crew. Rockstar crews include a Rockstar logo before the name.
* **crewName**: The name of the crew.
* **crewRank**: The rank from 1-5 that the player is within the crew. Use 0 if the player is the founder of the crew. Only relevant for private crews.


## Return value
The ID of the new gamer tag.
