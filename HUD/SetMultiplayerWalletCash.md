---
ns: HUD
aliases: ["0xC2D15BEF167E27BC"]
---
## SET_MULTIPLAYER_WALLET_CASH

```c
// 0xC2D15BEF167E27BC 0xF4F3C796
void SET_MULTIPLAYER_WALLET_CASH();
```

* This shows the bank Native Money HUD for the wallet.
* To make it work you need to use N_0x170f541e1cadd1de(bool p1) with it
* Usually used with `SetMultiplayerWalletCash()` in R* scritps
* Use RemoveMultiplayerWalletCash() to hide it
* To change money value just use `StatSetInt` and set "MP0_WALLET_BALANCE" to whatever value you need to,
* Changing money value with StatSetInt will trigger the HUD changing money notification


Preview image:

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
