---
ns: PLAYER
---
## IS_PLAYER_ONLINE

```c
// 0xF25D331DC2627BBC 0x9FAB6729
BOOL IS_PLAYER_ONLINE();
```

It returns true if the player is online, suggesting they are also logged in locally. Note that this is an alias for `NETWORK_IS_SIGNED_ONLINE`.

## Return value
It provides a true value if the game is in online mode and false if it's in offline mode.