import ./xcb

{.passl: "-lxcb-errorrs".}
{.push header: "xcb/xcb_errors.h".}

type XcbErrorsContext* {.importc: "xcb_errors_context_t", incompleteStruct.} = object

{.push cdecl.}

proc errorsContextNew*(conn: ptr XcbConnection; ctx: ptr ptr XcbErrorsContext): cint {.importc: "xcb_errors_context_new".}
proc free*(ctx: ptr XcbErrorsContext) {.importc: "xcb_errors_context_free".}
proc getNameForMajorCode*(ctx: ptr XcbErrorsContext; majorCode: uint8): cstring {.importc: "xcb_errors_get_name_for_major_code".}
proc getNameForMinorCode*(ctx: ptr XcbErrorsContext; majorCode: uint8; minorCode: uint16): cstring {.importc: "xcb_errors_get_name_for_minor_code".}
proc getNameForCoreEvent*(ctx: ptr XcbErrorsContext; eventCode: uint8; extension: cstringArray): cstring {.importc: "xcb_errors_get_name_for_core_event".}
proc getNameForXgeEvent*(ctx: ptr XcbErrorsContext; majorCode: uint8; eventType: uint16): cstring {.importc: "xcb_errors_get_name_for_xge_event".}
proc getNameForXcbEvent*(ctx: ptr XcbErrorsContext; event: ptr XcbGenericEvent; extension: cstringArray): cstring {.importc: "xcb_errors_get_name_for_xcb_event".}
proc getNameForError*(ctx: ptr XcbErrorsContext; errorCode: uint8; extension: cstringArray): cstring {.importc: "xcb_errors_get_name_for_error".}

{.pop.}
{.pop.}
