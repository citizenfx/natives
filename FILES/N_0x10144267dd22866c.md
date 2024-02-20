---
ns: FILES
aliases: ["0x10144267DD22866C"]
---
## GET_TATTOO_SHOP_DLC_ITEM_INDEX

```c
// 0x10144267DD22866C
int GET_TATTOO_SHOP_DLC_ITEM_INDEX(cs_type(Hash) int character, int collection, int preset);
```

```
NativeDB Introduced: v2189
```

## Parameters
* **character**: AKA eFaction in shop_tattoo.meta. Which character this tattoo belongs to. See [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#_0x278F76C3B0A8F109).
* **collection**: Which collection this tattoo belongs to. If you specify `-1`, it will check all collections.
* **preset**: Which preset this tattoo belongs to.

## Return value
Returns the actual index (Not ID from `shop_tattoo.meta`) from `0` to [GET_NUM_TATTOO_SHOP_DLC_ITEMS](#_0x278F76C3B0A8F109), or `-1` (if it failed to find the tattoo) of a tattoo.
