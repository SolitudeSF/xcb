import ./xcb

const
  xcbXcMiscMajorVersion* = 1
  xcbXcMiscMinorVersion* = 1
  xcbXcMiscGetVersion* = 0
  xcbXcMiscGetXidRange* = 1
  xcbXcMiscGetXidList* = 2

{.push header: "xcb/xc_misc.h".}

var xcbXcMiscId* {.extern: "xcb_xc_misc_id".}: XcbExtension

type
  XcbXcMiscGetVersionCookie* {.importc: "xcb_xc_misc_get_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXcMiscGetVersionRequest* {.importc: "xcb_xc_misc_get_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint16
    clientMinorVersion* {.importc: "client_minor_version".}: uint16

  XcbXcMiscGetVersionReply* {.importc: "xcb_xc_misc_get_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajorVersion* {.importc: "server_major_version".}: uint16
    serverMinorVersion* {.importc: "server_minor_version".}: uint16

  XcbXcMiscGetXidRangeCookie* {.importc: "xcb_xc_misc_get_xid_range_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXcMiscGetXidRangeRequest* {.importc: "xcb_xc_misc_get_xid_range_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXcMiscGetXidRangeReply* {.importc: "xcb_xc_misc_get_xid_range_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    startId* {.importc: "start_id".}: uint32
    count*: uint32

  XcbXcMiscGetXidListCookie* {.importc: "xcb_xc_misc_get_xid_list_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXcMiscGetXidListRequest* {.importc: "xcb_xc_misc_get_xid_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    count*: uint32

  XcbXcMiscGetXidListReply* {.importc: "xcb_xc_misc_get_xid_list_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    idsLen* {.importc: "ids_len".}: uint32
    pad1: array[20, uint8]

{.push cdecl.}

proc xcMiscGetVersion*(c: ptr XcbConnection; clientMajorVersion: uint16; clientMinorVersion: uint16): XcbXcMiscGetVersionCookie {.importc: "xcb_xc_misc_get_version".}
proc xcMiscGetVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion: uint16; clientMinorVersion: uint16): XcbXcMiscGetVersionCookie {.importc: "xcb_xc_misc_get_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXcMiscGetVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXcMiscGetVersionReply {.importc: "xcb_xc_misc_get_version_reply".}
proc getXidRange*(c: ptr XcbConnection): XcbXcMiscGetXidRangeCookie {.importc: "xcb_xc_misc_get_xid_range".}
proc getXidRangeUnchecked*(c: ptr XcbConnection): XcbXcMiscGetXidRangeCookie {.importc: "xcb_xc_misc_get_xid_range_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXcMiscGetXidRangeCookie; e: ptr ptr XcbGenericError): ptr XcbXcMiscGetXidRangeReply {.importc: "xcb_xc_misc_get_xid_range_reply".}
proc getXidListSizeof*(buffer: pointer): cint {.importc: "xcb_xc_misc_get_xid_list_sizeof".}
proc getXidList*(c: ptr XcbConnection; count: uint32): XcbXcMiscGetXidListCookie {.importc: "xcb_xc_misc_get_xid_list".}
proc getXidListUnchecked*(c: ptr XcbConnection; count: uint32): XcbXcMiscGetXidListCookie {.importc: "xcb_xc_misc_get_xid_list_unchecked".}
proc ids*(R: ptr XcbXcMiscGetXidListReply): ptr uint32 {.importc: "xcb_xc_misc_get_xid_list_ids".}
proc idsLength*(R: ptr XcbXcMiscGetXidListReply): cint {.importc: "xcb_xc_misc_get_xid_list_ids_length".}
proc idsEnd*(R: ptr XcbXcMiscGetXidListReply): XcbGenericIterator {.importc: "xcb_xc_misc_get_xid_list_ids_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXcMiscGetXidListCookie; e: ptr ptr XcbGenericError): ptr XcbXcMiscGetXidListReply {.importc: "xcb_xc_misc_get_xid_list_reply".}

{.pop.}
{.pop.}
