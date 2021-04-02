---
ns: SYSTEM
---
## START_NEW_SCRIPT

```c
// 0xE81651AD79516E48 0x3F166D0E
int START_NEW_SCRIPT(char* scriptName, int stackSize);
```

```
Examples:
 g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
 l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
 SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
 SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
 SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
 SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
 SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
 SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
 SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
Decompiled examples of usage when starting a script:

    SCRIPT::REQUEST_SCRIPT(a_0);
    if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
        SYSTEM::START_NEW_SCRIPT(a_0, v_3);
        SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
        return 1;
    }

or:
    v_2 = "MrsPhilips2";
    SCRIPT::REQUEST_SCRIPT(v_2);
    while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    SCRIPT::REQUEST_SCRIPT(v_2);
    SYSTEM::WAIT(0);
    }
    sub_8792(36);
    SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi
```

## Parameters
* **scriptName**: 
* **stackSize**: 

## Return value
