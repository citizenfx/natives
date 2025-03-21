---
ns: HUD
---
## SET_BLIP_CATEGORY

```c
// 0x234CDD44D996FD9A 0xEF72F533
void SET_BLIP_CATEGORY(Blip blip, int index);
```

Examples result:

![](https://i.imgur.com/skY6vAJ.png)


**index:**
```
1 = No distance shown in legend
2 = Distance shown in legend
7 = "Other Players" category, also shows distance in legend
10 = "Property" category
11 = "Owned Property" category
12 - 133 = Custom named categories
134 - 254 = Custom unnamed categories
```
`index` wraps around after 255.

Blips with categories `7`, `10`, `11` or `12 - 254` (custom categories) will all show under the specific categories listing in the map legend, regardless of sprite or name.


**Legend entries**

| index | Legend entry | Label |
| --- | --- | --- |
| 7 | Other Players | `BLIP_OTHPLYR` |
| 10 | Property | `BLIP_PROPCAT` |
| 11 | Owned Property | `BLIP_APARTCAT` |
| 12 - 133 | Custom categories (Named) | `BLIP_CAT_` + `index` |
| 134 - 254 | Custom categories (Unnamed) | `-` |


## Parameters
* **blip**: The blip to change the category index of
* **index**: The category index to change to

## Examples
```lua
blip = AddBlipForCoord(-702.97290039063, -1393.2911376953, 5.1502623558044)
SetBlipSprite(blip, 370) -- Helipad For Sale
SetBlipCategory(blip, 10)

blip = AddBlipForCoord(-712.40521240234, -1298.7811279297, 5.1019215583801)
SetBlipSprite(blip, 371) -- Dock For Sale
SetBlipCategory(blip, 10)

blip = AddBlipForCoord(-927.92755126953, -2824.1362304688, 13.947744369507)
SetBlipSprite(blip, 372) -- Hangar For Sale
SetBlipCategory(blip, 10)

-- Custom named categories
blip = AddBlipForCoord(0.0, 0.0, 0.0)
SetBlipSprite(blip, 375) -- Business For Sale
SetBlipCategory(blip, 12)
AddTextEntry("BLIP_CAT_" .. 12, "Businesses For Sale")
```

