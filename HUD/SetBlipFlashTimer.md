---
ns: HUD
---
## SET_BLIP_FLASH_TIMER

```c
// 0xD3CD6FD297AE87CC 0x8D5DF611
void SET_BLIP_FLASH_TIMER(Blip blip, int duration);
```

Flashes blip for time in milliseconds before stopping.

## Parameters
* **blip**: The blip to start flashing
* **duration**: Time in milliseconds to flash the blip before stopping

## Examples
```lua
local blip = AddBlipForCoord(0, 0, 0)

-- flash blip for seven seconds then stop
SetBlipFlashTimer(blip, 7000)
```

```js
const blip = AddBlipForCoord(0, 0, 0)

//flash blip for seven seconds then stop
SetBlipFlashTimer(blip, 7000)
```
