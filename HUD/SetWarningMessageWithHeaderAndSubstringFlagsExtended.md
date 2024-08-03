---
ns: HUD
aliases: ["0x15803FEC3B9A872B","_DRAW_FRONTEND_ALERT", "_SET_WARNING_MESSAGE_WITH_ALERT"]
---
## SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED

```c
// 0x15803FEC3B9A872B
cs_type(Any) void SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED(char* headerTextLabel, char* line1TextLabel, int buttonsBitFieldLower, int buttonsBitFieldUpper, char* line2TextLabel, cs_type(int) BOOL addNumber, int numberToAdd, int substringFlags, char* substring1, char* substring2, BOOL showBackground, int errorCode);
```

Shows the warning screen but also allows setting subtitle flags and button bit fields that are above the standard 32 bit set.

Upper bit field button indices:
```
enum FE_WARNING_FLAGS_EXTENDED
{
	No = 1 << 0,
	Host = 1 << 1,
	AnyJob = 1 << 2,
	NoText = 1 << 3,
	FreeMode = 1 << 4
};
```

## Parameters
* **headerTextLabel**: Label of the alert's title. 
* **line1TextLabel**: Label of the alert's message.
* **buttonsBitFieldLower**: Standard warning message buttons bit field, see [`SET_WARNING_MESSAGE`](#_0x7B1776B3B53F8D74)
* **buttonsBitFieldUpper**: Buttons bit field (Values from the table above combined with the `|` operator) which is above the 32 bit set. 
* **line2TextLabel**: Label of another message line
* **addNumber**: Boolean indicating if a number should be inserted into body's `~1~`.
* **numberToAdd**: If `addNumber` is true, this number is inserted into `~1~`.
* **substringFlags**: 0 - Default, 1 - First substring is raw text, 2 - Second substring is raw text.
* **substring1**: First substring to insert into `~a~`.
* **substring2**: Second substring to insert into `~a~`.
* **showBackground**: Bool indicating if the black background should be shown.
* **errorCode**: Error code, shown at the bottom left if set to value other than 0.

## Examples
```lua
Citizen.CreateThread(function()
	AddTextEntry("mywarningtitle", "Nice title")
	AddTextEntry("mywarningline1", "Cool message with custom text: ~a~")
	AddTextEntry("mywarningline2", "Cool message 2)
	while not IsControlJustReleased(2, 201) and not IsControlJustReleased(2, 202) do -- Run loop until we press enter or esc
		Citizen.Wait(0)
		SetWarningMessageWithHeaderAndSubstringFlagsExtended('mywarningtitle', 'mywarningline1', 1 << 1 | 1 << 4 --[[ Lower Buttons ]], 1 << 4 | 1 << 1 --[[ Upper Buttons ]], 'mywarningline2', false, -1, 1, 'My custom text', '', true, 0)
	end
end)
```
