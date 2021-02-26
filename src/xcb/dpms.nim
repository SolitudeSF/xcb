import ./xcb

const
  xcbDpmsMajorVersion* = 0
  xcbDpmsMinorVersion* = 0
  xcbDpmsGetVersion* = 0
  xcbDpmsCapable* = 1
  xcbDpmsGetTimeouts* = 2
  xcbDpmsSetTimeouts* = 3
  xcbDpmsEnable* = 4
  xcbDpmsDisable* = 5
  xcbDpmsForceLevel* = 6
  xcbDpmsInfo* = 7

{.passl: "-lxcb-dpms".}
{.push header: "xcb/dpms.h".}

var xcbDpmsId* {.extern: "xcb_dpms_id".}: XcbExtension

type
  XcbDpmsGetVersionCookie* {.importc: "xcb_dpms_get_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDpmsGetVersionRequest* {.importc: "xcb_dpms_get_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint16
    clientMinorVersion* {.importc: "client_minor_version".}: uint16

  XcbDpmsGetVersionReply* {.importc: "xcb_dpms_get_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajorVersion* {.importc: "server_major_version".}: uint16
    serverMinorVersion* {.importc: "server_minor_version".}: uint16

  XcbDpmsCapableCookie* {.importc: "xcb_dpms_capable_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDpmsCapableRequest* {.importc: "xcb_dpms_capable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbDpmsCapableReply* {.importc: "xcb_dpms_capable_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    capable*: uint8
    pad1: array[23, uint8]

  XcbDpmsGetTimeoutsCookie* {.importc: "xcb_dpms_get_timeouts_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDpmsGetTimeoutsRequest* {.importc: "xcb_dpms_get_timeouts_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbDpmsGetTimeoutsReply* {.importc: "xcb_dpms_get_timeouts_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    standbyTimeout* {.importc: "standby_timeout".}: uint16
    suspendTimeout* {.importc: "suspend_timeout".}: uint16
    offTimeout* {.importc: "off_timeout".}: uint16
    pad1: array[18, uint8]

  XcbDpmsSetTimeoutsRequest* {.importc: "xcb_dpms_set_timeouts_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    standbyTimeout* {.importc: "standby_timeout".}: uint16
    suspendTimeout* {.importc: "suspend_timeout".}: uint16
    offTimeout* {.importc: "off_timeout".}: uint16

  XcbDpmsEnableRequest* {.importc: "xcb_dpms_enable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbDpmsDisableRequest* {.importc: "xcb_dpms_disable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbDpmsDpmsMode* {.importc: "xcb_dpms_dpms_mode_t".} = enum
    xcbDpmsDpmsModeOn = 0, xcbDpmsDpmsModeStandby = 1,
    xcbDpmsDpmsModeSuspend = 2, xcbDpmsDpmsModeOff = 3

  XcbDpmsForceLevelRequest* {.importc: "xcb_dpms_force_level_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    powerLevel* {.importc: "power_level".}: uint16

  XcbDpmsInfoCookie* {.importc: "xcb_dpms_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDpmsInfoRequest* {.importc: "xcb_dpms_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbDpmsInfoReply* {.importc: "xcb_dpms_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    powerLevel* {.importc: "power_level".}: uint16
    state*: uint8
    pad1: array[21, uint8]

{.push cdecl.}

proc dpmsGetVersion*(c: ptr XcbConnection; clientMajorVersion: uint16; clientMinorVersion: uint16): XcbDpmsGetVersionCookie {.importc: "xcb_dpms_get_version".}
proc dpmsGetVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion: uint16; clientMinorVersion: uint16): XcbDpmsGetVersionCookie {.importc: "xcb_dpms_get_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDpmsGetVersionCookie; e: ptr ptr XcbGenericError): ptr XcbDpmsGetVersionReply {.importc: "xcb_dpms_get_version_reply".}
proc dpmsCapable*(c: ptr XcbConnection): XcbDpmsCapableCookie {.importc: "xcb_dpms_capable".}
proc dpmsCapableUnchecked*(c: ptr XcbConnection): XcbDpmsCapableCookie {.importc: "xcb_dpms_capable_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDpmsCapableCookie; e: ptr ptr XcbGenericError): ptr XcbDpmsCapableReply {.importc: "xcb_dpms_capable_reply".}
proc dpmsGetTimeouts*(c: ptr XcbConnection): XcbDpmsGetTimeoutsCookie {.importc: "xcb_dpms_get_timeouts".}
proc dpmsGetTimeoutsUnchecked*(c: ptr XcbConnection): XcbDpmsGetTimeoutsCookie {.importc: "xcb_dpms_get_timeouts_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDpmsGetTimeoutsCookie; e: ptr ptr XcbGenericError): ptr XcbDpmsGetTimeoutsReply {.importc: "xcb_dpms_get_timeouts_reply".}
proc dpmsSetTimeoutsChecked*(c: ptr XcbConnection; standbyTimeout: uint16; suspendTimeout: uint16; offTimeout: uint16): XcbVoidCookie {.discardable, importc: "xcb_dpms_set_timeouts_checked".}
proc dpmsSetTimeouts*(c: ptr XcbConnection; standbyTimeout: uint16; suspendTimeout: uint16; offTimeout: uint16): XcbVoidCookie {.discardable, importc: "xcb_dpms_set_timeouts".}
proc dpmsEnableChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_dpms_enable_checked".}
proc dpmsEnable*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_dpms_enable".}
proc dpmsDisableChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_dpms_disable_checked".}
proc dpmsDisable*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_dpms_disable".}
proc dpmsForceLevelChecked*(c: ptr XcbConnection; powerLevel: uint16): XcbVoidCookie {.discardable, importc: "xcb_dpms_force_level_checked".}
proc dpmsForceLevel*(c: ptr XcbConnection; powerLevel: uint16): XcbVoidCookie {.discardable, importc: "xcb_dpms_force_level".}
proc dpmsInfo*(c: ptr XcbConnection): XcbDpmsInfoCookie {.importc: "xcb_dpms_info".}
proc dpmsInfoUnchecked*(c: ptr XcbConnection): XcbDpmsInfoCookie {.importc: "xcb_dpms_info_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDpmsInfoCookie; e: ptr ptr XcbGenericError): ptr XcbDpmsInfoReply {.importc: "xcb_dpms_info_reply".}

{.pop.}
{.pop.}
