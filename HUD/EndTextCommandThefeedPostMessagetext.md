---
ns: HUD
aliases: ["_SET_NOTIFICATION_MESSAGE"]
---
## END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT

```c
// 0x1CCD9A37359072CF 0xE7E3C98B
int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(char* textureDict, char* textureName, BOOL flash, int iconType, char* sender, char* subject);
```

Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).

Texture dictionary and texture name parameters are usually the same exact value.

Example result:

![](https://i.imgur.com/LviutDl.png)

Old description with list of possible icons and texture names:

```
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
```

## Parameters
* **textureDict**: The texture dictionary for the icon.
* **textureName**: The texture name for the icon.
* **flash**: Flash, doesn't seem to work no matter what.
* **iconType**: The icon type, see the list in the description below.
* **sender**: The notification title.
* **subject**: The notification subtitle.

## Return value
The notification handle.

## Examples
```lua
Citizen.CreateThread(function()
    -- Get the ped headshot image.
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Citizen.Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)

    -- Add the notification text
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName("This is the private message :o")

    -- Set the notification icon, title and subtitle.
    local title = GetPlayerName(PlayerId())
    local subtitle = "Private Message"
    local iconType = 0
    local flash = false -- Flash doesn't seem to work no matter what.
    EndTextCommandThefeedPostMessagetext(txd, txd, flash, iconType, title, subtitle)

    -- Draw the notification
    local showInBrief = true
    local blink = false -- blink doesn't work when using icon notifications.
    EndTextCommandThefeedPostTicker(blink, showInBrief)
    
    -- Cleanup after yourself!
    UnregisterPedheadshot(handle)
end)
```