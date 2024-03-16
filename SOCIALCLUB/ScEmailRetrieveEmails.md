---
ns: SOCIALCLUB
aliases: ["0x040ADDCBAFA1018A", "_SC_INBOX_GET_EMAILS"]
---
## SC_EMAIL_RETRIEVE_EMAILS

```c
// 0x040ADDCBAFA1018A
void SC_EMAIL_RETRIEVE_EMAILS(int offset, int limit);
```

For retrieving emails from the social club server. This native initiates a request to the Social Club servers to retrieve a specific number of emails starting from a given index. This native won't work since Social Club is not available on FiveM.

```
NativeDB Introduced: v323
```

## Parameters
* **offset**: The first index of the emails to retrieve, with 0 being the most recent email.
* **limit**: The number of emails to retrieve starting from the startIndex.
