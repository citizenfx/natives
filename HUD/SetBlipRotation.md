---
ns: HUD
---
## SET_BLIP_ROTATION

```c
// 0xF87683CDF73C3F6E 0x6B8F44FE
void SET_BLIP_ROTATION(Blip blip, int rotation);
```

```
After some testing, looks like you need to use CEIL() on the rotation (vehicle/ped heading) before using it there.
```

## Parameters
* **blip**: 
* **rotation**: 

