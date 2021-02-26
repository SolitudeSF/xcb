import ./xcb

{.passl: "-lxcb-keysyms".}
{.push header: "xcb/xcb_keysyms.h".}

type XcbKeySymbols* {.importc: "xcb_key_symbols_t", incompleteStruct.} = object

{.push cdecl.}

proc keySymbolsAlloc*(c: ptr XcbConnection): ptr XcbKeySymbols {.importc: "xcb_key_symbols_alloc".}
proc free*(syms: ptr XcbKeySymbols) {.importc: "xcb_key_symbols_free".}
proc getKeysym*(syms: ptr XcbKeySymbols; keycode: XcbKeycode; col: cint): XcbKeysym {.importc: "xcb_key_symbols_get_keysym".}
proc getKeycode*(syms: ptr XcbKeySymbols; keysym: XcbKeysym): ptr XcbKeycode {.importc: "xcb_key_symbols_get_keycode".}
proc pressEventLookupKeysym*(syms: ptr XcbKeySymbols; event: ptr XcbKeyPressEvent; col: cint): XcbKeysym {.importc: "xcb_key_press_lookup_keysym".}
proc releaseEventLookupKeysym*(syms: ptr XcbKeySymbols; event: ptr XcbKeyReleaseEvent; col: cint): XcbKeysym {.importc: "xcb_key_release_lookup_keysym".}
proc refreshKeyboardMapping*(syms: ptr XcbKeySymbols; event: ptr XcbMappingNotifyEvent): cint {.importc: "xcb_refresh_keyboard_mapping".}
proc isKeypadKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_keypad_key".}
proc isPrivateKeypadKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_private_keypad_key".}
proc isCursorKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_cursor_key".}
proc isPfKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_pf_key".}
proc isFunctionKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_function_key".}
proc isMiscFunctionKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_misc_function_key".}
proc isModifierKey*(keysym: XcbKeysym): cint {.importc: "xcb_is_modifier_key".}

{.pop.}
{.pop.}
