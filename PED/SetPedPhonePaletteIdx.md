---
ns: PED
aliases: ["0x83A169EABCDB10A2"]
---
## SET_PED_PHONE_PALETTE_IDX

```c
// 0x83A169EABCDB10A2
void SET_PED_PHONE_PALETTE_IDX(Ped ped, int index);
```

Sets the palette index of a ped's phone.

| Value | Color      |
| :---: | :-----:    |
|  `0`  | Light Blue |
|  `1`  | Green      |
|  `2`  | Red        |
|  `3`  | Orange     |
|  `4`  | Grey       |
|  `5`  | Purple     |
|  `6`  | Pink       |

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The Ped whose phone palette is to be set.
* **index**: The index of the color palette to apply to the ped's phone.

## Examples
```lua
-- Function to set the phone color for a player.
function setPhoneColor(color)
    -- Retrieve the Local player.
    local playerPed = PlayerPedId()

    -- Define a table mapping color names to their corresponding palette indices
    local colors = {
        ["Blue"] = 0,
        ["Green"] = 1,
        ["Red"] = 2,
        ["Orange"] = 3,
        ["Grey"] = 4,
        ["Purple"] = 5,
        ["Pink"] = 6
    }

    -- Check if the provided color exists in the table to prevent errors
    if colors[color] == nil then
        print("Color not found: " .. color) -- Color doesn't exist in the table. 
        return -- Exits the function.
    end

    -- Use the native to set the ped's phone palette index based on the selected color.
    SetPedPhonePaletteIdx(playerPed, colors[color])
end

-- Call the function with "Green" to set the phone color to green for the player
setPhoneColor("Green")
```

```js
// Function to set the phone color for a player.
function setPhoneColor(color) {
    // Retrieve the Local player.
    const playerPed = PlayerPedId(); 
    
    // Define a map of color names to their corresponding palette indices
    const colors = new Map([
        ["Blue", 0],
        ["Green", 1],
        ["Red", 2],
        ["Orange", 3],
        ["Grey", 4],
        ["Purple", 5],
        ["Pink", 6]
    ]);

    // Check if the provided color exists in the map to prevent errors
    if (!colors.has(color)) {
        console.error("Color not found:", color); // Color doesn't exist in the map. 
        return; // Exit the function.
    }

    // Use the native to set the ped's phone palette index based on the selected color.
    SetPedPhonePaletteIdx(playerPed, colors.get(color)); 
}

// Call the function with "Green" to set the phone color to green for the player
setPhoneColor("Green");
```

```csharp
using static CitizenFX.Core.Native.API;

// Function to set the phone color for a player.
void setPhoneColor(string color)
{
    // Retrieve the Local player.
    Ped playerPed = PlayerPedId(); 

    // Dictionary mapping color names to their corresponding palette indices
    Dictionary<string, int> colors = new Dictionary<string, int>
    {
        {"Blue", 0},
        {"Green", 1},
        {"Red", 2},
        {"Orange", 3},
        {"Grey", 4},
        {"Purple", 5},
        {"Pink", 6}
    };

    // Checks if the provided color exists in the dictionary to prevent errors
    if (!colors.ContainsKey(color))
    {
        Debug.WriteLine($"Color not found: {color}"); // Color doesn't exist in the Dictionary.
        return; // Exits the function.
    }

    // Use the native to set the ped's phone palette index based on the selected color
    SetPedPhonePaletteIdx(playerPed, colors[color]);
}

setPhoneColor("Green"); // Call the function with "Green" to set the phone color to green for the player
```