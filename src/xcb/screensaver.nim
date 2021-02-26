import ./xcb

const
  xcbScreensaverMajorVersion* = 1
  xcbScreensaverMinorVersion* = 1
  xcbScreensaverQueryVersion* = 0
  xcbScreensaverQueryInfo* = 1
  xcbScreensaverSelectInput* = 2
  xcbScreensaverSetAttributes* = 3
  xcbScreensaverUnsetAttributes* = 4
  xcbScreensaverSuspend* = 5
  xcbScreensaverNotify* = 0

{.passl: "-lxcb-screensaver".}
{.push header: "xcb/screensaver.h".}

var xcbScreensaverId* {.extern: "xcb_screensaver_id".}: XcbExtension

type
  XcbScreensaverKind* {.importc: "xcb_screensaver_kind_t".} = enum
    xcbScreensaverKindBlanked = 0, xcbScreensaverKindInternal = 1,
    xcbScreensaverKindExternal = 2

  XcbScreensaverEvent* {.importc: "xcb_screensaver_event_t".} = enum
    xcbScreensaverEventNotifyMask = 1, xcbScreensaverEventCycleMask = 2

  XcbScreensaverState* {.importc: "xcb_screensaver_state_t".} = enum
    xcbScreensaverStateOff = 0, xcbScreensaverStateOn = 1,
    xcbScreensaverStateCycle = 2, xcbScreensaverStateDisabled = 3

  XcbScreensaverQueryVersionCookie* {.importc: "xcb_screensaver_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbScreensaverQueryVersionRequest* {.importc: "xcb_screensaver_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint8
    clientMinorVersion* {.importc: "client_minor_version".}: uint8
    pad0: array[2, uint8]

  XcbScreensaverQueryVersionReply* {.importc: "xcb_screensaver_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajorVersion* {.importc: "server_major_version".}: uint16
    serverMinorVersion* {.importc: "server_minor_version".}: uint16
    pad1: array[20, uint8]

  XcbScreensaverQueryInfoCookie* {.importc: "xcb_screensaver_query_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbScreensaverQueryInfoRequest* {.importc: "xcb_screensaver_query_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbScreensaverQueryInfoReply* {.importc: "xcb_screensaver_query_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    state*: uint8
    sequence*: uint16
    length*: uint32
    saverWindow* {.importc: "saver_window".}: XcbWindow
    msUntilServer* {.importc: "ms_until_server".}: uint32
    msSinceUserInput* {.importc: "ms_since_user_input".}: uint32
    eventMask* {.importc: "event_mask".}: uint32
    kind*: uint8
    pad0: array[7, uint8]

  XcbScreensaverSelectInputRequest* {.importc: "xcb_screensaver_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    eventMask* {.importc: "event_mask".}: uint32

  XcbScreensaverSetAttributesValueList* {.importc: "xcb_screensaver_set_attributes_value_list_t", bycopy.} = object
    backgroundPixmap* {.importc: "background_pixmap".}: XcbPixmap
    backgroundPixel* {.importc: "background_pixel".}: uint32
    borderPixmap* {.importc: "border_pixmap".}: XcbPixmap
    borderPixel* {.importc: "border_pixel".}: uint32
    bitGravity* {.importc: "bit_gravity".}: uint32
    winGravity* {.importc: "win_gravity".}: uint32
    backingStore* {.importc: "backing_store".}: uint32
    backingPlanes* {.importc: "backing_planes".}: uint32
    backingPixel* {.importc: "backing_pixel".}: uint32
    overrideRedirect* {.importc: "override_redirect".}: XcbBool32
    saveUnder* {.importc: "save_under".}: XcbBool32
    eventMask* {.importc: "event_mask".}: uint32
    doNotPropogateMask* {.importc: "do_not_propogate_mask".}: uint32
    colormap*: XcbColormap
    cursor*: XcbCursor

  XcbScreensaverSetAttributesRequest* {.importc: "xcb_screensaver_set_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    class*: uint8
    depth*: uint8
    visual*: XcbVisualid
    valueMask* {.importc: "value_mask".}: uint32

  XcbScreensaverUnsetAttributesRequest* {.importc: "xcb_screensaver_unset_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbScreensaverSuspendRequest* {.importc: "xcb_screensaver_suspend_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    suspend*: uint32

  XcbScreensaverNotifyEvent* {.importc: "xcb_screensaver_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    state*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    root*: XcbWindow
    window*: XcbWindow
    kind*: uint8
    forced*: uint8
    pad0: array[14, uint8]

{.push cdecl.}

proc screensaverQueryVersion*(c: ptr XcbConnection; client_major_version: uint8; client_minor_version: uint8): XcbScreensaverQueryVersionCookie {.importc: "xcb_screensaver_query_version".}
proc screensaverQueryVersionUnchecked*(c: ptr XcbConnection; client_major_version: uint8; client_minor_version: uint8): XcbScreensaverQueryVersionCookie {.importc: "xcb_screensaver_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbScreensaverQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbScreensaverQueryVersionReply {.importc: "xcb_screensaver_query_version_reply".}
proc screensaverQueryInfo*(c: ptr XcbConnection; drawable: XcbDrawable): XcbScreensaverQueryInfoCookie {.importc: "xcb_screensaver_query_info".}
proc screensaverQueryInfoUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbScreensaverQueryInfoCookie {.importc: "xcb_screensaver_query_info_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbScreensaverQueryInfoCookie; e: ptr ptr XcbGenericError): ptr XcbScreensaverQueryInfoReply {.importc: "xcb_screensaver_query_info_reply".}
proc screensaverSelectInputChecked*(c: ptr XcbConnection; drawable: XcbDrawable; event_mask: uint32): XcbVoidCookie {.discardable, importc: "xcb_screensaver_select_input_checked".}
proc screensaverSelectInput*(c: ptr XcbConnection; drawable: XcbDrawable; event_mask: uint32): XcbVoidCookie {.discardable, importc: "xcb_screensaver_select_input".}
proc serialize*(buffer: ptr pointer; value_mask: uint32; aux: ptr XcbScreensaverSetAttributesValueList): cint {.importc: "xcb_screensaver_set_attributes_value_list_serialize".}
proc unpack*(buffer: pointer; value_mask: uint32; aux: ptr XcbScreensaverSetAttributesValueList): cint {.importc: "xcb_screensaver_set_attributes_value_list_unpack".}
proc setAttributesValueListSizeof*(buffer: pointer; value_mask: uint32): cint {.importc: "xcb_screensaver_set_attributes_value_list_sizeof".}
proc setAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_screensaver_set_attributes_sizeof".}
proc setAttributesChecked*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; border_width: uint16; class: uint8; depth: uint8; visual: XcbVisualid; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_screensaver_set_attributes_checked".}
proc setAttributes*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; border_width: uint16; class: uint8; depth: uint8; visual: XcbVisualid; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_screensaver_set_attributes".}
proc setAttributesAuxChecked*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; border_width: uint16; class: uint8; depth: uint8; visual: XcbVisualid; value_mask: uint32; value_list: ptr XcbScreensaverSetAttributesValueList): XcbVoidCookie {.discardable, importc: "xcb_screensaver_set_attributes_aux_checked".}
proc setAttributesAux*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; border_width: uint16; class: uint8; depth: uint8; visual: XcbVisualid; value_mask: uint32; value_list: ptr XcbScreensaverSetAttributesValueList): XcbVoidCookie {.discardable, importc: "xcb_screensaver_set_attributes_aux".}
proc valueList*(R: ptr XcbScreensaverSetAttributesRequest): pointer {.importc: "xcb_screensaver_set_attributes_value_list".}
proc unsetAttributesChecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_screensaver_unset_attributes_checked".}
proc unsetAttributes*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_screensaver_unset_attributes".}
proc screensaverSuspendChecked*(c: ptr XcbConnection; suspend: uint32): XcbVoidCookie {.discardable, importc: "xcb_screensaver_suspend_checked".}
proc screensaverSuspend*(c: ptr XcbConnection; suspend: uint32): XcbVoidCookie {.discardable, importc: "xcb_screensaver_suspend".}

{.pop.}
{.pop.}
