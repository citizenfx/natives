---
ns: NETWORK
---
## _0x9ECA15ADFE141431

```c
// 0x9ECA15ADFE141431
Any _0x9ECA15ADFE141431();
```

Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.

If you're already in SP then it'll re-load singleplayer.

You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.

Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.


## Return value
always seems to be 1
