---
ns: PLAYER
---
## _0xFF300C7649724A0B

```c
// 0xFF300C7649724A0B 0xAD8383FA
void _0xFF300C7649724A0B(Player player, BOOL p1);
```

```
gets byte at offset 0x862 in the specified players data (ped data + 0xbd0) and stores the bool p1 in it.  
lwz       r3, 0xBD0(r3) ;r3 is player data  
lbz       r4, 0x862(r3) ;r4 is now the byte  
insrwi    r4, r31, 1,28 ;stores p1 as a bit in place 28 idk  
stb       r4, 0x862(r3) ; puts the newly modified one back in  
SET_PLAYER_*  
```

## Parameters
* **player**: 
* **p1**: 

