---
ns: MOBILE
aliases: ["0x015C49A93E3E086E","_DISABLE_PHONE_THIS_FRAME"]
---
## _CELL_CAM_DISABLE_THIS_FRAME

```c
// 0x015C49A93E3E086E 0x4479B304
void _CELL_CAM_DISABLE_THIS_FRAME(BOOL toggle);
```

```
Disables the phone up-button, oddly enough.   
i.e.: When the phone is out, and this method is called with false as it's parameter, the phone will not be able to scroll up. However, when you use the down arrow key, it's functionality still, works on the phone.   
When the phone is not out, and this method is called with false as it's parameter, you will not be able to bring up the phone. Although the up arrow key still works for whatever functionality it's used for, just not for the phone.  
This can be used for creating menu's when trying to disable the phone from being used.   
You do not have to call the function again with false as a parameter, as soon as the function stops being called, the phone will again be usable.  
```

## Parameters
* **toggle**: 

