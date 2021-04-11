---
ns: MOBILE
---
## _0xA2CCBE62CD4C91A4

```c
// 0xA2CCBE62CD4C91A4 0xC273BB4D
void _0xA2CCBE62CD4C91A4(int* toggle);
```

```
Needs more research. If the "phone_cam12" filter is applied, this function is called with "TRUE"; otherwise, "FALSE".
Example (XBOX 360):
// check current filter selection
if (MISC::ARE_STRINGS_EQUAL(getElem(g_2471024, &l_17, 4), "phone_cam12") != 0)
{
    MOBILE::_0xC273BB4D(0); // FALSE
}
else
{
    MOBILE::_0xC273BB4D(1); // TRUE
}
```

## Parameters
* **toggle**: 

