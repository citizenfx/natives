---
ns: GRAPHICS
aliases: ["0xAB58C27C2E6123C6","_PUSH_SCALEFORM_MOVIE_FUNCTION_N", "_BEGIN_SCALEFORM_MOVIE_METHOD_N"]
---
## BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND

```c
// 0xAB58C27C2E6123C6 0xF6015178
BOOL BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND(char* functionName);
```

Starts frontend (pause menu) scaleform movie methods.
This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.

Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#_0xB9449845F73F5E9C) for header scaleform functions.

## Parameters
* **functionName**: The function name of the scaleform to call.

## Return value
Returns if the function was able to start

## Examples
```lua
-- Function responsible for adding menu items in all pause menu screens
local function SetPauseMenuDataSlot(columnId, slotIndex, menuId, uniqueId, slotType, initialId, isSelectable, text, isTextLabel)
	if BeginScaleformMovieMethodOnFrontend('SET_DATA_SLOT') then
		ScaleformMovieMethodAddParamInt(columnId)      -- Which column this menu item belongs to. (0 being the left)
		ScaleformMovieMethodAddParamInt(slotIndex)     -- Index (Starting from 0) of the menu item
		ScaleformMovieMethodAddParamInt(menuId)        -- Which screen this menu item belongs to.
		ScaleformMovieMethodAddParamInt(uniqueId)      -- Unique ID of your menu item. This is used and returned by a lot of frontend functions.
		ScaleformMovieMethodAddParamInt(slotType)          -- Slot type. Varies between menu screens.
		ScaleformMovieMethodAddParamInt(initialId)     -- Initial ID (0 mostly)
		ScaleformMovieMethodAddParamBool(isSelectable) -- If this item is selectable

        -- Allows you to use a game text label instead of a literal text. Not required.
		if isTextLabel then
			BeginTextCommandScaleformString(text)
			EndTextCommandScaleformString()
		else
			ScaleformMovieMethodAddParamPlayerNameString(text)
		end

		EndScaleformMovieMethod()
	end

	return uniqueId
end

-- Current menu item's menu unique ID
local currentUniqueID = 0
-- If we're showing the small map on the right
local mapOpen = false

-- Main thread
CreateThread(function()
    -- Open menu
    ActivateFrontendMenu(`FE_MENU_VERSION_CORONA_RACE`, false, -1)

    -- Wait for menu to load
    while not IsFrontendReadyForControl() or IsPauseMenuRestarting() or GetPauseMenuState() ~= 15 do
        Wait(0)
        print('Waiting for menu to load')
    end

    -- Required or else menu items don't display for some reason
    Wait(500)

    print('Opened the page successfully')

    -- Table of example menu items
    local myItems = {
        {
            text = 'Pause menu item 1',
            uniqueID = 20,
            selectable = true
        },
        {
            text = 'Pause menu item 2',
            uniqueID = 21,
            selectable = true
        },
        {
            text = GetPlayerName(PlayerId()) .. ' is awesome',
            uniqueID = 69,
            selectable = false
        },
        {
            text = 'Pause menu item 3',
            uniqueID = 40,
            selectable = true
        },
        {
            text = 'Open Map',
            uniqueID = 100,
            selectable = true
        }
    }

    -- Add menu items to the UI
    local columnID = 0

    for i, itemData in ipairs(myItems) do
        SetPauseMenuDataSlot(columnID, i - 1, 1, itemData.uniqueID, 0, 0, itemData.selectable, itemData.text, false)
    end

    -- Display menu items for this column (is required)
    if BeginScaleformMovieMethodOnFrontend('DISPLAY_DATA_SLOT') then
  		ScaleformMovieMethodAddParamInt(columnID)
  		EndScaleformMovieMethod()
  	end

    -- Set focus to the column
    if BeginScaleformMovieMethodOnFrontend('SET_COLUMN_FOCUS') then
  		ScaleformMovieMethodAddParamInt(columnID) -- Column
  		ScaleformMovieMethodAddParamBool(true)    -- bHighlighted
  		ScaleformMovieMethodAddParamBool(true)    -- bMoveFocus
  		EndScaleformMovieMethod()
  	end

    -- Run the script
    while true do
        Wait(0)

        -- Make sure pause menu is active and ready
        if IsPauseMenuActive() and IsFrontendReadyForControl() then
            -- Check for navigation
            if HasMenuLayoutChangedEventOccurred() then
                local lastScreen, thisScreen, uniqueID = GetMenuLayoutChangedEventDetails()

                for i, itemData in ipairs(myItems) do
                    if itemData.uniqueID == uniqueID then
                        print(' Navigated to menu item  "' .. itemData.text .. '""', uniqueID)
                        
                        currentUniqueID = uniqueID

                        break
                    end
                end
            end

            -- Input

            if currentUniqueID == 100 -- Ensure we're using the unique ID we need
                and (IsControlJustReleased(2, 201) -- Enter pressed
                or (IsControlJustReleased(2, 237) and PauseMenuGetUniqueIdOfMouseHoveredSlot() == 100 )) -- Mouse clicked
            then
                print('Open map!')
                mapOpen = not mapOpen
                RaceGalleryFullscreen(mapOpen)
            end

            -- Close menu by pressing ESC or Backspace
            if IsControlJustReleased(2, 202) then
                SetFrontendActive(false) -- Closes the menu
            end
        end
    end
end)
```
