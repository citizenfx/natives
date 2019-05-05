---
ns: HUD
aliases: ["_SET_WARNING_MESSAGE_2"]
---
## SET_WARNING_MESSAGE_WITH_HEADER

```c
// 0xDC38CC1E35B6A5D7 0x2DB9EAB5
void SET_WARNING_MESSAGE_WITH_HEADER(char* entryHeader, char* entryLine1, int instructionalKey, char* entryLine2, BOOL p4, Any p5, Any* p6, BOOL showBackground, Any* p7, BOOL p8);
```

Shows a warning message on screen with a header.

Note: You can only use text entries. No custom text. You can recreate this easily with scaleforms.

**Result of the example code:**
[https://i.imgur.com/ITJt8bJ.png](https://i.imgur.com/ITJt8bJ.png)

## Parameters
* **entryHeader**: The text label to display as the header.
* **entryLine1**: The text label to display as the first line of the warning message.
* **instructionalKey**: This is an enum, check the description for a list (See SET_WARNING_MESSAGE).
* **entryLine2**: The text label to display as the second line of the warning message.
* **p4**:
* **p5**:
* **p6**: 
* **showBackground**:
* **p7**:
* **p8**:

## Examples
```lua
CreateThread(function()
    while true do
        Wait(0)
        SetWarningMessageWithHeader("HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 1, 0, 1)

        if(IsControlJustReleased(2, 201) or IsControlJustReleased(2, 217)) then -- any select/confirm key was pressed.
            break -- break to stop displaying warning message
        end
    end
end)
```
```csharp
[Tick]
private async Task OnTick()
{
    await Task.FromResult(0);
    SetWarningMessageWithHeader("HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", false, -1, 0, true, 0, true);
    if(Game.IsControlJustReleased(2, Control.FrontendAccept) || Game.IsControlJustReleased(2, Control.FrontendSelect)) // any select/confirm key was pressed.
    {
        Tick -= OnTick; // unsubscribe from tick handler to stop displaying warning message
    }
}
```