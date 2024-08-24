---
ns: HUD
aliases: ["0xF06EBB91A81E09E3"]
---
## PAUSE_MENU_SET_WARN_ON_TAB_CHANGE

```c
// 0xF06EBB91A81E09E3 0x11D09737
void PAUSE_MENU_SET_WARN_ON_TAB_CHANGE(BOOL setWarn);
```

Shows this warning message when trying to switch pause menu header tabs

![Example](https://r2.fivemanage.com/qFztShHCe1bhCDvTI4vxv/Screenshot%202024-08-24%20112445.png)

## Parameters
* **setWarn**: Wether to show the message or not.

## Examples
```lua
CreateThread(function()
    while true do
        PauseMenuSetWarnOnTabChange(true)
        Wait(0)
    end
end)
```