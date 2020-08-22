---
ns: PAD
---
## SET_PAD_SHAKE

```c
// 0x48B3886C1358D0D5 0x5D38BD2F
void SET_PAD_SHAKE(int padIndex, int duration, int frequency);
```

```
p0 always seems to be 0  
duration in milliseconds   
frequency should range from about 10 (slow vibration) to 255 (very fast)  
example:  
SET_PAD_SHAKE(0, 100, 200);  
```

## Parameters
* **padIndex**: 
* **duration**: 
* **frequency**: 

