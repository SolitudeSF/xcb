import ./xcb

const
  xcbDri2MajorVersion* = 1
  xcbDri2MinorVersion* = 4
  xcbDri2QueryVersion* = 0
  xcbDri2Connect* = 1
  xcbDri2Authenticate* = 2
  xcbDri2CreateDrawable* = 3
  xcbDri2DestroyDrawable* = 4
  xcbDri2GetBuffers* = 5
  xcbDri2CopyRegion* = 6
  xcbDri2GetBuffersWithFormat* = 7
  xcbDri2SwapBuffers* = 8
  xcbDri2GetMsc* = 9
  xcbDri2WaitMsc* = 10
  xcbDri2WaitSbc* = 11
  xcbDri2SwapInterval* = 12
  xcbDri2GetParam* = 13
  xcbDri2BufferSwapComplete* = 0
  xcbDri2InvalidateBuffers* = 1

{.passl: "-lxcb-dri2".}
{.push header: "xcb/dri2.h".}

var xcbDri2Id* {.extern: "xcb_dri2_id".}: XcbExtension

type
  XcbDri2Attachment* {.importc: "xcb_dri2_attachment_t".} = enum
    xcbDri2AttachmentBufferFrontLeft = 0,
    xcbDri2AttachmentBufferBackLeft = 1,
    xcbDri2AttachmentBufferFrontRight = 2,
    xcbDri2AttachmentBufferBackRight = 3,
    xcbDri2AttachmentBufferDepth = 4, xcbDri2AttachmentBufferStencil = 5,
    xcbDri2AttachmentBufferAccum = 6,
    xcbDri2AttachmentBufferFakeFrontLeft = 7,
    xcbDri2AttachmentBufferFakeFrontRight = 8,
    xcbDri2AttachmentBufferDepthStencil = 9,
    xcbDri2AttachmentBufferHiz = 10

  XcbDri2DriverType* {.importc: "xcb_dri2_driver_type_t".} = enum
    xcbDri2DriverTypeDri = 0, xcbDri2DriverTypeVdpau = 1

  XcbDri2EventType* {.importc: "xcb_dri2_event_type_t".} = enum
    xcbDri2EventTypeExchangeComplete = 1,
    xcbDri2EventTypeBlitComplete = 2, xcbDri2EventTypeFlipComplete = 3

  XcbDri2Dri2Buffer* {.importc: "xcb_dri2_dri2_buffer_t", bycopy.} = object
    attachment*: uint32
    name*: uint32
    pitch*: uint32
    cpp*: uint32
    flags*: uint32

  XcbDri2Dri2BufferIterator* {.importc: "xcb_dri2_dri2_buffer_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbDri2Dri2Buffer]
    rem*: cint
    index*: cint

  XcbDri2AttachFormat* {.importc: "xcb_dri2_attach_format_t", bycopy.} = object
    attachment*: uint32
    format*: uint32

  XcbDri2AttachFormatIterator* {.importc: "xcb_dri2_attach_format_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbDri2AttachFormat]
    rem*: cint
    index*: cint

  XcbDri2QueryVersionCookie* {.importc: "xcb_dri2_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2QueryVersionRequest* {.importc: "xcb_dri2_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbDri2QueryVersionReply* {.importc: "xcb_dri2_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbDri2ConnectCookie* {.importc: "xcb_dri2_connect_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2ConnectRequest* {.importc: "xcb_dri2_connect_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    driverType* {.importc: "driver_type".}: uint32

  XcbDri2ConnectReply* {.importc: "xcb_dri2_connect_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    driverNameLength* {.importc: "driver_name_length".}: uint32
    deviceNameLength* {.importc: "device_name_length".}: uint32
    pad1: array[16, uint8]

  XcbDri2AuthenticateCookie* {.importc: "xcb_dri2_authenticate_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2AuthenticateRequest* {.importc: "xcb_dri2_authenticate_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    magic*: uint32

  XcbDri2AuthenticateReply* {.importc: "xcb_dri2_authenticate_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    authenticated*: uint32

  XcbDri2CreateDrawableRequest* {.importc: "xcb_dri2_create_drawable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbDri2DestroyDrawableRequest* {.importc: "xcb_dri2_destroy_drawable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbDri2GetBuffersCookie* {.importc: "xcb_dri2_get_buffers_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2GetBuffersRequest* {.importc: "xcb_dri2_get_buffers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    count*: uint32

  XcbDri2GetBuffersReply* {.importc: "xcb_dri2_get_buffers_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    width*: uint32
    height*: uint32
    count*: uint32
    pad1: array[12, uint8]

  XcbDri2CopyRegionCookie* {.importc: "xcb_dri2_copy_region_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2CopyRegionRequest* {.importc: "xcb_dri2_copy_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    region*: uint32
    dest*: uint32
    src*: uint32

  XcbDri2CopyRegionReply* {.importc: "xcb_dri2_copy_region_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32

  XcbDri2GetBuffersWithFormatCookie* {.importc: "xcb_dri2_get_buffers_with_format_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2GetBuffersWithFormatRequest* {.importc: "xcb_dri2_get_buffers_with_format_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    count*: uint32

  XcbDri2GetBuffersWithFormatReply* {.importc: "xcb_dri2_get_buffers_with_format_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    width*: uint32
    height*: uint32
    count*: uint32
    pad1: array[12, uint8]

  XcbDri2SwapBuffersCookie* {.importc: "xcb_dri2_swap_buffers_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2SwapBuffersRequest* {.importc: "xcb_dri2_swap_buffers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    targetMscHi* {.importc: "target_msc_hi".}: uint32
    targetMscLo* {.importc: "target_msc_lo".}: uint32
    divisorHi* {.importc: "divisor_hi".}: uint32
    divisorLo* {.importc: "divisor_lo".}: uint32
    remainderHi* {.importc: "remainder_hi".}: uint32
    remainderLo* {.importc: "remainder_lo".}: uint32

  XcbDri2SwapBuffersReply* {.importc: "xcb_dri2_swap_buffers_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    swapHi* {.importc: "swap_hi".}: uint32
    swapLo* {.importc: "swap_lo".}: uint32

  XcbDri2GetMscCookie* {.importc: "xcb_dri2_get_msc_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2GetMscRequest* {.importc: "xcb_dri2_get_msc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbDri2GetMscReply* {.importc: "xcb_dri2_get_msc_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    ustHi* {.importc: "ust_hi".}: uint32
    ustLo* {.importc: "ust_lo".}: uint32
    mscHi* {.importc: "msc_hi".}: uint32
    mscLo* {.importc: "msc_lo".}: uint32
    sbcHi* {.importc: "sbc_hi".}: uint32
    sbcLo* {.importc: "sbc_lo".}: uint32

  XcbDri2WaitMscCookie* {.importc: "xcb_dri2_wait_msc_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2WaitMscRequest* {.importc: "xcb_dri2_wait_msc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    targetMscHi* {.importc: "target_msc_hi".}: uint32
    targetMscLo* {.importc: "target_msc_lo".}: uint32
    divisorHi* {.importc: "divisor_hi".}: uint32
    divisorLo* {.importc: "divisor_lo".}: uint32
    remainderHi* {.importc: "remainder_hi".}: uint32
    remainderLo* {.importc: "remainder_lo".}: uint32

  XcbDri2WaitMscReply* {.importc: "xcb_dri2_wait_msc_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    ustHi* {.importc: "ust_hi".}: uint32
    ustLo* {.importc: "ust_lo".}: uint32
    mscHi* {.importc: "msc_hi".}: uint32
    mscLo* {.importc: "msc_lo".}: uint32
    sbcHi* {.importc: "sbc_hi".}: uint32
    sbcLo* {.importc: "sbc_lo".}: uint32

  XcbDri2WaitSbcCookie* {.importc: "xcb_dri2_wait_sbc_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2WaitSbcRequest* {.importc: "xcb_dri2_wait_sbc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    targetSbcHi* {.importc: "target_sbc_hi".}: uint32
    targetSbcLo* {.importc: "target_sbc_lo".}: uint32

  XcbDri2WaitSbcReply* {.importc: "xcb_dri2_wait_sbc_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    ustHi* {.importc: "ust_hi".}: uint32
    ustLo* {.importc: "ust_lo".}: uint32
    mscHi* {.importc: "msc_hi".}: uint32
    mscLo* {.importc: "msc_lo".}: uint32
    sbcHi* {.importc: "sbc_hi".}: uint32
    sbcLo* {.importc: "sbc_lo".}: uint32

  XcbDri2SwapIntervalRequest* {.importc: "xcb_dri2_swap_interval_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    interval*: uint32

  XcbDri2GetParamCookie* {.importc: "xcb_dri2_get_param_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri2GetParamRequest* {.importc: "xcb_dri2_get_param_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    param*: uint32

  XcbDri2GetParamReply* {.importc: "xcb_dri2_get_param_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    isParamRecognized* {.importc: "is_param_recognized".}: uint8
    sequence*: uint16
    length*: uint32
    valueHi* {.importc: "value_hi".}: uint32
    valueLo* {.importc: "value_lo".}: uint32

  XcbDri2BufferSwapCompleteEvent* {.importc: "xcb_dri2_buffer_swap_complete_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    eventType* {.importc: "event_type".}: uint16
    pad1: array[2, uint8]
    drawable*: XcbDrawable
    ustHi* {.importc: "ust_hi".}: uint32
    ustLo* {.importc: "ust_lo".}: uint32
    mscHi* {.importc: "msc_hi".}: uint32
    mscLo* {.importc: "msc_lo".}: uint32
    sbc*: uint32

  XcbDri2InvalidateBuffersEvent* {.importc: "xcb_dri2_invalidate_buffers_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    drawable*: XcbDrawable

{.push cdecl.}

proc next*(i: ptr XcbDri2Dri2BufferIterator) {.importc: "xcb_dri2_dri2_buffer_next".}
proc iterEnd*(i: XcbDri2Dri2BufferIterator): XcbGenericIterator {.importc: "xcb_dri2_dri2_buffer_end".}
proc next*(i: ptr XcbDri2AttachFormatIterator) {.importc: "xcb_dri2_attach_format_next".}
proc iterEnd*(i: XcbDri2AttachFormatIterator): XcbGenericIterator {.importc: "xcb_dri2_attach_format_end".}
proc dri2QueryVersion*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbDri2QueryVersionCookie {.importc: "xcb_dri2_query_version".}
proc dri2QueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbDri2QueryVersionCookie {.importc: "xcb_dri2_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2QueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbDri2QueryVersionReply {.importc: "xcb_dri2_query_version_reply".}
proc dri2ConnectSizeof*(buffer: pointer): cint {.importc: "xcb_dri2_connect_sizeof".}
proc connect*(c: ptr XcbConnection; window: XcbWindow; driverType: uint32): XcbDri2ConnectCookie {.importc: "xcb_dri2_connect".}
proc connectUnchecked*(c: ptr XcbConnection; window: XcbWindow; driverType: uint32): XcbDri2ConnectCookie {.importc: "xcb_dri2_connect_unchecked".}
proc driverName*(R: ptr XcbDri2ConnectReply): ptr UncheckedArray[char] {.importc: "xcb_dri2_connect_driver_name".}
proc driverNameLength*(R: ptr XcbDri2ConnectReply): cint {.importc: "xcb_dri2_connect_driver_name_length".}
proc driverNameEnd*(R: ptr XcbDri2ConnectReply): XcbGenericIterator {.importc: "xcb_dri2_connect_driver_name_end".}
proc alignmentPad*(R: ptr XcbDri2ConnectReply): pointer {.importc: "xcb_dri2_connect_alignment_pad".}
proc alignmentPadLength*(R: ptr XcbDri2ConnectReply): cint {.importc: "xcb_dri2_connect_alignment_pad_length".}
proc alignmentPadEnd*(R: ptr XcbDri2ConnectReply): XcbGenericIterator {.importc: "xcb_dri2_connect_alignment_pad_end".}
proc deviceName*(R: ptr XcbDri2ConnectReply): ptr UncheckedArray[char] {.importc: "xcb_dri2_connect_device_name".}
proc deviceNameLength*(R: ptr XcbDri2ConnectReply): cint {.importc: "xcb_dri2_connect_device_name_length".}
proc deviceNameEnd*(R: ptr XcbDri2ConnectReply): XcbGenericIterator {.importc: "xcb_dri2_connect_device_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2ConnectCookie; e: ptr ptr XcbGenericError): ptr XcbDri2ConnectReply {.importc: "xcb_dri2_connect_reply".}
proc authenticate*(c: ptr XcbConnection; window: XcbWindow; magic: uint32): XcbDri2AuthenticateCookie {.importc: "xcb_dri2_authenticate".}
proc authenticateUnchecked*(c: ptr XcbConnection; window: XcbWindow; magic: uint32): XcbDri2AuthenticateCookie {.importc: "xcb_dri2_authenticate_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2AuthenticateCookie; e: ptr ptr XcbGenericError): ptr XcbDri2AuthenticateReply {.importc: "xcb_dri2_authenticate_reply".}
proc createDrawableChecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_dri2_create_drawable_checked".}
proc createDrawable*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_dri2_create_drawable".}
proc destroyChecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_dri2_destroy_drawable_checked".}
proc destroy*(c: ptr XcbConnection; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_dri2_destroy_drawable".}
proc getBuffersSizeof*(buffer: pointer; attachmentsLen: uint32): cint {.importc: "xcb_dri2_get_buffers_sizeof".}
proc getBuffers*(c: ptr XcbConnection; drawable: XcbDrawable; count: uint32; attachmentsLen: uint32; attachments: ptr uint32): XcbDri2GetBuffersCookie {.importc: "xcb_dri2_get_buffers".}
proc getBuffersUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; count: uint32; attachmentsLen: uint32; attachments: ptr uint32): XcbDri2GetBuffersCookie {.importc: "xcb_dri2_get_buffers_unchecked".}
proc buffers*(R: ptr XcbDri2GetBuffersReply): ptr XcbDri2Dri2Buffer {.importc: "xcb_dri2_get_buffers_buffers".}
proc buffersLength*(R: ptr XcbDri2GetBuffersReply): cint {.importc: "xcb_dri2_get_buffers_buffers_length".}
proc buffersIterator*(R: ptr XcbDri2GetBuffersReply): XcbDri2Dri2BufferIterator {.importc: "xcb_dri2_get_buffers_buffers_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2GetBuffersCookie; e: ptr ptr XcbGenericError): ptr XcbDri2GetBuffersReply {.importc: "xcb_dri2_get_buffers_reply".}
proc copyRegion*(c: ptr XcbConnection; drawable: XcbDrawable; region: uint32; dest: uint32; src: uint32): XcbDri2CopyRegionCookie {.importc: "xcb_dri2_copy_region".}
proc copyRegionUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; region: uint32; dest: uint32; src: uint32): XcbDri2CopyRegionCookie {.importc: "xcb_dri2_copy_region_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2CopyRegionCookie; e: ptr ptr XcbGenericError): ptr XcbDri2CopyRegionReply {.importc: "xcb_dri2_copy_region_reply".}
proc xcbDri2GetBuffersWithFormatSizeof*(buffer: pointer; attachmentsLen: uint32): cint {.importc: "xcb_dri2_get_buffers_with_format_sizeof".}
proc getBuffers*(c: ptr XcbConnection; drawable: XcbDrawable; count: uint32; attachmentsLen: uint32; attachments: ptr XcbDri2AttachFormat): XcbDri2GetBuffersWithFormatCookie {.importc: "xcb_dri2_get_buffers_with_format".}
proc getBuffersUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; count: uint32; attachmentsLen: uint32; attachments: ptr XcbDri2AttachFormat): XcbDri2GetBuffersWithFormatCookie {.importc: "xcb_dri2_get_buffers_with_format_unchecked".}
proc buffers*(R: ptr XcbDri2GetBuffersWithFormatReply): ptr UncheckedArray[XcbDri2Dri2Buffer] {.importc: "xcb_dri2_get_buffers_with_format_buffers".}
proc buffersLength*(R: ptr XcbDri2GetBuffersWithFormatReply): cint {.importc: "xcb_dri2_get_buffers_with_format_buffers_length".}
proc buffersIterator*(R: ptr XcbDri2GetBuffersWithFormatReply): XcbDri2Dri2BufferIterator {.importc: "xcb_dri2_get_buffers_with_format_buffers_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2GetBuffersWithFormatCookie; e: ptr ptr XcbGenericError): ptr XcbDri2GetBuffersWithFormatReply {.importc: "xcb_dri2_get_buffers_with_format_reply".}
proc swapBuffers*(c: ptr XcbConnection; drawable: XcbDrawable; targetMscHi: uint32; targetMscLo: uint32; divisorHi: uint32; divisorLo: uint32; remainderHi: uint32; remainderLo: uint32): XcbDri2SwapBuffersCookie {.importc: "xcb_dri2_swap_buffers".}
proc swapBuffersUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; targetMscHi: uint32; targetMscLo: uint32; divisorHi: uint32; divisorLo: uint32; remainderHi: uint32; remainderLo: uint32): XcbDri2SwapBuffersCookie {.importc: "xcb_dri2_swap_buffers_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2SwapBuffersCookie; e: ptr ptr XcbGenericError): ptr XcbDri2SwapBuffersReply {.importc: "xcb_dri2_swap_buffers_reply".}
proc getMsc*(c: ptr XcbConnection; drawable: XcbDrawable): XcbDri2GetMscCookie {.importc: "xcb_dri2_get_msc".}
proc getMscUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbDri2GetMscCookie {.importc: "xcb_dri2_get_msc_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2GetMscCookie; e: ptr ptr XcbGenericError): ptr XcbDri2GetMscReply {.importc: "xcb_dri2_get_msc_reply".}
proc waitMsc*(c: ptr XcbConnection; drawable: XcbDrawable; targetMscHi: uint32; targetMscLo: uint32; divisorHi: uint32; divisorLo: uint32; remainderHi: uint32; remainderLo: uint32): XcbDri2WaitMscCookie {.importc: "xcb_dri2_wait_msc".}
proc waitMscUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; targetMscHi: uint32; targetMscLo: uint32; divisorHi: uint32; divisorLo: uint32; remainderHi: uint32; remainderLo: uint32): XcbDri2WaitMscCookie {.importc: "xcb_dri2_wait_msc_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2WaitMscCookie; e: ptr ptr XcbGenericError): ptr XcbDri2WaitMscReply {.importc: "xcb_dri2_wait_msc_reply".}
proc waitSbc*(c: ptr XcbConnection; drawable: XcbDrawable; targetSbcHi: uint32; targetSbcLo: uint32): XcbDri2WaitSbcCookie {.importc: "xcb_dri2_wait_sbc".}
proc waitSbcUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; targetSbcHi: uint32; targetSbcLo: uint32): XcbDri2WaitSbcCookie {.importc: "xcb_dri2_wait_sbc_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2WaitSbcCookie; e: ptr ptr XcbGenericError): ptr XcbDri2WaitSbcReply {.importc: "xcb_dri2_wait_sbc_reply".}
proc swapIntervalChecked*(c: ptr XcbConnection; drawable: XcbDrawable; interval: uint32): XcbVoidCookie {.discardable, importc: "xcb_dri2_swap_interval_checked".}
proc swapInterval*(c: ptr XcbConnection; drawable: XcbDrawable; interval: uint32): XcbVoidCookie {.discardable, importc: "xcb_dri2_swap_interval".}
proc getParam*(c: ptr XcbConnection; drawable: XcbDrawable; param: uint32): XcbDri2GetParamCookie {.importc: "xcb_dri2_get_param".}
proc getParamUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; param: uint32): XcbDri2GetParamCookie {.importc: "xcb_dri2_get_param_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri2GetParamCookie; e: ptr ptr XcbGenericError): ptr XcbDri2GetParamReply {.importc: "xcb_dri2_get_param_reply".}

{.pop.}
{.pop.}
