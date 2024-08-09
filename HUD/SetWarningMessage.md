---
ns: HUD
---
## SET_WARNING_MESSAGE

```c
// 0x7B1776B3B53F8D74 0xBE699BDE
void SET_WARNING_MESSAGE(char* line1TextLabel, int buttonsBitField, char* line2TextLabel, BOOL addNumber, int numberToAdd, cs_type(AnyPtr) char* substring1TextLabel, cs_type(AnyPtr) char* substring2TextLabel, BOOL showBg, int errorCode);
```

Displays a warning screen for one frame.

Available buttons for `buttonsBitField` (Can be combined with the `|` operator, for example: `(1 << 1 | 1 << 6 | 1 << 13...)`):
See the [`Controls Game Reference`](https://docs.fivem.net/docs/game-references/controls/) for information about Button Inputs.

| Button Index      | Button Text | Button Input | Notes                      |
| :---------------: | :---------: | :----------: |:---------------------------:|
| 1 << 0            | Select      | INPUT_FRONTEND_ACCEPT | None |
| 1 << 1            | OK          | INPUT_FRONTEND_ACCEPT | None |
| 1 << 2            | Yes          | INPUT_FRONTEND_ACCEPT | None |
| 1 << 3            | Back          | INPUT_FRONTEND_CANCEL | None |
| 1 << 4            | Cancel          | INPUT_FRONTEND_CANCEL | None |
| 1 << 5            | No          | INPUT_FRONTEND_CANCEL | None |
| 1 << 6            | Retry          | INPUT_FRONTEND_X | None |
| 1 << 7            | Restart          | INPUT_FRONTEND_X | None |
| 1 << 8            | Skip         | INPUT_FRONTEND_X | None |
| 1 << 9            | Quit         | INPUT_FRONTEND_CANCEL | None |
| 1 << 10            | Adjust         | INPUTGROUP_FRONTEND_DPAD_LR | Adjust with left/right keyboard arrow icons |
| 1 << 11            | Ignore          | INPUT_FRONTEND_X | None |
| 1 << 12           | Share          | INPUT_FRONTEND_X | None |
| 1 << 13           | Log In          | INPUT_FRONTEND_X | None |
| 1 << 14            | Continue          | INPUT_FRONTEND_ACCEPT | None |
| 1 << 15            | Adjust          | None | Adjust with left/right arrow icons |
| 1 << 16            | Scroll          | None | Sets scroll button with up and down arrow icons |
| 1 << 17            | Overwrite          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 18            | Rockstar Games Sign Up          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 19            | Confirm          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 20            | Queue          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 21            | Retry          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 22            | Back          | INPUT_FRONTEND_CANCEL | Same as button index #3 but plays select sound instead of cancel.  |
| 1 << 23            | Rockstar Games          | INPUT_FRONTEND_ACCEPT | This button\'s text label is `IB_UPDATE_SOCIAL_CLUB`, so it's used for updating the game.  |
| 1 << 24            | Spectate          | INPUT_FRONTEND_X | None  |
| 1 << 25            | OK          | INPUT_FRONTEND_CANCEL | OK with CANCEL instead of ACCEPT.  |
| 1 << 26            | Cancel Transfer          | INPUT_FRONTEND_CANCEL |  |
| 1 << 27            | Nothing          | None | Sets the loading spinner icon.  |
| 1 << 28            | No - Return to Grand Theft Auto V         | INPUT_FRONTEND_CANCEL | None |
| 1 << 29            | Cancel          | INPUT_FRONTEND_CANCEL | Same as #4 |
| 1 << 30            | None          | None | Reserved for NO SOUND. |
| 1 << 31            | Exit         | INPUT_FRONTEND_CANCEL | None |
| 1 << 32            | No          | INPUT_FRONTEND_X | None |
| 1 << 33            | Host          | INPUT_FRONTEND_CANCEL | None |
| 1 << 34            | Search For Job          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 35            | Nothing          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 36            | Freemode          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 37            | Submit          | INPUT_FRONTEND_ACCEPT | None  |
| 1 << 38            | View Player Profile          | INPUT_FRONTEND_ACCEPT | None  |


## Parameters
* **line1TextLabel**: The text label to display as the first line of the warning message.
* **buttonsBitField**: This is a bit field of WarningScreen (in frontend.xml) buttons. Eg: (1 << 13 | 1 << 28) would set "Sign In" and "No - Return To Grand Theft Auto V" buttons.
* **line2TextLabel**: The text label to display as the second line of the warning message.
* **addNumber**: If a number should be inserted into the text (Similar to how [`ADD_TEXT_COMPONENT_INTEGER`](#_0x03B504CF259931BC) works.
* **numberToAdd**: Adds this number to `~1~` in the text label.
* **substring1TextLabel**: Adds first text label to `~a~` in the text. "" is the default.
* **substring2TextLabel**: Adds second text label to `~a~` in the text. "" is the default.
* **showBg**: If the warning screen should have a black background.
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
        local ButtonsToSet = (1 << 1 | 1 << 4 | 1 << 6) -- This equals to 82: 1 << 1 sets "OK", 1 << 4 sets "Cancel" and 1 << 6 sets "Retry".
        SetWarningMessage("warning_message_first_line", ButtonsToSet, "warning_message_second_line", false, -1, "", "", true, 0)

        -- Make sure that the UI is loaded and ready for control.
        if IsWarningMessageReadyForControl() then
            -- Check for key presses or instructional button clicks.
            -- Input group of 2 (Which is frontend control group) is required for this to work while the warning is being displayed.
            
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
    end
end)
```
