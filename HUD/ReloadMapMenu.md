---
ns: HUD
aliases: ["0x2916A928514C9827"]
---
## RELOAD_MAP_MENU

```c
// 0x2916A928514C9827
void RELOAD_MAP_MENU();
```

Forces the map menu to reload.

## Examples
```lua
if GetNumberOfReferencesOfScriptWithNameHash(`pausemenu_map`) > 0 then -- Ensure we're on the map screen
  ReloadMapMenu()
  print('Reloaded map menu!')
end
```
