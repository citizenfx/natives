---
ns: PED
---
## CREATE_NM_MESSAGE

```c
// 0x418EF2A1BCE56685 0x1CFBFD4B
void CREATE_NM_MESSAGE(BOOL startImmediately, int messageId);
```

```
Creates a new NaturalMotion message.  
startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
messageId: The ID of the NaturalMotion message.  
If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
```

## Parameters
* **startImmediately**: 
* **messageId**: 

