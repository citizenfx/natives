GTA V Natives Documentation
===========================

Documentation of GTA V's native function database.

https://runtime.fivem.net/doc/natives/

Contributing
------------

- Document how a native works and what it does
- Fix function parameter and return types
- Appropriately name some unknown natives
- Add simple example code
- Review existing pull requests

Before you create a pull request, please keep the following in mind:

- Custom named natives (where the name does not match the hash) must have a `_` prefix before the name. See naming conventions on the [Native DB topic](https://gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/).
- Rename the file if a native was renamed.
- Keep an alias of the old name if a native was renamed. This is necessary for backwards compatibility.
- Provide a well tested example to validate your change. We want to avoid untested and wrong information. This is preferably a small code snippet that shows how your change is correct.
- Avoid external links. External links may be removed over time. If you do need to link externally, make sure its as permanent as possible. We welcome additional documentation in the [fivem-docs](https://github.com/citizenfx/fivem-docs) repository.
- Only GTA V natives live in this repository. Natives in the CFX namespace can be found in the [FiveM source](https://github.com/citizenfx/fivem) repository.
- Mind your grammar. Correct English is preferred.
