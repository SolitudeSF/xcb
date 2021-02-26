import ./xcb

const
  xcbTestMajorVersion* = 2
  xcbTestMinorVersion* = 2
  xcbTestGetVersion* = 0
  xcbTestCompareCursor* = 1
  xcbTestFakeInput* = 2
  xcbTestGrabControl* = 3

{.passl: "-lxcb-xtest".}
{.push header: "xcb/xtest.h".}

var xcbTestId* {.extern: "xcb_test_id".}: XcbExtension

type
  XcbTestGetVersionCookie* {.importc: "xcb_test_get_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbTestGetVersionRequest* {.importc: "xcb_test_get_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint8
    pad0: uint8
    minorVersion* {.importc: "minor_version".}: uint16

  XcbTestGetVersionReply* {.importc: "xcb_test_get_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    majorVersion* {.importc: "major_version".}: uint8
    sequence*: uint16
    length*: uint32
    minorVersion* {.importc: "minor_version".}: uint16

  XcbTestCursor* {.importc: "xcb_test_cursor_t".} = enum
    xcbTestCursorNone = 0, xcbTestCursorCurrent = 1

  XcbTestCompareCursorCookie* {.importc: "xcb_test_compare_cursor_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbTestCompareCursorRequest* {.importc: "xcb_test_compare_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    cursor*: XcbCursor

  XcbTestCompareCursorReply* {.importc: "xcb_test_compare_cursor_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    same*: uint8
    sequence*: uint16
    length*: uint32

  XcbTestFakeInputRequest* {.importc: "xcb_test_fake_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    `type`*: uint8
    detail*: uint8
    pad0: array[2, uint8]
    time*: uint32
    root*: XcbWindow
    pad1: array[8, uint8]
    rootX*: int16
    rootY*: int16
    pad2: array[7, uint8]
    deviceid*: uint8

  XcbTestGrabControlRequest* {.importc: "xcb_test_grab_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    impervious*: uint8
    pad0: array[3, uint8]

{.push cdecl.}

proc testGetVersion*(c: ptr XcbConnection; majorVersion: uint8; minorVersion: uint16): XcbTestGetVersionCookie {.importc: "xcb_test_get_version".}
proc testGetVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint8; minorVersion: uint16): XcbTestGetVersionCookie {.importc: "xcb_test_get_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbTestGetVersionCookie; e: ptr ptr XcbGenericError): ptr XcbTestGetVersionReply {.importc: "xcb_test_get_version_reply".}
proc compareCursor*(c: ptr XcbConnection; window: XcbWindow; cursor: XcbCursor): XcbTestCompareCursorCookie {.importc: "xcb_test_compare_cursor".}
proc compareCursorUnchecked*(c: ptr XcbConnection; window: XcbWindow; cursor: XcbCursor): XcbTestCompareCursorCookie {.importc: "xcb_test_compare_cursor_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbTestCompareCursorCookie; e: ptr ptr XcbGenericError): ptr XcbTestCompareCursorReply {.importc: "xcb_test_compare_cursor_reply".}
proc fakeInputChecked*(c: ptr XcbConnection; `type`: uint8; detail: uint8; time: uint32; root: XcbWindow; rootX: int16; rootY: int16; deviceid: uint8): XcbVoidCookie {.discardable, importc: "xcb_test_fake_input_checked".}
proc fakeInput*(c: ptr XcbConnection; `type`: uint8; detail: uint8; time: uint32; root: XcbWindow; rootX: int16; rootY: int16; deviceid: uint8): XcbVoidCookie {.discardable, importc: "xcb_test_fake_input".}
proc grabControlChecked*(c: ptr XcbConnection; impervious: uint8): XcbVoidCookie {.discardable, importc: "xcb_test_grab_control_checked".}
proc grabControl*(c: ptr XcbConnection; impervious: uint8): XcbVoidCookie {.discardable, importc: "xcb_test_grab_control".}

{.pop.}
{.pop.}
