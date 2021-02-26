const
  xcbEventResponseTypeMask* = 0x0000007F

template xcbEventResponseType*(e: untyped): untyped =
  e.response_type and xcbEventResponseTypeMask

template xcbEventSent*(e: untyped): untyped =
  e.response_type and not xcbEventResponseTypeMask

{.passl: "-lxcb-util".}
{.push cdecl, header: "xcb/xcb_event.h".}

proc eventGetLabel*(`type`: uint8): cstring {.importc: "xcb_event_get_label".}
proc eventGetErrorLabel*(`type`: uint8): cstring {.importc: "xcb_event_get_error_label".}
proc eventGetRequestLabel*(`type`: uint8): cstring {.importc: "xcb_event_get_request_label".}

{.pop.}
