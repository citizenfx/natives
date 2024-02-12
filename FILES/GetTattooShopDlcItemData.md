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
```
0 = Michael,
1 = Franklin,
2 = Trevor,
3 = MPMale,
4 = MPFemale
```

```cpp
struct sTattooShopItemData
{
	uint LockHash; // Hash that is to be used with IS_CONTENT_ITEM_LOCKED
	int Index; // This is the unique ID of the tattoo, but sometimes can also be zero.
	int Collection; // Which collection this tattoo belongs to
	uint Preset; // Preset hash of this tattoo (AKA it's name, to be used with ADD_PED_DECORATION_FROM_HASHES)
	int Cost; // How much this tattoo costs in shops
	int eFacing; // Facing value of this tattoo
	uint UpdateGroup; // Where exactly this tattoo is located on the ped. (E.G ARM_LEFT_FULL_SLEEVE.)
	const char* NameTextLabel; // Name of this tattoo as a text label
};
```


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

