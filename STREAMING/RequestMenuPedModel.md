---
ns: STREAMING
aliases: ["0xA0261AEF7ACFC51E"]
---
## REQUEST_MENU_PED_MODEL

```c
// 0xA0261AEF7ACFC51E 0x48CEB6B4
void REQUEST_MENU_PED_MODEL(Hash model);
```

```
streaming::request_menu_ped_model(joaat("player_zero"));  
iVar0 = ped::create_ped(25, joaat("player_zero"), cam::_get_gameplay_cam_coords(), 0f, 0, false);  
entity::freeze_entity_position(iVar0, true);  
ped::_0x4668d80430d6c299(iVar0);  
ui::give_ped_to_pause_menu(iVar0, 1);  
```

## Parameters
* **model**: 

