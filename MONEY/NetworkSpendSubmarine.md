---
ns: MONEY
aliases: ["_NETWORK_SPENT_SUBMARINE"]
---
## NETWORK_SPEND_SUBMARINE

```c
// 0x6C8BC1488527AAAB
void NETWORK_SPEND_SUBMARINE(int amount, cs_type(Any) BOOL fromBank, cs_type(Any) BOOL fromBankAndWallet, int utilityAmount, int boatAmount, int relocateAmount);
```

Manages in-game spending related to the submarine, covering staff wages, utility fees, and costs for vehicle or boat pickups from the shore to the submarine.

```
NativeDB Introduced: v2189
```

## Parameters
* **amount**: The total amount of money spent.
* **fromBank**: If true, the amount is deducted from the player's bank account.
* **fromBankAndWallet**: If true, the amount is deducted from both the player's bank account and wallet.
* **utilityAmount**: The portion of the amount covering utility fees for the submarine.
* **boatAmount**: The cost for requesting boat pickups from the shore to the submarine.
* **relocateAmount**: The cost involved in relocating the submarine.