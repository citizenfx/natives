---
ns: NETSHOP
aliases: ["0xC2F7FE5309181C7D","_NETWORK_TRANSFER_WALLET_TO_BANK"]
---
## _NET_GAMESERVER_TRANSFER_WALLET_TO_BANK

```c
// 0xC2F7FE5309181C7D
BOOL _NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(int charSlot, int amount);
```

```
used in atm_trigger script.  
usage:  
int iVar0; STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_BANK_TO_WALLET(iVar0, amount);  
used to withdraw money from bank into wallet, shows up in transaction log.  
```

## Parameters
* **charSlot**: 
* **amount**: 

## Return value
