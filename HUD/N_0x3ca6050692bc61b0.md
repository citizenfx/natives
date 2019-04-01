---
ns: HUD
aliases: ["0x3CA6050692BC61B0"]
---
## SET_PAUSE_MENU_PED_LIGHTING

```c
// 0x3CA6050692BC61B0 0x127310EB
void SET_PAUSE_MENU_PED_LIGHTING(BOOL state);
```

Toggles the light state for the pause menu ped in frontend menus.

This is used by R* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.

Example:
On: ![lights on](https://vespura.com/hi/i/2019-04-01_16-09_540ee_1015.png)
Off: ![lights off](https://vespura.com/hi/i/2019-04-01_16-10_8b5e7_1016.png)

## Parameters
* **state**: True enables the light, false disables the light.

