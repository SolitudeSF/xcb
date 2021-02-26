import ./xcb

const
  xcbXevieMajorVersion* = 1
  xcbXevieMinorVersion* = 0
  xcbXevieQueryVersion* = 0
  xcbXevieStart* = 1
  xcbXevieEnd* = 2
  xcbXevieSend* = 3
  xcbXevieSelectInput* = 4

{.push header: "xcb/xevie.h".}

var xcbXevieId* {.importc: "xcb_xevie_id".}: XcbExtension

type
  XcbXevieQueryVersionCookie* {.importc: "xcb_xevie_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXevieQueryVersionRequest* {.importc: "xcb_xevie_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint16
    clientMinorVersion* {.importc: "client_minor_version".}: uint16

  XcbXevieQueryVersionReply* {.importc: "xcb_xevie_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajorVersion* {.importc: "server_major_version".}: uint16
    serverMinorVersion* {.importc: "server_minor_version".}: uint16
    pad1: array[20, uint8]

  XcbXevieStartCookie* {.importc: "xcb_xevie_start_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXevieStartRequest* {.importc: "xcb_xevie_start_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXevieStartReply* {.importc: "xcb_xevie_start_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbXevieEndCookie* {.importc: "xcb_xevie_end_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXevieEndRequest* {.importc: "xcb_xevie_end_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cmap*: uint32

  XcbXevieEndReply* {.importc: "xcb_xevie_end_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbXevieDatatype* {.importc: "xcb_xevie_datatype_t".} = enum
    xcbXevieDatatypeUnmodified = 0, xcbXevieDatatypeModified = 1

  XcbXevieEvent* {.importc: "xcb_xevie_event_t", bycopy.} = object
    pad0: array[32, uint8]

  XcbXevieEventIterator* {.importc: "xcb_xevie_event_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXevieEvent]
    rem*: cint
    index*: cint

  XcbXevieSendCookie* {.importc: "xcb_xevie_send_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXevieSendRequest* {.importc: "xcb_xevie_send_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    event*: XcbXevieEvent
    dataType* {.importc: "data_type".}: uint32
    pad0: array[64, uint8]

  XcbXevieSendReply* {.importc: "xcb_xevie_send_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbXevieSelectInputCookie* {.importc: "xcb_xevie_select_input_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXevieSelectInputRequest* {.importc: "xcb_xevie_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    eventMask* {.importc: "event_mask".}: uint32

  XcbXevieSelectInputReply* {.importc: "xcb_xevie_select_input_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

{.push cdecl.}

proc xevieQueryVersion*(c: ptr XcbConnection; client_major_version: uint16; client_minor_version: uint16): XcbXevieQueryVersionCookie {.importc: "xcb_xevie_query_version".}
proc xevieQueryVersionUnchecked*(c: ptr XcbConnection; client_major_version: uint16; client_minor_version: uint16): XcbXevieQueryVersionCookie {.importc: "xcb_xevie_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXevieQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXevieQueryVersionReply {.importc: "xcb_xevie_query_version_reply".}
proc xevieStart*(c: ptr XcbConnection; screen: uint32): XcbXevieStartCookie {.importc: "xcb_xevie_start".}
proc xevieStartUnchecked*(c: ptr XcbConnection; screen: uint32): XcbXevieStartCookie {.importc: "xcb_xevie_start_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXevieStartCookie; e: ptr ptr XcbGenericError): ptr XcbXevieStartReply {.importc: "xcb_xevie_start_reply".}
proc xevieEnd*(c: ptr XcbConnection; cmap: uint32): XcbXevieEndCookie {.importc: "xcb_xevie_end".}
proc xevieEndUnchecked*(c: ptr XcbConnection; cmap: uint32): XcbXevieEndCookie {.importc: "xcb_xevie_end_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXevieEndCookie; e: ptr ptr XcbGenericError): ptr XcbXevieEndReply {.importc: "xcb_xevie_end_reply".}
proc next*(i: ptr XcbXevieEventIterator) {.importc: "xcb_xevie_event_next".}
proc iterEnd*(i: XcbXevieEventIterator): XcbGenericIterator {.importc: "xcb_xevie_event_end".}
proc send*(c: ptr XcbConnection; event: XcbXevieEvent; data_type: uint32): XcbXevieSendCookie {.importc: "xcb_xevie_send".}
proc sendUnchecked*(c: ptr XcbConnection; event: XcbXevieEvent; data_type: uint32): XcbXevieSendCookie {.importc: "xcb_xevie_send_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXevieSendCookie; e: ptr ptr XcbGenericError): ptr XcbXevieSendReply {.importc: "xcb_xevie_send_reply".}
proc xevieSelectInput*(c: ptr XcbConnection; event_mask: uint32): XcbXevieSelectInputCookie {.importc: "xcb_xevie_select_input".}
proc xevieSelectInputUnchecked*(c: ptr XcbConnection; event_mask: uint32): XcbXevieSelectInputCookie {.importc: "xcb_xevie_select_input_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXevieSelectInputCookie; e: ptr ptr XcbGenericError): ptr XcbXevieSelectInputReply {.importc: "xcb_xevie_select_input_reply".}

{.pop.}
{.pop.}
