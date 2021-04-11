---
ns: MISC
---
## GET_HASH_KEY

```c
// 0xD24D37CC275948CC 0x98EFF6F1
Hash GET_HASH_KEY(char* string);
```

This native converts its past string to hash. It is hashed using jenkins one at a time method.

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