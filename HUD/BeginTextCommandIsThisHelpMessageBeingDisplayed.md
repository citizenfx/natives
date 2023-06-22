---
ns: HUD
aliases: ["0x0A24DA3A41B718F5"]
---
## BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED

```c
// 0x0A24DA3A41B718F5 0x00E20F2D
void BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(char* labelName);
```

## Parameters
* **labelName**: Text entry name. This can be created using [`AddTextEntry`](#_0x32CA01C3).

## Examples
```lua
-- Create new text entry
AddTextEntry('TEST_LABEL', 'Hello world.')

-- Draw help message
BeginTextCommandDisplayHelp('TEST_LABEL')
EndTextCommandDisplayHelp(0, false, true, -1)

-- Test if the message has been displayed
BeginTextCommandIsThisHelpMessageBeingDisplayed("TEST_LABEL")
local isDisplayed = EndTextCommandIsThisHelpMessageBeingDisplayed(0)
```
