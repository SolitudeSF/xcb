import ./xcb, private/importutil

const
  xcbBigrequestsMajorVersion* = 0
  xcbBigrequestsMinorVersion* = 0
  xcbBigRequestsEnable* = 0

when not xcbDynlib:
  {.push header: "xcb/bigreq.h".}

  var xcbBigRequestsId* {.extern: "xcb_big_request_id".}: XcbExtension

type
  XcbBigRequestsEnableCookie* {.rename: "xcb_big_requests_enable_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbBigRequestsEnableRequest* {.rename: "xcb_big_requests_enable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbBigRequestsEnableReply* {.rename: "xcb_big_requests_enable_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    maximumRequestLength* {.importc: "maximum_request_length".}: uint32

when xcbDynlib:
  {.push dynlib: "libxcb.so(|.1)".}
{.push cdecl.}

proc bigRequestsEnable*(c: ptr XcbConnection): XcbBigRequestsEnableCookie {.importc: "xcb_big_requests_enable".}
proc bigRequestsEnableUnchecked*(c: ptr XcbConnection): XcbBigRequestsEnableCookie {.importc: "xcb_big_requests_enable_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbBigRequestsEnableCookie; e: ptr ptr XcbGenericError): ptr XcbBigRequestsEnableReply {.importc: "xcb_big_requests_enable_reply".}

{.pop.}
{.pop.}
