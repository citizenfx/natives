---
apiset: server
---
## GetPlayerIdentifiers
Variation of GetPlayerIdentifier that returns the identifiers in a table format

```lua
// ???
local retval --[[ table ]] =
	GetPlayerIdentifier(
		playerSrc --[[ int ]]
	)
```

Gets the players identifiers in table format.

## Parameters
* **playerSrc**: The player who's identifiers you'd like to get.

## Return value
The players identifiers in table format

## Usages
Useful to link with a PlayerConnecting event to pull identifiers and check on join

## Examples
```lua
    local steamid  = false
    local license  = false
    local discord  = false
    local xbl      = false
    local liveid   = false
    local ip       = false

    for k,v in pairs(GetPlayerIdentifiers(source)) do
      print(v) -- Will print each identifier
		   if string.sub(v, 1, string.len("steam:")) == "steam:" then
	   		steamid = v
	     elseif string.sub(v, 1, string.len("license:")) == "license:" then
			  license = v
		   elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
       elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
			  ip = v
		   elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
       elseif string.sub(v, 1, string.len("live:")) == "live:" then
			  liveid = v
       end
    end
```
