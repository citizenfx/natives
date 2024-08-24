---
ns: MISC
---
## DISPLAY_ONSCREEN_KEYBOARD

```c
// 0x00DC833F2568DBF6 0xAD99F2CE
void DISPLAY_ONSCREEN_KEYBOARD(int keyboardType, char* windowTitle, char* description, char* defaultText, char* defaultConcat1, char* defaultConcat2, char* defaultConcat3, int maxInputLength);
```

Displays a text input box.

```c
enum eKeyboardType
{
  ONSCREEN_KEYBOARD_ENGLISH = 0,
  ONSCREEN_KEYBOARD_LOCALISED = 1,
  ONSCREEN_KEYBOARD_PASSWORD = 2,
  ONSCREEN_KEYBOARD_GAMERTAG = 3,
  ONSCREEN_KEYBOARD_EMAIL = 4,
  ONSCREEN_KEYBOARD_BASIC_ENGLISH = 5,
  ONSCREEN_KEYBOARD_FILENAME = 6
};
```

## Parameters
* **keyboardType**: See the list above. Default is `0`.
* **windowTitle**: Text label for the title of the box.
* **description**: Has no use on PC.
* **defaultText**: Default text that is written in the input field.
* **defaultConcat1**:
* **defaultConcat2**:
* **defaultConcat3**:
* **maxInputLength**: Max number of characters that can be typed (2 - 256).


## Examples
```lua
AddTextEntry("my_input_title", "Enter something cool:")

DisplayOnscreenKeyboard(0, "my_input_title", "", "", "", "", "", 30) -- Show the text input box

while UpdateOnscreenKeyboard() == 0 do Wait(0) end -- Wait for the user to stop editing

-- This block of code is reached after the user is done editing

local inputUpdate = UpdateOnscreenKeyboard()

if inputUpdate == 1 then -- User hit OK in the text input box
  local result = GetOnscreenKeyboardResult()
  print("You wrote this in the input box:", result)
elseif inputUpdate == 2 then
  print("You canceled the input!")
else -- -1 or 3
  print("An error has occurred")
end
```
