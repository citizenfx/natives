---
ns: PLAYER
---
## GET_TIME_SINCE_LAST_ARREST

```c
// 0x5063F92F07C2A316 0x62824EF4
int GET_TIME_SINCE_LAST_ARREST();
```

```
Returns the time since the character was arrested in (ms) milliseconds.  
example  
var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
UI.DrawSubtitle(time.ToString());  
if player has not been arrested, the int returned will be -1.  
```

## Return value
