---
ns: SOCIALCLUB
aliases: ["0x16DA8172459434AA"]
---
## SC_EMAIL_GET_RETRIEVAL_STATUS

```c
// 0x16DA8172459434AA
int SC_EMAIL_GET_RETRIEVAL_STATUS();
```
Returns the retrieval status after [`SC_EMAIL_RETRIEVE_EMAILS`](#_0x040ADDCBAFA1018A) has been called.
This native won't work since Social Club is not available on FiveM.

```
NativeDB Introduced: v323
```

```c
enum eEmailRetrievalStatus {
    EMAIL_RETRIEVAL_NONE = 0, // No email retrieval process is currently underway.
    EMAIL_RETRIEVAL_PENDING = 1, // The email retrieval process has been initiated and is pending completion.
    EMAIL_RETRIEVAL_FAILED = 2, // The email retrieval process has failed.
    EMAIL_RETRIEVAL_SUCCEEDED = 3, // The email retrieval process has successfully completed.
    EMAIL_RETRIEVAL_CANCELLED = 4 // The email retrieval process has been cancelled.
}
```

## Return value
Returns an integer value representing the status of the email retrieval process. This value corresponds to the `eEmailRetrievalStatus` enum.
