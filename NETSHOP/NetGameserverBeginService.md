---
ns: NETSHOP
aliases: ["0x3C5FD37B5499582E","_NETWORK_SHOP_BEGIN_SERVICE"]
---
## _NET_GAMESERVER_BEGIN_SERVICE

```c
// 0x3C5FD37B5499582E
BOOL _NET_GAMESERVER_BEGIN_SERVICE(int* transactionId, Hash categoryHash, Hash itemHash, int actionTypeHash, int value, int flags);
```

```
No longer works if you hook it as a stealth money method  
Modes------------------  
1: Wallet  
2: Bank  
4: Bank  
8: Wallet  
Only difference I noticed.  
```

```
NativeDB Parameter 3: Hash actionTypeHash
```

## Parameters
* **transactionId**: 
* **categoryHash**: 
* **itemHash**: 
* **actionTypeHash**: 
* **value**: 
* **flags**: 

## Return value
