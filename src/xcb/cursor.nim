import ./xcb

{.passl: "-lxcb-cursor".}
{.push cdecl, header: "xcb/xcb_cursor.h".}

type XcbCursorContext* {.importc: "xcb_cursor_context_t", incompleteStruct.} = object

proc cursorContextNew*(conn: ptr XcbConnection; screen: ptr XcbScreen; ctx: ptr ptr XcbCursorContext): cint {.importc: "xcb_cursor_context_new".}
proc loadCursor*(ctx: ptr XcbCursorContext; name: cstring): XcbCursor {.importc: "xcb_cursor_load_cursor".}
proc free*(ctx: ptr XcbCursorContext) {.importc: "xcb_cursor_context_free".}

{.pop.}
