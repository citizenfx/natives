---
ns: HUD
aliases: [ "0x41350B4FC28E3941" ]
---
## SET_PM_WARNINGSCREEN_ACTIVE

```c
// 0x41350B4FC28E3941
void SET_PM_WARNINGSCREEN_ACTIVE(BOOL isActive);
```
Doesn't seem to change anything visual and input-wise. Scripts use this in conjuction with the [`SHOW_WARNING_MESSAGE`](#_0xAB58C27C2E6123C6) scaleform function.
Example of a "Pause Menu Warning Screen":
![](https://imgur.com/a/LJERmPC)

## Parameters
* **isActive**: Lets the game code know that a pause menu warning message is active.

