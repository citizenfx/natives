---
ns: HUD
---
## _SET_NOTIFICATION_MESSAGE

```c
// 0x1CCD9A37359072CF 0xE7E3C98B
int _SET_NOTIFICATION_MESSAGE(char* picName1, char* picName2, BOOL flash, int iconType, char* sender, char* subject);
```

```
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
```

## Parameters
* **picName1**: 
* **picName2**: 
* **flash**: 
* **iconType**: 
* **sender**: 
* **subject**: 

## Return value
