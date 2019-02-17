---
ns: HUD
---
## SET_MINIMAP_COMPONENT

```c
// 0x75A9A10948D1DEA6 0x419DCDC4
Any SET_MINIMAP_COMPONENT(int componentID, BOOL toggle, int p2);
```

This native is used to toggle map components like the army base at the top of the map.  
p2 appears to be always -1.  

An incomplete list of components ID:
```
0: Los Santos' air port yellow lift-off markers.
1: Sandy Shore's air port yellow lift-off markers.
2: Trevor's air port yellow lift-off markers.
3: Unknown.
4: Unknown.
5: Unknown.
6: Vespucci Beach lifeguard building.
7: Unknown.
8: Unknown.
15: Army base.
```

## Parameters
* **componentID**: 
* **toggle**: 
* **p2**: 

## Return value
