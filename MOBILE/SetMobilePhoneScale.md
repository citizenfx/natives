---
ns: MOBILE
---
## SET_MOBILE_PHONE_SCALE

```c
// 0xCBDD322A73D6D932 0x09BCF1BE
void SET_MOBILE_PHONE_SCALE(float scale);
```

```
The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
```

## Parameters
* **scale**: 

