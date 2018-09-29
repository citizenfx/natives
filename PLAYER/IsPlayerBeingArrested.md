---
ns: PLAYER
---
## IS_PLAYER_BEING_ARRESTED

```c
// 0x388A47C51ABDAC8E 0x7F6A60D3
BOOL IS_PLAYER_BEING_ARRESTED(Player player, BOOL atArresting);
```

```
Return true while player is being arrested / busted.  
If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
```

## Parameters
* **player**: 
* **atArresting**: 

## Return value
