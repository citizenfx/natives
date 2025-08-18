---
ns: HUD
---
## GET_PAUSE_MENU_STATE

```c
// 0x272ACD84970869C5 0x92F50134
int GET_PAUSE_MENU_STATE();
```

```c
enum ePauseMenuState
{
    PM_INACTIVE 	 =  0,
    PM_STARTING_UP 	 =  5,
    PM_RESTARTING 	 = 10,
    PM_READY 		 = 15,
    PM_IN_STORE 	 = 20,
    PM_IN_SC_MENU 	 = 25,
    PM_SHUTTING_DOWN = 30,
    PM_IN_VIDEOEDITOR = 35,
}
```

## Return value
