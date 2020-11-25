Contributing
============

Contributions are greatly appreciated! Some topics to contribute on:

- Documenting functionality of natives
- Documenting parameter and return types
- Naming unnamed natives appropriately
- Adding example code to natives
- Reviewing existing pull requests

Guidelines
----------

Before you create a pull request, please adhere to these guidelines.

### Naming convention

Natives go by a simple naming convention which should be adhered to.

- Filenames are in PascalCase, e.g. `GetEntityCoords.md`
- Native names are in UPPER_SNAKE_CASE, e.g. `GET_ENTITY_COORDS`
- Community-named natives must be prefixed by an underscore, e.g. `_EXAMPLE_NATIVE`

> Community-named natives have names that do not match the hash of the native.

When renaming a native, remember to:
- Keep an alias of the old name. This is necessary for backwards compatibility.
- Rename the file to match the new name.

### Descriptions
The description of a native should be clear. Avoid descriptions such as "unsure what this does" or "needs research". Minimize incomplete information. Shortly describe what the native does, or what it's used for.

> Descriptions should not be code fenced. They are only used for NativeDB imports.

### Parameter and return types
Parameter and return type annotations are in C syntax. Each parameter and return type can be individually documented. See below for an [example](#example-documentation).

<!-- > Changes **must** be backwards compatible. Due to a limitation in ABI compatibility, types should currently not be changed unless they keep the same underlying type. For example, changing `Any` to `void` is not backwards compatible, but since vehicles are integers, changing `int` to `Vehicle` is supported. -->

### Adding examples
When adding example code, start out with Lua. It's possible to add extra examples for JavaScript and C# as well. See below for an [example](#example-documentation) on how to do so. Examples in different languages must be functionally identical.

### External links
Avoid external links such as Pastebin or personal blogs when possible, as these may be removed over time. If you do need to link externally, make sure its as permanent as possible, such as by adding it do the [FiveM documentation][fivem-docs].

### Natives from the CFX namespace
This repository only contains original GTA V natives.
Natives from the CFX namespace can be found in the [FiveM source][cfx-natives].

### Things to keep in mind
- Descriptions should not be code fenced.
- Mind your grammar. Everyone benefits from correct English.
- Don't add any markdown files that aren't natives.

Submitting a pull request
-------------------------

With over 5000 natives, it's hard for us to manually review and test all contributions. We love to see a well tested example to validate your change in the pull request description. Doing so will allow us to review your change much faster, and avoids untested or wrong information. This includes:

- Code to test and validate your change with
- Screenshots showcasing what the change is about
- Source material of used information

Example documentation
---------------------
Below an example of how natives are documented. Other good examples are [GET_ENTITY_COORDS](../ENTITY/GetEntityCoords.md) and [GET_PLAYER_PED](../PLAYER/GetPlayerPed.md).

~~~
---
ns: EXAMPLE_NAMESPACE
aliases: ["0x0123456789ABCDEF","_OLD_NATIVE_NAME"]
---
## _EXAMPLE_NATIVE

```c
// 0x0123456789ABCDEF 0x1234ABCD
BOOL _EXAMPLE_NATIVE(int param);
```

Description of the native

## Parameters
* **param**: Description of the parameter

## Return value
Description of the return value

## Examples
```lua
-- A short example showcasing how this native works in Lua
local result = ExampleNative(123)
```

```js
// A short example showcasing how this native works in JavaScript
const result = ExampleNative(123);
```

```cs
// A short example showcasing how this native works in C#
bool result = ExampleNative(123);
```
~~~

Thanks for contributing! ❤️

[cfx-natives]: https://github.com/citizenfx/fivem/tree/master/ext/native-decls
[fivem-docs]: https://github.com/citizenfx/fivem-docs
