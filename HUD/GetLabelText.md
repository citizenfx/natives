---
ns: HUD
---
## _GET_LABEL_TEXT

```c
// 0x7B5280EBA9840C72 0x95C4B5AD
char* _GET_LABEL_TEXT(char* labelName);
```

Gets a string literal from a label name.

Most useful application for this is getting vehicle labels from result of [GET_DISPLAY_NAME_FROM_VEHICLE_MODEL](#_0xB215AAC32D25D019)

For a full list of built-in labels search for **global.gxt2** in GTA Files.

To add a custom text entry see [ADD_TEXT_ENTRY](#_0x32CA01C3)

Some example label names are:

STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3

## Parameters
* **labelName**: The label name to get the text/label from

## Return value

The label text, or "NULL" (not nil, but string literal NULL) if not found

## Examples

```lua
local label = GetLabelText("STRING")

print(label) -- ~a~

local label = GetLabelText("ESDOLLA")

print(label) -- $~a~

local label = GetLabelText("ESMINDOLLA")

print(label) -- -$~a~

local label = GetLabelText("DFLT_MNU_OPT")

print(label) -- Exit

-- Non existent label
local label = GetLabelText("this_label_doesnt_exist")

print(label) -- NULL

local model = `baller`
local displayName = GetDisplayNameFromVehicleModel(model)
local vehicleLabel = GetLabelText(displayName)

if vehicleLabel == "NULL" then
    print(vehicleLabel) -- Baller
else
    -- Label not found, use displayName instead
    print(displayName) -- BALLER
    vehicleLabel = displayName
end

local makeName = GetMakeNameFromVehicleModel(model)
local makeLabel = GetLabelText(makeName)
if makeLabel ~= "NULL" then
    print(("%s %s"):format(makeLabel, vehicleLabel)) -- Gallivanter Baller
end

```