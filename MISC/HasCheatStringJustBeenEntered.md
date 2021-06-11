---
ns: MISC
aliases: ["0x557E43C447E700A8"]
---
## _HAS_CHEAT_STRING_JUST_BEEN_ENTERED

```c
// 0x557E43C447E700A8
BOOL _HAS_CHEAT_STRING_JUST_BEEN_ENTERED(Hash hash);
```

```
Get inputted "Cheat code", for example:
while (TRUE)
{
    if (MISC::_557E43C447E700A8(${fugitive}))
    {
       // Do something.
    }
    SYSTEM::WAIT(0);
}
Calling this will also set the last saved string hash to zero.
```

## Parameters
* **hash**: 

## Return value
