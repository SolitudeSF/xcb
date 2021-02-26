import ./xcb

const
  xcbGenericeventMajorVersion* = 1
  xcbGenericeventMinorVersion* = 0
  xcbGenericEventQueryVersion* = 0

{.push header: "xcb/ge.h".}

var xcbGenericeventId* {.extern: "xcb_genericevent_id".}: XcbExtension

type
  XcbGenericEventQueryVersionCookie* {.importc: "xcb_genericevent_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGenericEventQueryVersionRequest* {.importc: "xcb_genericevent_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint16
    clientMinorVersion* {.importc: "client_minor_version".}: uint16

  XcbGenericEventQueryVersionReply* {.importc: "xcb_genericevent_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16
    pad1: array[20, uint8]

{.push cdecl.}

proc genericEventQueryVersion*(c: ptr XcbConnection; clientMajorVersion, clientMinorVersion: uint16): XcbGenericEventQueryVersionCookie {.importc: "xcb_genericevent_query_version".}
proc genericEventQueryVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion, clientMinorVersion: uint16): XcbGenericEventQueryVersionCookie {.importc: "xcb_genericevent_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGenericEventQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbGenericEventQueryVersionReply {.importc: "xcb_genericevent_query_version_reply".}

{.pop.}
{.pop.}
