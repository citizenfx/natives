---
ns: NETWORK
---
## NETWORK_CLAN_GET_MEMBERSHIP_VALID

```c
// 0x48A59CF88D43DF0E 0x48914F6A
BOOL NETWORK_CLAN_GET_MEMBERSHIP_VALID(int* networkHandle, int membershipIndex);
```

Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.

## Parameters
* **networkHandle**: A player network handle.
* **membershipIndex**: If the player has multiple crews/memberships, use [0-9], or -1 to get the active crew/membership.

## Return value
Returns true if valid, false otherwise.
