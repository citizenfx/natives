---
ns: MISC
---
## GET_HASH_KEY

```c
// 0xD24D37CC275948CC 0x98EFF6F1
Hash GET_HASH_KEY(char* string);
```

Gets the (case-insensitive, lower-cased) hash value for the passed string. This uses the 'Jenkins one-at-a-time' hashing
algorithm.

## Parameters
* **string**: The string to hash.

## Return value
The hash of `string`.

## Examples
```lua
local zentorno = GetHashKey('zentorno')

if GetEntityModel(car) == zentorno then
    print('Car is a zentorno!')
end
```