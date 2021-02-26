import ./xcb

const
  xcbXineramaMajorVersion* = 1
  xcbXineramaMinorVersion* = 1
  xcbXineramaQueryVersion* = 0
  xcbXineramaGetState* = 1
  xcbXineramaGetScreenCount* = 2
  xcbXineramaGetScreenSize* = 3
  xcbXineramaIsActive* = 4
  xcbXineramaQueryScreens* = 5

{.passl: "-lxcb-xinerama".}
{.push header: "xcb/xinerama.h".}

var xcbXineramaId* {.extern: "xcb_xinerama_id".}: XcbExtension

type
  XcbXineramaScreenInfo* {.importc: "xcb_xinerama_screen_info_t", bycopy.} = object
    xOrg* {.importc: "x_org".}: int16
    yOrg* {.importc: "y_org".}: int16
    width*: uint16
    height*: uint16

  XcbXineramaScreenInfoIterator* {.importc: "xcb_xinerama_screen_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXineramaScreenInfo]
    rem*: cint
    index*: cint

  XcbXineramaQueryVersionCookie* {.importc: "xcb_xinerama_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaQueryVersionRequest* {.importc: "xcb_xinerama_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    major*: uint8
    minor*: uint8

  XcbXineramaQueryVersionReply* {.importc: "xcb_xinerama_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    major*: uint16
    minor*: uint16

  XcbXineramaGetStateCookie* {.importc: "xcb_xinerama_get_state_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaGetStateRequest* {.importc: "xcb_xinerama_get_state_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXineramaGetStateReply* {.importc: "xcb_xinerama_get_state_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    state*: uint8
    sequence*: uint16
    length*: uint32
    window*: XcbWindow

  XcbXineramaGetScreenCountCookie* {.importc: "xcb_xinerama_get_screen_count_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaGetScreenCountRequest* {.importc: "xcb_xinerama_get_screen_count_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXineramaGetScreenCountReply* {.importc: "xcb_xinerama_get_screen_count_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    screenCount* {.importc: "screen_count".}: uint8
    sequence*: uint16
    length*: uint32
    window*: XcbWindow

  XcbXineramaGetScreenSizeCookie* {.importc: "xcb_xinerama_get_screen_size_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaGetScreenSizeRequest* {.importc: "xcb_xinerama_get_screen_size_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    screen*: uint32

  XcbXineramaGetScreenSizeReply* {.importc: "xcb_xinerama_get_screen_size_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    width*: uint32
    height*: uint32
    window*: XcbWindow
    screen*: uint32

  XcbXineramaIsActiveCookie* {.importc: "xcb_xinerama_is_active_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaIsActiveRequest* {.importc: "xcb_xinerama_is_active_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXineramaIsActiveReply* {.importc: "xcb_xinerama_is_active_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    state*: uint32

  XcbXineramaQueryScreensCookie* {.importc: "xcb_xinerama_query_screens_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXineramaQueryScreensRequest* {.importc: "xcb_xinerama_query_screens_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXineramaQueryScreensReply* {.importc: "xcb_xinerama_query_screens_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    number*: uint32
    pad1: array[20, uint8]

{.push cdecl.}

proc next*(i: ptr XcbXineramaScreenInfoIterator) {.importc: "xcb_xinerama_screen_info_next".}
proc iterEnd*(i: XcbXineramaScreenInfoIterator): XcbGenericIterator {.importc: "xcb_xinerama_screen_info_end".}
proc xineramaQueryVersion*(c: ptr XcbConnection; major: uint8; minor: uint8): XcbXineramaQueryVersionCookie {.importc: "xcb_xinerama_query_version".}
proc xineramaQueryVersionUnchecked*(c: ptr XcbConnection; major: uint8; minor: uint8): XcbXineramaQueryVersionCookie {.importc: "xcb_xinerama_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaQueryVersionReply {.importc: "xcb_xinerama_query_version_reply".}
proc getState*(c: ptr XcbConnection; window: XcbWindow): XcbXineramaGetStateCookie {.importc: "xcb_xinerama_get_state".}
proc getStateUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbXineramaGetStateCookie {.importc: "xcb_xinerama_get_state_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaGetStateCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaGetStateReply {.importc: "xcb_xinerama_get_state_reply".}
proc getScreenCount*(c: ptr XcbConnection; window: XcbWindow): XcbXineramaGetScreenCountCookie {.importc: "xcb_xinerama_get_screen_count".}
proc getScreenCountUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbXineramaGetScreenCountCookie {.importc: "xcb_xinerama_get_screen_count_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaGetScreenCountCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaGetScreenCountReply {.importc: "xcb_xinerama_get_screen_count_reply".}
proc getScreenSize*(c: ptr XcbConnection; window: XcbWindow; screen: uint32): XcbXineramaGetScreenSizeCookie {.importc: "xcb_xinerama_get_screen_size".}
proc getScreenSizeUnchecked*(c: ptr XcbConnection; window: XcbWindow; screen: uint32): XcbXineramaGetScreenSizeCookie {.importc: "xcb_xinerama_get_screen_size_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaGetScreenSizeCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaGetScreenSizeReply {.importc: "xcb_xinerama_get_screen_size_reply".}
proc isActive*(c: ptr XcbConnection): XcbXineramaIsActiveCookie {.importc: "xcb_xinerama_is_active".}
proc isActiveUnchecked*(c: ptr XcbConnection): XcbXineramaIsActiveCookie {.importc: "xcb_xinerama_is_active_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaIsActiveCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaIsActiveReply {.importc: "xcb_xinerama_is_active_reply".}
proc queryScreensSizeof*(buffer: pointer): cint {.importc: "xcb_xinerama_query_screens_sizeof".}
proc queryScreens*(c: ptr XcbConnection): XcbXineramaQueryScreensCookie {.importc: "xcb_xinerama_query_screens".}
proc queryScreensUnchecked*(c: ptr XcbConnection): XcbXineramaQueryScreensCookie {.importc: "xcb_xinerama_query_screens_unchecked".}
proc screenInfo*(R: ptr XcbXineramaQueryScreensReply): ptr UncheckedArray[XcbXineramaScreenInfo] {.importc: "xcb_xinerama_query_screens_screen_info".}
proc screenInfoLength*(R: ptr XcbXineramaQueryScreensReply): cint {.importc: "xcb_xinerama_query_screens_screen_info_length".}
proc screenInfoIterator*(R: ptr XcbXineramaQueryScreensReply): XcbXineramaScreenInfoIterator {.importc: "xcb_xinerama_query_screens_screen_info_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXineramaQueryScreensCookie; e: ptr ptr XcbGenericError): ptr XcbXineramaQueryScreensReply {.importc: "xcb_xinerama_query_screens_reply".}

{.pop.}
{.pop.}
