---
ns: HUD
aliases: ["0x17AD8C9706BDD88A"]
---
## _THEFEED_SET_ANIMPOSTFX_COUNT

```c
// 0x17AD8C9706BDD88A 0x24A97AF8
void _THEFEED_SET_ANIMPOSTFX_COUNT(int flashCount);
```

Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.

```
    var uVar0;
    var uVar1;
    var uVar2;
    var uVar3;
    int iVar4;
    iVar4 = 1;
    
    UI::GET_HUD_COLOUR(1, &uVar0, &uVar1, &uVar2, &uVar3);
    UI::_SET_NOTIFICATION_FLASH_COLOR(uVar0, uVar1, uVar2, uVar3);
    UI::_0x17AD8C9706BDD88A(iVar4);
    UI::_SET_NOTIFICATION_TEXT_ENTRY("RSMAN_N");
    UI::_DRAW_NOTIFICATION_2(1, 1);
```

## Parameters
* **flashCount**: 

