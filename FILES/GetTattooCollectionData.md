---
ns: FILE
aliases: ["0xFF56381874F82086"]
---
## _GET_TATTOO_COLLECTION_DATA

```c
// 0xFF56381874F82086 0x2E9D628C
BOOL _GET_TATTOO_COLLECTION_DATA(int characterType, int decorationIndex, Any* outComponent);
```

Character types:
```
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale
```

```csharp
enum TattooZoneData  
{  
    ZONE_TORSO = 0,  
    ZONE_HEAD = 1,  
    ZONE_LEFT_ARM = 2,  
    ZONE_RIGHT_ARM = 3,  
    ZONE_LEFT_LEG = 4,  
    ZONE_RIGHT_LEG = 5,  
    ZONE_UNKNOWN = 6,
    ZONE_NONE = 7,  
};

struct outComponent
{
    // these vars are suffixed with 4 bytes of padding each.
    uint unk;
    int unk2;
    uint tattooCollectionHash;
    uint tattooNameHash;
    int unk3;
    TattooZoneData zoneId;
    uint unk4;
    uint unk5;
    // maybe more, not sure exactly, decompiled scripts are very vague around this part.
}
```


## Parameters
* **characterType**: Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.
* **decorationIndex**: Tattoo index, value between 0 and GetNumDecorations(characterType).
* **outComponent**: The referenced struct.

## Return value
A bool indicating that the tattoo data could be fetched(?)

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

