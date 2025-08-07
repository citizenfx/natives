---
ns: HUD
---
## SET_WARNING_MESSAGE

```c
// 0x7B1776B3B53F8D74 0xBE699BDE
void SET_WARNING_MESSAGE(char* entryLine1, int instructionalKey, char* entryLine2, BOOL p3, int p4, cs_type(AnyPtr) char* background, cs_type(AnyPtr) char* p6, BOOL showBg, int errorCode);
```

```c
enum eInstructionalButtonTypes
{
    NONE = 0,
    SELECT = 1,
    OK = 2,
    YES = 4,
    BACK = 8,
    BACK_SELECT = 9,
    BACK_OK = 10,
    BACK_YES = 12,
    CANCEL = 16,
    CANCEL_SELECT = 17,
    CANCEL_OK = 18,
    CANCEL_YES = 20,
    NO = 32,
    NO_SELECT = 33,
    NO_OK = 34,
    YES_NO = 36,
    RETRY = 64,
    RETRY_SELECT = 65,
    RETRY_OK = 66,
    RETRY_YES = 68,
    RETRY_BACK = 72,
    RETRY_BACK_SELECT = 73,
    RETRY_BACK_OK = 74,
    RETRY_BACK_YES = 76,
    RETRY_CANCEL = 80,
    RETRY_CANCEL_SELECT = 81,
    RETRY_CANCEL_OK = 82,
    RETRY_CANCEL_YES = 84,
    SKIP = 256,
    SKIP_SELECT = 257,
    SKIP_OK = 258,
    SKIP_YES = 260,
    SKIP_BACK = 264,
    SKIP_BACK_SELECT = 265,
    SKIP_BACK_OK = 266,
    SKIP_BACK_YES = 268,
    SKIP_CANCEL = 272,
    SKIP_CANCEL_SELECT = 273,
    SKIP_CANCEL_OK = 274,
    SKIP_CANCEL_YES = 276,
    CONTINUE = 16384,
    BACK_CONTINUE = 16392,
    CANCEL_CONTINUE = 16400,
    LOADING_SPINNER = 134217728,
    SELECT_LOADING_SPINNER = 134217729,
    OK_LOADING_SPINNER = 134217730,
    YES_LOADING_SPINNER = 134217732,
    BACK_LOADING_SPINNER = 134217736,
    BACK_SELECT_LOADING_SPINNER = 134217737,
    BACK_OK_LOADING_SPINNER = 134217738,
    BACK_YES_LOADING_SPINNER = 134217740,
    CANCEL_LOADING_SPINNER = 134217744,
    CANCEL_SELECT_LOADING_SPINNER = 134217745,
    CANCEL_OK_LOADING_SPINNER = 134217746,
    CANCEL_YES_LOADING_SPINNER = 134217748
}
```

Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.

**Result of the example code:**
[https://i.imgur.com/imwoimm.png](https://i.imgur.com/imwoimm.png)


## Parameters
* **entryLine1**: The text label to display as the first line of the warning message.
* **instructionalKey**: This is an enum, check the description for a list.
* **entryLine2**: The text label to display as the second line of the warning message.
* **p3**: Purpose unknown.
* **p4**: Purpose unknown.
* **background**: Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
* **p6**: Purpose unknown.
* **showBg**: Purpose unknown.
* **errorCode**: When not 0, adds a field displaying the value as 'error code' to the warning message.




## Examples
```lua
-- Make the first line using custom text.
AddTextEntry("warning_message_first_line", "This is the first line.")

-- Make the second line using custom text.
AddTextEntry("warning_message_second_line", "This is the second line!")

-- Add an event handler for when the screen is dismissed.
AddEventHandler("optionSelected", function(selected)
    print(selected) -- do whatever you want with the selected choice.
    -- players can either press the physicial buttons, or they can click
    -- the instructional buttons with their mouse and it will trigger
    -- the event as well.
end)


-- Create a thread to loop this warning message.
CreateThread(function()
    while true do
        Wait(0)
        -- Display the warning message every tick.
        SetWarningMessage("warning_message_first_line", 82, "warning_message_second_line", 0, -1, true, 0, 0, 0)
        
        -- Check for key presses or instructional button clicks.
        -- Input group of 2 is required for this to work while the warning is being displayed.
        
        if (IsControlJustReleased(2, 201) or IsControlJustReleased(2, 217)) then -- any select/confirm key was pressed.
            TriggerEvent("optionSelected", "select")
            break
        elseif (IsControlJustReleased(2, 203)) then -- spacebar/x on controller (alt option) was pressed.
            TriggerEvent("optionSelected", "alt")
            break
        elseif (IsControlJustReleased(2, 202)) then -- any of the cancel/back buttons was pressed
            TriggerEvent("optionSelected", "cancel")
            break
        end
    end
end)
```
