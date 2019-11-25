---
ns: AUDIO
---
## ADD_LINE_TO_CONVERSATION

```c
// 0xC5EF963405593646 0x96CD0513
void ADD_LINE_TO_CONVERSATION(int index, char* p1, char* p2, int p3, int p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8, int p9, BOOL p10, BOOL p11, BOOL p12);
```

```
NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,  
_GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.  
p0 is -1, 0   
p1 is a char or string (whatever you wanna call it)  
p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop  
p3 is again -1, 0 - 35   
p4 is again -1, 0 - 35   
p5 is either 0 or 1 (bool ?)  
p6 is either 0 or 1 (The func to determine this is bool)  
p7 is either 0 or 1 (The func to determine this is bool)  
p8 is either 0 or 1 (The func to determine this is bool)  
p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)  
p10 is either 0 or 1 (The func to determine this is bool)  
p11 is either 0 or 1 (The func to determine this is bool)  
p12 is unknown as in TU27 X360 scripts it only goes to p11.  
```

## Parameters
* **index**: 
* **p1**: 
* **p2**: 
* **p3**: 
* **p4**: 
* **p5**: 
* **p6**: 
* **p7**: 
* **p8**: 
* **p9**: 
* **p10**: 
* **p11**: 
* **p12**: 

