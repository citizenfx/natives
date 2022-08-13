---
ns: HUD
aliases: ["0x10BDDBFC529428DD"]
---
## END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED

```c
// 0x10BDDBFC529428DD 0xF63A13EC
BOOL END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(int hudIndex);
```


## Parameters
* **hudIndex**: The hud index for help message. `0` is `HELP_TEXT`, `1` and `2` is `FLOATING_HELP_TEXT_1` and `FLOATING_HELP_TEXT_2`.

## Return value
```true```: Indicates if the specific help message has been displayed. ```false```: Indicates that the specific help message is still being displayed.
