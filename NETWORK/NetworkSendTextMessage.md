---
ns: NETWORK
---
## NETWORK_SEND_TEXT_MESSAGE

```c
// 0x3A214F2EC889B100 0xAFFEA720
BOOL NETWORK_SEND_TEXT_MESSAGE(char* message, int* networkHandle);
```

```
how can I increase the character limit on this native?  
--------------------------------  
return - it's possible for it to have an error and return a value. One error is if it cannot find space to create the event it doesn't send the text and returns zero. It also returns 0 is the strlen is 0 or the strlen > 0x100 (I thought it was 64 so idk why it's checking 265. I may just be dumb :P ) There are other ways it could return 0 also but who the hell cares cuz it's very unlikely, but it returns a bool.  
to the top guy, idk if it is possible. It is probably read a max of 64 characters on the recieving end so even if we did modify it to send more it probably wouldn't work. One of the other problems is that in part of the function it copies the string to the local stack which means we would have to change that to make it work.  
```

## Parameters
* **message**: 
* **networkHandle**: 

## Return value
