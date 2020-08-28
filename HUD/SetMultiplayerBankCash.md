---
ns: HUD
---
## SET_MULTIPLAYER_BANK_CASH

```c
// 0xDD21B55DF695CD0A 0x2C842D03
void SET_MULTIPLAYER_BANK_CASH();
```

* This shows the bank Native Money HUD for the bank.
* To make it work you need to use N_0x170f541e1cadd1de(bool p1) with it
* Usually used with `SetMultiplayerWalletCash()` in R* scritps
* Use RemoveMultiplayerBankCash() to hide it
* To change money value just use `StatSetInt` and set "BANK_BALANCE" to whatever value you need to
* changing money value with StatSetInt will trigger the HUD changing money notification

Example image:

![](https://i.imgur.com/1BTmdyv.png)

Code example:
```cs
// Code to show both Money and Bank HUD
N_0x170f541e1cadd1de(true);
SetMultiplayerWalletCash();
SetMultiplayerBankCash();
N_0x170f541e1cadd1de(false);

// Add a delay to let the player read his money
await Delay(5000);

// Hide both Bank and Money HUD
RemoveMultiplayerWalletCash();
RemoveMultiplayerBankCash();

```
