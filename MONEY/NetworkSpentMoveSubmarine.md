---
ns: MONEY
aliases: ["0xCD4D66B43B1DD28D", "_NETWORK_SPENT_ON_MOVE_SUBMARINE"]
---
## NETWORK_SPENT_MOVE_SUBMARINE

```c
// 0xCD4D66B43B1DD28D
void NETWORK_SPENT_MOVE_SUBMARINE(int amount, cs_type(Any) BOOL fromBank, cs_type(Any) BOOL fromBankAndWallet);
```

Deducts money for moving the submarine. Handles the transaction required to relocate a submarine in-game.

```
NativeDB Introduced: v2189
```

## Parameters
* **amount**: The amount of money to be spent on moving the submarine.
* **fromBank**: A boolean indicating whether the money should be deducted from the player's bank account.
* **fromBankAndWallet**: A boolean indicating whether the money should be deducted from both the player's bank account and wallet.