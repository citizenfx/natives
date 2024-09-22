---
ns: HUD
---
## ADD_TEXT_COMPONENT_SUBSTRING_TIME

```c
// 0x1115F16B8AB9E8BF 0x135B3CD0
void ADD_TEXT_COMPONENT_SUBSTRING_TIME(int timestamp, int format);
```

Takes a time in milliseconds and converts it to a string. Use `~a~` to mark the position in your line of text where you want this substring inserted.

```cpp
enum {
    TEXT_FORMAT_MILLISECONDS = 1,
    TEXT_FORMAT_SECONDS = 2,
    TEXT_FORMAT_MINUTES = 4,
    TEXT_FORMAT_HOURS = 8,
    TEXT_FORMAT_DAYS = 16,
    // e.g. show 12:20 not 00:12:20
    TEXT_FORMAT_HIDE_LEADING_UNITS_EQUAL_TO_ZERO = 32,
    // e.g. show 1:14 not 01:14
    TEXT_FORMAT_HIDE_LEADING_ZEROS_ON_LEADING_UNITS = 64,
    // e.g. show 3m24s not 3:24
    TEXT_FORMAT_SHOW_UNIT_DIVIDERS_AS_LETTERS = 128,
    // e.g. show 3m24 not 3m24s
    TEXT_FORMAT_HIDE_UNIT_LETTER_FOR_SMALLEST_UNITS = 256,
    // e.g. show 05:51 not 05:519
    TEXT_FORMAT_HIDE_MILLISECONDS_UNITS_DIGIT = 512,
    // e.g. show 05:5 not 05:519
    TEXT_FORMAT_HIDE_MILLISECONDS_TENS_DIGIT = 1024,
    // e.g. show 12.345 not 12:345
    TEXT_FORMAT_USE_DOT_FOR_MILLISECOND_DIVIDER = 2048
}
```

## Parameters
* **timestamp**: The timestamp in milliseconds
* **format**: The format of the timestamp

