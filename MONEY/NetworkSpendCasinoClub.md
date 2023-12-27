---
ns: MONEY
aliases: ["_NETWORK_SPENT_CASINO_CLUB_GENERIC"]
---
## NETWORK_SPEND_CASINO_CLUB

```c
// 0xC991C255AA6D90B2
void NETWORK_SPEND_CASINO_CLUB(int amount, cs_type(Any) BOOL fromBank, cs_type(Any) BOOL fromBankAndWallet, int barItem, int barAmount, int vipItem, int vipAmount, int entryAmount, int attendantAmount);
```

Handles monetary transactions for various activities within the casino club, including bar purchases, VIP area transactions, entry fees, and tips to bathroom attendants.

```
NativeDB Introduced: v2189
```

## Parameters
* **amount**: The total amount of money spent.
* **fromBank**: true if the amount is deducted from the player's bank account.
* **fromBankAndWallet**: true if the amount is deducted from both the player's bank account and wallet.
* **barItem**: The identifier for the item bought at the casino nightclub bar.
* **barAmount**: The amount spent on bar items.
* **vipItem**: The identifier for the item bought in the VIP area.
* **vipAmount**: The amount spent on VIP items.
* **entryAmount**: The fee for entering the casino nightclub.
* **attendantAmount**: The amount tipped to the bathroom attendant.