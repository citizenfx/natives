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
```c
enum eTattooFaction
{
	TATTOO_SP_MICHAEL = 0,
	TATTOO_SP_FRANKLIN = 1,
	TATTOO_SP_TREVOR = 2,
	TATTOO_MP_FM = 3,
	TATTOO_MP_FM_F = 4
}
```

Returned struct properties:
```c
struct sTattooShopItemValues
{
	// Lock hash, used with IS_CONTENT_ITEM_LOCKED
	int LockHash;
	// Unique ID of this slot. It can also be 0.
	int Index;
	// Collection hash of this tattoo
	int CollectionHash;
	// Preset hash of this tattoo
	int PresetHash;
	// Cost of this tattoo in shops.
	int Cost;
	// Secondary placement of this tattoo.
	int eFacing;
	// Location of this tattoo on the body (for example, for torso there would be chest upper, stomach, etc)
	int UpdateGroup;
	// This tattoo's name in the form of a text label.
	const char* NameTextLabel;
};
```


## Parameters
* **characterType**: Which character to get the tattoo data for (Refer to `eTattooFaction` above).
* **decorationIndex**: Tattoo index, value between 0 and [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#_0x278F76C3B0A8F109).
* **outComponent**: The referenced struct.

## Return value
A bool indicating that the tattoo data exists in the files.

## Examples
```lua
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
```js
const characterType = 4; // MPFemale.
const tattooIndex = 0; // Value between 0 and GetNumDecorations(characterType).

const structArray = new Uint32Array(new ArrayBuffer(10 * 8));

if (Citizen.invokeNative("0xFF56381874F82086", characterType, tattooIndex, structArray))
{
    console.log(JSON.stringify(structArray));
}
```
