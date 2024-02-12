---
ns: FILES
aliases: ["0xFF56381874F82086","_GET_TATTOO_COLLECTION_DATA"]
---
## GET_TATTOO_SHOP_DLC_ITEM_DATA

```c
// 0xFF56381874F82086 0x2E9D628C
BOOL GET_TATTOO_SHOP_DLC_ITEM_DATA(int characterType, int decorationIndex, Any* outComponent);
```

Returns data that adheres to the tattoo shop item data that is used in shop_tattoo.meta

Character types:
| Value |   Character   |
| :---: | :-----------: |
| `0`   | Michael       |
| `1`   | Franklin      |
| `2`   | Trevor        |
| `3`   | MPMale        |
| `4`   | MPFemale      |

Returned struct properties:
|      Type     |     Value     |                                Information                             |
| :-----------: | :------------:| :-------------------------------------------------------------------:  |
| `uint`        |   LockHash    |  Lock hash, used with [`IS_CONTENT_ITEM_LOCKED`](#_0xD4D7B033C3AA243C) |
| `int`         |   Index       |  Unique ID of this slot. Can also be 0.                                |
| `uint`        |   Collection  |  Collection of the tattoo.                                             |
| `uint`        |   Preset      |  Preset of this tattoo.                                                |
| `int`         |   Cost        |  Cost of this tattoo in shops.                                         |
| `int`         |   eFacing     |  Facing (Secondary placement value) of this tattoo.                    |
| `uint`        |   UpdateGroup |  Location of this tattoo.                                              |
| `const char*` | NameTextLabel |   This tattoo's name as a text label.                                  |


## Parameters
* **characterType**: Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.
* **decorationIndex**: Tattoo index, value between 0 and [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#_0x278F76C3B0A8F109).
* **outComponent**: The referenced struct.

## Return value
A bool indicating that the tattoo data exists in the files.

## Examples
```js
var characterType = 4; // MPFemale.
var tattooIndex = 0; // Value between 0 and GetNumDecorations(characterType).

var structArray = new Uint32Array(new ArrayBuffer(10 * 8));

if (Citizen.invokeNative("0xFF56381874F82086", characterType, tattooIndex, structArray))
{
    Console.Log(JSON.stringify(structArray));
}
```
```lua
-- CREDIT GOES TO manups4e FOR THIS CODE.
local function TattooBlobToTable(blob)
    local LockHash = string.unpack('<i4', blob, 1) & 0xFFFFFFFF -- uint (hash)
    local Index = string.unpack('<i4', blob, 9) -- int
    local Collection = string.unpack('<i4', blob, 17) & 0xFFFFFFFF -- uint (hash)
    local Preset = string.unpack('<i4', blob, 25) & 0xFFFFFFFF -- uint (hash)
    local Price = string.unpack('<i4', blob, 33) -- int
    local eFacing = string.unpack('<i4', blob, 41) -- TattooZoneData
    local UpdateGroup = string.unpack('<i4', blob, 49) -- uint (hash)
    local TextLabel = string.unpack('z', blob, 57) -- uint

    return {
        LockHash = LockHash,
        Index = Index,
        Collection = Collection,
        Preset = Preset,
        Price = Price,
        eFacing = eFacing,
        UpdateGroup = UpdateGroup,
        TextLabel = TextLabel
    }
end

function GetTattooDlcItemDataTable(CharacterType, DecorationIndex)
	local blob = string.rep('\0\0\0\0\0\0\0\0', 7+16)
	if not Citizen.InvokeNative(0xFF56381874F82086, CharacterType, DecorationIndex, blob) then return nil end -- Data doesn't exist, return a nil
	
	return TattooBlobToTable(blob) -- Return the data table
end

local numberOfTattoos = GetNumTattooShopDlcItems(3) -- get all tattoos for mpmale
for i = 0, numberOfTattoos - 1 do
	local tattooData = GetTattooDlcItemDataTable(3, i)
	-- Do stuff with your tattoo data
end

```
