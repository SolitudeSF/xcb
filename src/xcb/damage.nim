import ./xcb, ./xfixes

const
  xcbDamageMajorVersion* = 1
  xcbDamageMinorVersion* = 1
  xcbDamageBadDamage* = 0
  xcbDamageQueryVersion* = 0
  xcbDamageCreate* = 1
  xcbDamageDestroy* = 2
  xcbDamageSubtract* = 3
  xcbDamageAdd* = 4
  xcbDamageNotify* = 0

{.passl: "-lxcb-damage".}
{.push header: "xcb/damage.h".}

var xcbDamageId* {.extern: "xcb_damage_id".}: XcbExtension

type
  XcbDamageDamage* {.importc: "xcb_damage_damage_t".} = distinct uint32

  XcbDamageDamageIterator* {.importc: "xcb_damage_damage_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbDamageDamage]
    rem*: cint
    index*: cint

  XcbDamageReportLevel* {.importc: "xcb_damage_report_level_t".} = enum
    xcbDamageReportLevelRawRectangles = 0,
    xcbDamageReportLevelDeltaRectangles = 1,
    xcbDamageReportLevelBoundingBox = 2, xcbDamageReportLevelNonEmpty = 3

  XcbDamageBadDamageError* {.importc: "xcb_damage_bad_damage_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbDamageQueryVersionCookie* {.importc: "xcb_damage_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDamageQueryVersionRequest* {.importc: "xcb_damage_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint32
    clientMinorVersion* {.importc: "client_minor_version".}: uint32

  XcbDamageQueryVersionReply* {.importc: "xcb_damage_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbDamageCreateRequest* {.importc: "xcb_damage_create_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    damage*: XcbDamageDamage
    drawable*: XcbDrawable
    level*: uint8
    pad0: array[3, uint8]

  XcbDamageDestroyRequest* {.importc: "xcb_damage_destroy_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    damage*: XcbDamageDamage

  XcbDamageSubtractRequest* {.importc: "xcb_damage_subtract_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    damage*: XcbDamageDamage
    repair*: XcbXfixesRegion
    parts*: XcbXfixesRegion

  XcbDamageAddRequest* {.importc: "xcb_damage_add_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    region*: XcbXfixesRegion

  XcbDamageNotifyEvent* {.importc: "xcb_damage_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    level*: uint8
    sequence*: uint16
    drawable*: XcbDrawable
    damage*: XcbDamageDamage
    timestamp*: XcbTimestamp
    area*: XcbRectangle
    geometry*: XcbRectangle

{.push cdecl.}

proc next*(i: ptr XcbDamageDamageIterator) {.importc: "xcb_damage_damage_next".}
proc iterEnd*(i: XcbDamageDamageIterator): XcbGenericIterator {.importc: "xcb_damage_damage_end".}
proc damageQueryVersion*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbDamageQueryVersionCookie {.importc: "xcb_damage_query_version".}
proc damageQueryVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbDamageQueryVersionCookie {.importc: "xcb_damage_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDamageQueryVersionCookie;  e: ptr ptr XcbGenericError): ptr XcbDamageQueryVersionReply {.importc: "xcb_damage_query_version_reply".}
proc createDamageChecked*(c: ptr XcbConnection; damage: XcbDamageDamage; drawable: XcbDrawable; level: uint8): XcbVoidCookie {.discardable, importc: "xcb_damage_create_checked".}
proc createDamage*(c: ptr XcbConnection; damage: XcbDamageDamage; drawable: XcbDrawable; level: uint8): XcbVoidCookie {.discardable, importc: "xcb_damage_create".}
proc destroyChecked*(c: ptr XcbConnection; damage: XcbDamageDamage): XcbVoidCookie {.discardable, importc: "xcb_damage_destroy_checked".}
proc destroy*(c: ptr XcbConnection; damage: XcbDamageDamage): XcbVoidCookie {.discardable, importc: "xcb_damage_destroy".}
proc subtractDamageChecked*(c: ptr XcbConnection; damage: XcbDamageDamage; repair: XcbXfixesRegion; parts: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_damage_subtract_checked".}
proc subtractDamage*(c: ptr XcbConnection; damage: XcbDamageDamage; repair: XcbXfixesRegion; parts: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_damage_subtract".}
proc addDamageChecked*(c: ptr XcbConnection; drawable: XcbDrawable; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_damage_add_checked".}
proc addDamage*(c: ptr XcbConnection; drawable: XcbDrawable; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_damage_add".}

{.pop.}
{.pop.}
