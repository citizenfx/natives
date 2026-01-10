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

```c
// All of these values have been taken from frontend.xml warning screen section


enum eWarningScreenButtons {
    SELECT = 1 << 0, // INPUT_FRONTEND_ACCEPT (2, 201)
    OK = 1 << 1, // INPUT_FRONTEND_ACCEPT (2, 201)
    YES = 1 << 2, // INPUT_FRONTEND_ACCEPT (2, 201)
    BACK = 1 << 3, // INPUT_FRONTEND_CANCEL (2, 202)
    CANCEL = 1 << 4, // INPUT_FRONTEND_CANCEL (2, 202)
    NO = 1 << 5, // INPUT_FRONTEND_CANCEL (2, 202)
    RETRY = 1 << 6, // INPUT_FRONTEND_X (2, 203)
    RESTART = 1 << 7, // INPUT_FRONTEND_ACCEPT (2, 201)
    SKIP = 1 << 8, // INPUT_FRONTEND_X (2, 203)
    QUIT = 1 << 9,  // INPUT_FRONTEND_CANCEL (2, 202)
    ADJUST = 1 << 10, // INPUTGROUP_FRONTEND_DPAD_LR (Doesn't trigger any control on mouse click, is just an icon)
    IGNORE = 1 << 11,  // INPUT_FRONTEND_X (2, 203)
    SHARE = 1 << 12, // INPUT_FRONTEND_X (2, 203)
    LOG_IN = 1 << 13, // INPUT_FRONTEND_X (2, 203)
    CONTINUE = 1 << 14, // INPUT_FRONTEND_ACCEPT (2, 201)
    ADJUST = 1 << 15,  // Doesn't trigger any input (Uses ARROW_LEFTRIGHT icon)
    SCROLL = 1 << 16, // Doesn't trigger any input (Uses ARROW_UPDOWN icon)
    OVERWRITE = 1 << 17, // INPUT_FRONTEND_X (2, 203)
    ROCKSTAR_GAMES_SIGN_UP = 1 << 18, // INPUT_FRONTEND_ACCEPT (2, 201)
    CONFIRM = 1 << 19, // INPUT_FRONTEND_ACCEPT (2, 201)
    QUEUE = 1 << 20, // INPUT_FRONTEND_ACCEPT (2, 201)
    RETRY = 1 << 21, // INPUT_FRONTEND_ACCEPT (2, 201)
    BACK_ALT = 1 << 22, // INPUT_FRONTEND_CANCEL (2, 202) (Same input as 1 << 3, however this button plays SELECT sound instead of BACK)
    ROCKSTAR_GAMES = 1 << 23, // INPUT_FRONTEND_ACCEPT (2, 201)
    SPECTATE = 1 << 24, // INPUT_FRONTEND_X (2, 203)
    OK_ALT = 1 << 25, // INPUT_FRONTEND_CANCEL (2, 202) (Different input than 1 << 1)
    CANCEL_TRANSFER = 1 << 26, // INPUT_FRONTEND_CANCEL (2, 202)
    BUSYSSPINNER = 1 << 27, // Doesn't trigger any input (Places loading icon)
    NO_RETSP = 1 << 28, // INPUT_FRONTEND_CANCEL (2, 202)
    CANCEL_ALT = 1 << 29, // INPUT_FRONTEND_CANCEL (2, 202) (Duplicate entry, is identical to 1 << 4)
    EMPTY = 1 << 30, // No button here, Frontend.XML states it is reserved for no sound
    EXIT = 1 << 31 // INPUT_FRONTEND_CANCEL (2, 202)
};

enum eWarningScreenButtonsUpper {
    NO  = 1 << 32, // INPUT_FRONTEND_X (2, 203)
    HOST = 1 << 33, // INPUT_FRONTEND_CANCEL (2, 202)
    SEARCH_FOR_JOB = 1 << 34, // INPUT_FRONTEND_ACCEPT (2, 201)
    PLUS_PROMO = 1 << 35, // INPUT_FRONTEND_ACCEPT (2, 201) (Text label this button uses (BUTTON_PLUS_PROMO2) does not exist on the PC release, as it was only used for PlayStation.)
    FREEMODE = 1 << 36, // INPUT_FRONTEND_CANCEL (2, 202)
    SUBMIT = 1 << 37, // INPUT_FRONTEND_ACCEPT (2, 201)
    VIEW_PLAYER_PROFILE = 1 << 38 // INPUT_FRONTEND_ACCEPT (2, 201)
};
```


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
