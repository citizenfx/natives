---
ns: PAD
aliases: ["_GET_LAST_INPUT_METHOD"]
---
## _IS_INPUT_DISABLED

```c
// 0xA571D46727E2B718
BOOL _IS_INPUT_DISABLED(int inputGroup);
```

```
Seems to return true if the input is currently disabled. "_GET_LAST_INPUT_METHOD" didn't seem very accurate, but I've left the original description below.  
--  
index usually 2  
returns true if the last input method was made with mouse + keyboard, false if it was made with a gamepad  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```

## Parameters
* **inputGroup**: 

## Return value
