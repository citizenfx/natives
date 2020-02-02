---
ns: PLAYER
---
## SET_PLAYER_CONTROL

```c
// 0x8D32347D6D4C40A2 0xD17AFCD8
void SET_PLAYER_CONTROL(Player player, BOOL bHasControl, int flags);
```

```
Flags used in the scripts: 0,4,16,24,32,56,60,64,128,134,256,260,384,512,640,768,896,900,952,1024,1280,2048,2560  
Note to people who needs this with camera mods, etc.:   
Flags(0, 4, 16, 24, 32, 56, 60, 64, 128, 134, 512, 640, 1024, 2048, 2560)  
- Disables camera rotation as well.  
Flags(256, 260, 384, 768, 896, 900, 952, 1280)  
[ translation: cameraRotation = flags & (1 << 8) - sfink]  
```

## Parameters
* **player**: 
* **bHasControl**: 
* **flags**: 

