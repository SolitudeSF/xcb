import ./xcb, ./randr, ./xfixes, ./sync

const
  xcbPresentMajorVersion* = 1
  xcbPresentMinorVersion* = 2
  xcbPresentQueryVersion* = 0
  xcbPresentPixmap* = 1
  xcbPresentNotifyMsc* = 2
  xcbPresentSelectInput* = 3
  xcbPresentQueryCapabilities* = 4
  xcbPresentGeneric* = 0
  xcbPresentConfigureNotify* = 0
  xcbPresentCompleteNotify* = 1
  xcbPresentIdleNotify* = 2
  xcbPresentRedirectNotify* = 3

{.passl: "-lxcb-present".}
{.push header: "xcb/present.h".}

var xcbPresentId* {.extern: "xcb_present_id".}: XcbExtension

type
  XcbPresentEvent* {.importc: "xcb_present_event_t".} = distinct uint32

  XcbPresentEventEnum* {.importc: "xcb_present_event_enum_t".} = enum
    xcbPresentEventConfigureNotify = 0, xcbPresentEventCompleteNotify = 1,
    xcbPresentEventIdleNotify = 2, xcbPresentEventRedirectNotify = 3

  XcbPresentEventMask* {.importc: "xcb_present_event_mask_t".} = enum
    xcbPresentEventMaskNoEvent = 0,
    xcbPresentEventMaskConfigureNotify = 1,
    xcbPresentEventMaskCompleteNotify = 2,
    xcbPresentEventMaskIdleNotify = 4,
    xcbPresentEventMaskRedirectNotify = 8

  XcbPresentOption* {.importc: "xcb_present_option_t".} = enum
    xcbPresentOptionNone = 0, xcbPresentOptionAsync = 1,
    xcbPresentOptionCopy = 2, xcbPresentOptionUst = 4,
    xcbPresentOptionSuboptimal = 8

  XcbPresentCapability* {.importc: "xcb_present_capability_t".} = enum
    xcbPresentCapabilityNone = 0, xcbPresentCapabilityAsync = 1,
    xcbPresentCapabilityFence = 2, xcbPresentCapabilityUst = 4

  XcbPresentCompleteKind* {.importc: "xcb_present_complete_kind_t".} = enum
    xcbPresentCompleteKindPixmap = 0, xcbPresentCompleteKindNotifyMsc = 1

  XcbPresentCompleteMode* {.importc: "xcb_present_complete_mode_t".} = enum
    xcbPresentCompleteModeCopy = 0, xcbPresentCompleteModeFlip = 1,
    xcbPresentCompleteModeSkip = 2,
    xcbPresentCompleteModeSuboptimalCopy = 3

  XcbPresentNotify* {.importc: "xcb_present_notify_t", bycopy.} = object
    window*: XcbWindow
    serial*: uint32

  XcbPresentNotifyIterator* {.importc: "xcb_present_notify_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbPresentNotify]
    rem*: cint
    index*: cint

  XcbPresentQueryVersionCookie* {.importc: "xcb_present_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbPresentQueryVersionRequest* {.importc: "xcb_present_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbPresentQueryVersionReply* {.importc: "xcb_present_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbPresentPixmapRequest* {.importc: "xcb_present_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    pixmap*: XcbPixmap
    serial*: uint32
    valid*: XcbXfixesRegion
    update*: XcbXfixesRegion
    xOff* {.importc: "x_off".}: int16
    yOff* {.importc: "y_off".}: int16
    targetCrtc* {.importc: "target_crtc".}: XcbRandrCrtc
    waitFence* {.importc: "wait_fence".}: XcbSyncFence
    idleFence* {.importc: "idle_fence".}: XcbSyncFence
    options*: uint32
    pad0: array[4, uint8]
    targetMsc* {.importc: "target_msc".}: uint64
    divisor*: uint64
    remainder*: uint64

  XcbPresentNotifyMscRequest* {.importc: "xcb_present_notify_msc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    serial*: uint32
    pad0: array[4, uint8]
    targetMsc* {.importc: "target_msc".}: uint64
    divisor*: uint64
    remainder*: uint64

  XcbPresentEventIterator* {.importc: "xcb_present_event_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbPresentEvent]
    rem*: cint
    index*: cint

  XcbPresentSelectInputRequest* {.importc: "xcb_present_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    eid*: XcbPresentEvent
    window*: XcbWindow
    eventMask* {.importc: "event_mask".}: uint32

  XcbPresentQueryCapabilitiesCookie* {.importc: "xcb_present_query_capabilities_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbPresentQueryCapabilitiesRequest* {.importc: "xcb_present_query_capabilities_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    target*: uint32

  XcbPresentQueryCapabilitiesReply* {.importc: "xcb_present_query_capabilities_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    capabilities*: uint32

  XcbPresentGenericEvent* {.importc: "xcb_present_generic_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    evtype*: uint16
    pad0: array[2, uint8]
    event*: XcbPresentEvent

  XcbPresentConfigureNotifyEvent* {.importc: "xcb_present_configure_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    pad0: array[2, uint8]
    event*: XcbPresentEvent
    window*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    offX* {.importc: "off_x".}: int16
    offY* {.importc: "off_y".}: int16
    fullSequence* {.importc: "full_sequence".}: uint32
    pixmapWidth* {.importc: "pixmap_width".}: uint16
    pixmapHeight* {.importc: "pixmap_height".}: uint16
    pixmapFlags* {.importc: "pixmap_flags".}: uint32

  XcbPresentCompleteNotifyEvent* {.importc: "xcb_present_complete_notify_event_t", bycopy, packed.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    kind*: uint8
    mode*: uint8
    event*: XcbPresentEvent
    window*: XcbWindow
    serial*: uint32
    ust*: uint64
    fullSequence* {.importc: "full_sequence".}: uint32
    msc*: uint64

  XcbPresentIdleNotifyEvent* {.importc: "xcb_present_idle_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    pad0: array[2, uint8]
    event*: XcbPresentEvent
    window*: XcbWindow
    serial*: uint32
    pixmap*: XcbPixmap
    idleFence* {.importc: "idle_fence".}: XcbSyncFence
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbPresentRedirectNotifyEvent* {.importc: "xcb_present_redirect_notify_event_t", bycopy, packed.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    updateWindow* {.importc: "update_window".}: uint8
    pad0: uint8
    event*: XcbPresentEvent
    eventWindow* {.importc: "event_window".}: XcbWindow
    window*: XcbWindow
    pixmap*: XcbPixmap
    serial*: uint32
    fullSequence* {.importc: "full_sequence".}: uint32
    validRegion* {.importc: "valid_region".}: XcbXfixesRegion
    updateRegion* {.importc: "update_region".}: XcbXfixesRegion
    validRect* {.importc: "valid_rect".}: XcbRectangle
    updateRect* {.importc: "update_rect".}: XcbRectangle
    xOff* {.importc: "x_off".}: int16
    yOff* {.importc: "y_off".}: int16
    targetCrtc* {.importc: "target_crtc".}: XcbRandrCrtc
    waitFence* {.importc: "wait_fence".}: XcbSyncFence
    idleFence* {.importc: "idle_fence".}: XcbSyncFence
    options*: uint32
    pad1: array[4, uint8]
    targetMsc* {.importc: "target_msc".}: uint64
    divisor*: uint64
    remainder*: uint64

{.push cdecl.}

proc next*(i: ptr XcbPresentNotifyIterator) {.importc: "xcb_present_notify_next".}
proc iterEnd*(i: XcbPresentNotifyIterator): XcbGenericIterator {.importc: "xcb_present_notify_end".}
proc presentQueryVersion*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbPresentQueryVersionCookie {.importc: "xcb_present_query_version".}
proc presentQueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbPresentQueryVersionCookie {.importc: "xcb_present_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbPresentQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbPresentQueryVersionReply {.importc: "xcb_present_query_version_reply".}
proc presentPixmapSizeof*(buffer: pointer; notifiesLen: uint32): cint {.importc: "xcb_present_pixmap_sizeof".}
proc presentPixmapChecked*(c: ptr XcbConnection; window: XcbWindow; pixmap: XcbPixmap; serial: uint32; valid: XcbXfixesRegion; update: XcbXfixesRegion; xOff: int16; yOff: int16; targetCrtc: XcbRandrCrtc; waitFence: XcbSyncFence; idleFence: XcbSyncFence; options: uint32; targetMsc: uint64; divisor: uint64; remainder: uint64; notifiesLen: uint32; notifies: ptr XcbPresentNotify): XcbVoidCookie {.discardable, importc: "xcb_present_pixmap_checked".}
proc presentPixmap*(c: ptr XcbConnection; window: XcbWindow; pixmap: XcbPixmap; serial: uint32; valid: XcbXfixesRegion; update: XcbXfixesRegion; xOff: int16; yOff: int16; targetCrtc: XcbRandrCrtc; waitFence: XcbSyncFence; idleFence: XcbSyncFence; options: uint32; targetMsc: uint64; divisor: uint64; remainder: uint64; notifiesLen: uint32; notifies: ptr XcbPresentNotify): XcbVoidCookie {.discardable, importc: "xcb_present_pixmap".}
proc notifies*(R: ptr XcbPresentPixmapRequest): ptr UncheckedArray[XcbPresentNotify] {.importc: "xcb_present_pixmap_notifies".}
proc notifiesLength*(R: ptr XcbPresentPixmapRequest): cint {.importc: "xcb_present_pixmap_notifies_length".}
proc notifiesIterator*(R: ptr XcbPresentPixmapRequest): XcbPresentNotifyIterator {.importc: "xcb_present_pixmap_notifies_iterator".}
proc notifyMscChecked*(c: ptr XcbConnection; window: XcbWindow; serial: uint32; targetMsc: uint64; divisor: uint64; remainder: uint64): XcbVoidCookie {.discardable, importc: "xcb_present_notify_msc_checked".}
proc notifyMsc*(c: ptr XcbConnection; window: XcbWindow; serial: uint32; targetMsc: uint64; divisor: uint64; remainder: uint64): XcbVoidCookie {.discardable, importc: "xcb_present_notify_msc".}
proc next*(i: ptr XcbPresentEventIterator) {.importc: "xcb_present_event_next".}
proc iterEnd*(i: XcbPresentEventIterator): XcbGenericIterator {.importc: "xcb_present_event_end".}
proc selectInputChecked*(c: ptr XcbConnection; eid: XcbPresentEvent; window: XcbWindow; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_present_select_input_checked".}
proc selectInput*(c: ptr XcbConnection; eid: XcbPresentEvent; window: XcbWindow; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_present_select_input".}
proc presentQueryCapabilities*(c: ptr XcbConnection; target: uint32): XcbPresentQueryCapabilitiesCookie {.importc: "xcb_present_query_capabilities".}
proc presentQueryCapabilitiesUnchecked*(c: ptr XcbConnection; target: uint32): XcbPresentQueryCapabilitiesCookie {.importc: "xcb_present_query_capabilities_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbPresentQueryCapabilitiesCookie; e: ptr ptr XcbGenericError): ptr XcbPresentQueryCapabilitiesReply {.importc: "xcb_present_query_capabilities_reply".}
proc redirectNotifySizeof*(buffer: pointer; notifiesLen: uint32): cint {.importc: "xcb_present_redirect_notify_sizeof".}
proc notifies*(R: ptr XcbPresentRedirectNotifyEvent): ptr UncheckedArray[XcbPresentNotify] {.importc: "xcb_present_redirect_notify_notifies".}
proc notifiesLength*(R: ptr XcbPresentRedirectNotifyEvent): cint {.importc: "xcb_present_redirect_notify_notifies_length".}
proc notifiesIterator*(R: ptr XcbPresentRedirectNotifyEvent): XcbPresentNotifyIterator {.importc: "xcb_present_redirect_notify_notifies_iterator".}

{.pop.}
{.pop.}
