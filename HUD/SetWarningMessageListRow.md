---
ns: HUD
aliases: ["0x0C5A80A9E096D529"]
---
## SET_WARNING_MESSAGE_LIST_ROW

```c
// 0x0C5A80A9E096D529
BOOL SET_WARNING_MESSAGE_LIST_ROW(int index, char* name, int cash, int rp, int lvl, int colour);
```

Some sort of list displayed in a warning message. Yet unknown how to prevent repeating.

Param names copied from the corresponding scaleform function "SET_LIST_ROW".

**Result of the example code:**
[https://i.imgur.com/arKvOYx.png](https://i.imgur.com/arKvOYx.png)

## Parameters
* **index**: Row index of the list item
* **name**: Unknown effect
* **cash**: Unknown effect
* **rp**: Unknown effect
* **lvl**: Level displayed in the globe on the right side of a row
* **colour**: Unknown effect

## Return value

## Examples
```lua
AddTextEntry("warning_message_first_line", "This is the first line.")
AddTextEntry("warning_message_second_line", "This is the second line!")
AddTextEntry("warning_message_name", "Hello World")

Citizen.CreatThread(function()
    while true do
        SetWarningMessage("warning_message_first_line", 82, "warning_message_second_line", 0, -1, true, 0, 0, 0)
        SetWarningMessageListRow(1, "warning_message_name", 1, 1, 1, 1)
    end
end)
```