---
ns: PLAYER
---
## DISABLE_PLAYER_FIRING

```c
// 0x5E6CC07646BBEAB8 0x30CB28CB
void DISABLE_PLAYER_FIRING(Player player, BOOL toggle);
```


Inhibits the player from using any method of combat including melee and firearms.  
NOTE: Only disables the firing for one frame  

## Parameters
* **player**: The player for which to disable combat methods.
* **toggle**: Unused, as this native will disable combat regardless of the value of this parameter.

