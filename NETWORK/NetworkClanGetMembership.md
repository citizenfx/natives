---
ns: NETWORK
---
## NETWORK_CLAN_GET_MEMBERSHIP

```c
// 0xC8BC2011F67B3411 0xCDC4A590
BOOL NETWORK_CLAN_GET_MEMBERSHIP(int* networkHandle, int* clanMembership, int membershipIndex);
```

Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).

Test C++ code:
https://pastebin.com/CD8wni4C

## Parameters
* **networkHandle**: A player network handle.
* **clanMembership**: Output buffer for the membership data. Also known as "desc". 
* **membershipIndex**: If the player has multiple crews/memberships, use [0-9], or -1 to get the active crew/membership.

## Return value
Returns true on success, false otherwise.

## Examples
