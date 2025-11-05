---
ns: SCRIPT
---
## SHUTDOWN_LOADING_SCREEN

```c
// 0x078EBE9809CCD637 0xA2826D17
void SHUTDOWN_LOADING_SCREEN();
```

Shuts down the loading screen and switches to normal game view. Should only be used by [spawnmanager](https://docs.fivem.net/docs/resources/spawnmanager/) or similar resources after loading and spawning the player ped. If no script does this, the game is stuck in the infamous bridge screen with the "Awaiting scripts" text and loading circle at the bottom right corner.

![](https://i.imgur.com/WULopNH.jpeg)

## Examples

```lua
ShutdownLoadingScreen()
```
