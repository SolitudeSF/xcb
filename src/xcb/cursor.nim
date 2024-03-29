import ./xcb, private/importutil

when not xcbDynlib:
  {.passl: "-lxcb-cursor".}
  {.push cdecl, header: "xcb/xcb_cursor.h".}

type XcbCursorContext* {.rename: "xcb_cursor_context_t", incompleteStruct.} = object

when xcbDynlib:
  {.push dynlib: "libxcb-cursor.so(|.0)".}

proc cursorContextNew*(conn: ptr XcbConnection; screen: ptr XcbScreen; ctx: ptr ptr XcbCursorContext): cint {.importc: "xcb_cursor_context_new".}
proc loadCursor*(ctx: ptr XcbCursorContext; name: cstring): XcbCursor {.importc: "xcb_cursor_load_cursor".}
proc free*(ctx: ptr XcbCursorContext) {.importc: "xcb_cursor_context_free".}

{.pop.}
