---
ns: NETSHOP
aliases: ["0x3C5FD37B5499582E"]
---
## _NETWORK_SHOP_BEGIN_SERVICE

```c
// 0x3C5FD37B5499582E
BOOL _NETWORK_SHOP_BEGIN_SERVICE(int* transactionID, Hash p1, Hash transactionHash, int amount, Hash p4, int mode);
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

## Parameters
* **transactionID**: 
* **p1**: 
* **transactionHash**: 
* **amount**: 
* **p4**: 
* **mode**: 

## Return value
