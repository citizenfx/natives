---
ns: ZONE
---
## GET_HASH_OF_MAP_AREA_AT_COORDS

```c
// 0x7EE64D51E8498728 0xB5C5C99B
Hash GET_HASH_OF_MAP_AREA_AT_COORDS(float x, float y, float z);
```

```
Returns a hash representing which part of the map the given coords are located.  
Possible return values:  
(Hash of) city -> -289320599  
(Hash of) countryside -> 2072609373  
C# Example :  
Ped player = Game.Player.Character;  
Hash h = Function.Call<Hash>(Hash.GET_HASH_OF_MAP_AREA_AT_COORDS, player.Position.X, player.Position.Y, player.Position.Z);  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 

## Return value
