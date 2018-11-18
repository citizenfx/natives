---
ns: HUD
aliases: ["0x23C3EB807312F01A"]
---
## _SET_BLIP_FRIEND

```c
// 0x23C3EB807312F01A 0x4C8F02B4
void _SET_BLIP_FRIEND(Blip blip, BOOL toggle);
```


Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend. This color can not be changed.
To toggle the left side (crew member indicator) of the half circle around the blip, use: [`_0xDCFB5D4DB8BF367E`](#_0xDCFB5D4DB8BF367E).


## Parameters
* **blip**: The blip to toggle the half circle on.
* **toggle**: Enables or disables the half circle around the blip (on the right side of the blip).

