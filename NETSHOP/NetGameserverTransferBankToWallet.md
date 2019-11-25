---
ns: NETSHOP
aliases: ["0xD47A2C1BA117471D","_NETWORK_TRANSFER_BANK_TO_WALLET"]
---
## _NET_GAMESERVER_TRANSFER_BANK_TO_WALLET

```c
// 0xD47A2C1BA117471D
BOOL _NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(int charSlot, int amount);
```

```
used in atm_trigger script.  
usage:  
int iVar0;STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_WALLET_TO_BANK(iVar0, amount);  
used to deposit money into bank from wallet, shows up in transaction log.  
```

## Parameters
* **charSlot**: 
* **amount**: 

## Return value
