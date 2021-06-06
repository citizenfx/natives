---
ns: PAD
aliases: ["0x0499D7B09FC9B407"]
---
## GET_CONTROL_INSTRUCTIONAL_BUTTON

```c
// 0x0499D7B09FC9B407 0x3551727A
char* GET_CONTROL_INSTRUCTIONAL_BUTTON(int padIndex, int control, cs_type(Player) BOOL p2);
```

```
formerly called _GET_CONTROL_ACTION_NAME incorrectly  
p2 appears to always be true.  
p2 is unused variable in function.  
EG:  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```

## Parameters
* **padIndex**: 
* **control**: 
* **p2**: 

## Return value
