Contributing
============

Contributions are greatly appreciated! Some topics to contribute on:

- Documenting functionality of natives
- Documenting parameter and return types
- Naming unnamed natives appropriately
- Adding example code to natives
- Reviewing existing pull requests / issues

Guidelines
----------

Before you create a pull request/issue, please adhere to these guidelines:

## Pull request
### Naming convention

Natives go by a simple naming convention which should be adhered to.
- Filenames are in PascalCase, e.g. `ExampleNative.md`
- Native names are in UPPER_SNAKE_CASE, e.g. `EXAMPLE_NATIVE`
- Community-named natives must be prefixed by an underscore, e.g. `_EXAMPLE_NATIVE`

> Community-named natives have names that do not match the hash of the native.

When renaming a native, remember to:
- Keep an alias of the old name. This is necessary for backwards compatibility.
- Rename the file to match the new name.

### Descriptions
The description of a native should be clear. Avoid descriptions such as "unsure what this does", "needs research", "this native does nothing". Minimize incomplete information. Shortly describe what the native does, or what it's used for. No description is needed if name is obvious e.g. `GetEntityCoords.md`.

> Descriptions should not be code fenced. They are only used for NativeDB imports.

### Parameter and return types
Parameter and return type annotations are in C syntax. Each parameter and return type can be individually documented. See below for an [example](#example-documentation). 

**Note:** If you want to add a missing param, you cannot add arguments to the function declaration, it will break the ABI. please do the following:

```
### Added parameters
* **newParam**: Description of the native
```

under the description native section.

### Renaming parameters
When renaming a parameter, remember to also update the `## Parameters` section to match the parameter you just changed.

### Changing parameter or return types
Changes must be backwards compatible, if you are changing a parameter type or return type it's imperative to prepend `cs_type` to the type you changed, for example, if the old type were `Any` and it's changed to `float`, the current declaration should be `cs_type(Any) float x`.

You can check out these documented natives, [SET_RANDOM_BOATS](../VEHICLE/SetRandomBoats.md) or [SET_TRAIN_SPEED](../VEHICLE/SetTrainSpeed.md) to see exactly how `cs_type` declarations should be used.

<!-- > Changes **must** be backwards compatible. Due to a limitation in ABI compatibility, types should currently not be changed unless they keep the same underlying type. For example, changing `Any` to `void` is not backwards compatible, but since vehicles are integers, changing `int` to `Vehicle` is supported. -->

### Adding examples
When adding example code, start out with Lua. It's possible to add extra examples for JavaScript and C# as well. See below for an [example](#example-documentation) on how to do so. Examples in different languages must be functionally identical.

### External links
Avoid external links such as Pastebin, imgur or personal blogs, as these may be removed over time. If you do need to link externally, make sure its as permanent as possible, such as by adding it do the [FiveM documentation][fivem-docs].  

### Natives from the CFX namespace
This repository only contains original GTA V natives.
Natives from the CFX namespace can be found in the [FiveM source][cfx-natives].

**Note:** No official RedM native repository is available yet.

### Method signatures
All text needs to be written in American English (AmE) style. Please note any variations in spelling, punctuation, or terminology compared to other English language variants.

### Things to keep in mind
- Descriptions should not be code fenced.
- Mind your grammar. Everyone benefits from correct English.
- Don't add any markdown files that aren't natives.
- Don't use double hashes to declare new markdown headers in description blocks (it's not supported), use triple hashes instead.
- Try to add a code to try the PR
- Try to add the source of your researchs
- Try to avoid entering values that other readers won't be able to understand. Research the value on a site such as [Wolfram Alpha](https://wolframalpha.com) to see if there's an underlying reason for it, for example a value of `0.017453292`, would be `π/180` or simply `3.14159265359/180`.

## Issue
### What to add?
When creating a new issue, you need to keep in mind a few things:
- What is the issue?
- How did you encounter the issue?
- What build are you using?
- Do you have any code that can help reproduce the issue?
- What is supposed to be the expected result?
- Any additional pertinent comments?

### Template to follow:
When creating a issue, please use the following the template:
```
### What happened?
Please explain here

### Expected result
Please explain here

### Reproduction steps
Post code / images here

### Current build
Set server build here

### Additional information
Add info if needed
```
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

Compose a concise yet specific native description.

## Parameters
* **param**: The param description.

## Return value
Description of the return value

## Examples
```lua
-- A short example showcasing how this native works in Lua
local result = _EXAMPLE_NATIVE('Hello world')
print(result)
```

```js
// A short example showcasing how this native works in JavaScript
const result = _EXAMPLE_NATIVE('Hello world');
console.log(result);
```

```cs
// A short example showcasing how this native works in C#
bool result = _EXAMPLE_NATIVE('Hello world');
Debug.WriteLine(result);
```

~~~

Thanks for contributing! ❤️

[cfx-natives]: https://github.com/citizenfx/fivem/tree/master/ext/native-decls
[fivem-docs]: https://github.com/citizenfx/fivem-docs
