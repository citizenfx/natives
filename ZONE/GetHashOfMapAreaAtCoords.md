---
ns: ZONE
---
## GET_HASH_OF_MAP_AREA_AT_COORDS

```c
Hash GET_HASH_OF_MAP_AREA_AT_COORDS(float x, float y, float z);
```

Returns a hash representing which part of the map the given coords are located.  

## Parameters
* **x**: 
* **y**: 
* **z**: 

## Return value
(Hash of) city -> -289320599  
(Hash of) countryside -> 2072609373  

## Examples
```lua
-- A short example getting the hash ped is currently in with Lua
local playerPed = PlayerPedId()
local pos = GetEntityCoords(playerPed) 

print(GetHashOfMapAreaAtCoords(pos.x, pos.y, pos.z))
```
```c
C# Example :  
Ped player = Game.Player.Character;  
Hash h = Function.Call<Hash>(Hash.GET_HASH_OF_MAP_AREA_AT_COORDS, player.Position.X, player.Position.Y, player.Position.Z);  
```
