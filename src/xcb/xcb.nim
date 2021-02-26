const
  xProtocol* = 11
  xProtocolRevision* = 0
  xTcpPort* = 6000
  xcbConnError* = 1
  xcbConnClosedExtNotSupported* = 2
  xcbConnClosedMemInsufficient* = 3
  xcbConnClosedReqLenExceed* = 4
  xcbConnClosedParseErr* = 5
  xcbConnClosedInvalidScreen* = 6
  xcbConnClosedFdPassingFailed* = 7
  xcbNone* = 0
  xcbCopyFromParent* = 0
  xcbCurrentTime* = 0
  xcbNoSymbol* = 0

{.passl: "-lxcb".}
{.push header: "xcb/xcb.h".}

type
  XcbConnection* {.importc: "xcb_connection_t", incompleteStruct.} = object
  XcbSpecialEvent* {.importc: "xcb_special_event_t", incompleteStruct.} = object
  XcbExtension* {.importc: "xcb_extension_t", incompleteStruct.} = object

  XcbGenericIterator* {.importc: "xcb_generic_iterator_t", bycopy.} = object
    data*: pointer
    rem*: cint
    index*: cint

  XcbGenericReply* {.importc: "xcb_generic_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32

  XcbGenericEvent* {.importc: "xcb_generic_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    pad: array[7, uint32]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbRawGenericEvent* {.importc: "xcb_raw_generic_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    pad: array[7, uint32]

  XcbGEEvent* {.importc: "xcb_ge_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    pad1: uint16
    pad: array[5, uint32]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbGenericError* {.importc: "xcb_generic_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    resourceId* {.importc: "resource_id".}: uint32
    minorCode* {.importc: "minor_code".}: uint16
    majorCode* {.importc: "major_code".}: uint8
    pad0: uint8
    pad: array[5, uint32]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbVoidCookie* {.importc: "xcb_void_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbAuthInfo* {.importc: "xcb_auth_info_t", bycopy.} = object
    namelen*: cint
    name*: ptr UncheckedArray[char]
    datalen*: cint
    data*: ptr UncheckedArray[char]

{.pop.}

include ./xproto

{.push cdecl, header: "xcb/xcb.h".}

proc flush*(c: ptr XcbConnection): cint {.importc: "xcb_flush".}
proc getMaximumRequestLength*(c: ptr XcbConnection): uint32 {.importc: "xcb_get_maximum_request_length".}
proc prefetchMaximumRequestLength*(c: ptr XcbConnection) {.importc: "xcb_prefetch_maximum_request_length".}
proc waitForEvent*(c: ptr XcbConnection): ptr XcbGenericEvent {.importc: "xcb_wait_for_event".}
proc pollForEvent*(c: ptr XcbConnection): ptr XcbGenericEvent {.importc: "xcb_poll_for_event".}
proc pollForQueuedEvent*(c: ptr XcbConnection): ptr XcbGenericEvent {.importc: "xcb_poll_for_queued_event".}
proc pollForSpecialEvent*(c: ptr XcbConnection; se: ptr XcbSpecialEvent): ptr XcbGenericEvent {.importc: "xcb_poll_for_special_event".}
proc waitForSpecialEvent*(c: ptr XcbConnection; se: ptr XcbSpecialEvent): ptr XcbGenericEvent {.importc: "xcb_wait_for_special_event".}
proc registerForSpecialXge*(c: ptr XcbConnection; ext: ptr XcbExtension; eid: uint32; stamp: ptr uint32): ptr XcbSpecialEvent {.importc: "xcb_register_for_special_xge".}
proc unregisterForSpecialEvent*(c: ptr XcbConnection; se: ptr XcbSpecialEvent) {.importc: "xcb_unregister_for_special_event".}
proc requestCheck*(c: ptr XcbConnection; cookie: XcbVoidCookie): ptr XcbGenericError {.importc: "xcb_request_check".}
proc discardReply*(c: ptr XcbConnection; sequence: cuint) {.importc: "xcb_discard_reply".}
proc discardReply64*(c: ptr XcbConnection; sequence: uint64) {.importc: "xcb_discard_reply64".}
proc getExtensionData*(c: ptr XcbConnection; ext: ptr XcbExtension): ptr XcbQueryExtensionReply {.importc: "xcb_get_extension_data".}
proc prefetchExtensionData*(c: ptr XcbConnection; ext: ptr XcbExtension) {.importc: "xcb_prefetch_extension_data".}
proc getSetup*(c: ptr XcbConnection): ptr XcbSetup {.importc: "xcb_get_setup".}
proc getFileDescriptor*(c: ptr XcbConnection): cint {.importc: "xcb_get_file_descriptor".}
proc connectionHasError*(c: ptr XcbConnection): cint {.importc: "xcb_connection_has_error".}
proc connectToFd*(fd: cint; authInfo: ptr XcbAuthInfo): ptr XcbConnection {.importc: "xcb_connect_to_fd".}
proc disconnect*(c: ptr XcbConnection) {.importc: "xcb_disconnect".}
proc xcbParseDisplay*(name: cstring; host: ptr cstring; display: ptr cint; screen: ptr cint): cint {.importc: "xcb_parse_display".}
proc xcbConnect*(displayname: cstring; screenp: ptr cint): ptr XcbConnection {.importc: "xcb_connect".}
proc connectToDisplayWithAuthInfo*(display: cstring; auth: ptr XcbAuthInfo; screen: ptr cint): ptr XcbConnection {.importc: "xcb_connect_to_display_with_auth_info".}
proc generateId*(c: ptr XcbConnection): uint32 {.importc: "xcb_generate_id".}
proc totalRead*(c: ptr XcbConnection): uint64 {.importc: "xcb_total_read".}
proc totalWritten*(c: ptr XcbConnection): uint64 {.importc: "xcb_total_written".}

{.pop.}
