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
* **hudIndex**: The hud index for help message.
```csharp
enum HudIndexes {
    HELP_TEXT = 0,
    FLOATING_HELP_TEXT_1 = 1,
    FLOATING_HELP_TEXT_2 = 2,
}
```

## Return value
`true`: Indicates if the specific help message has been displayed.\
`false`: Indicates that the specific help message is still being displayed.
