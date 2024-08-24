---
ns: HUD
---
## SET_MULTIPLAYER_BANK_CASH

```c
// 0xDD21B55DF695CD0A 0x2C842D03
void SET_MULTIPLAYER_BANK_CASH();
```

Preview image:

![Image](https://r2.fivemanage.com/qFztShHCe1bhCDvTI4vxv/image_2024-08-24_104318757.png)

To change the bank balance use [`STAT_SET_INT`](#_0xB3271D7AB655B441) with "BANK_BALANCE" to whatever value you need to.

## Examples

```cs
// Code to show both Money and Bank HUD
UseFakeMpCash(true);
SetMultiplayerWalletCash();
SetMultiplayerBankCash();
UseFakeMpCash(false);

// Add a delay to let the player read his money
await Delay(5000);

// Hide both Bank and Money HUD
RemoveMultiplayerWalletCash();
RemoveMultiplayerBankCash();
```

```lua
-- Code to show both Money and Bank HUD
UseFakeMpCash(true)
SetMultiplayerWalletCash()
SetMultiplayerBankCash()
UseFakeMpCash(false)

-- Add a delay to let the player read his money
Wait(5000)

-- Hide both Bank and Money HUD
RemoveMultiplayerWalletCash()
RemoveMultiplayerBankCash()
```