import ./xcb

const
  xcbXf86driMajorVersion* = 4
  xcbXf86driMinorVersion* = 1
  xcbXf86driQueryVersion* = 0
  xcbXf86driQueryDirectRenderingCapable* = 1
  xcbXf86driOpenConnection* = 2
  xcbXf86driCloseConnection* = 3
  xcbXf86driGetClientDriverName* = 4
  xcbXf86driCreateContext* = 5
  xcbXf86driDestroyContext* = 6
  xcbXf86driCreateDrawable* = 7
  xcbXf86driDestroyDrawable* = 8
  xcbXf86driGetDrawableInfo* = 9
  xcbXf86driGetDeviceInfo* = 10
  xcbXf86driAuthConnection* = 11

{.passl: "-lxcb-xf86dri".}
{.push header: "xcb/xf86dri.h".}

var xcbXf86driId* {.extern: "xcb_xf86dri_id".}: XcbExtension

type
  XcbXf86driDrmClipRect* {.importc: "xcb_xf86dri_drm_clip_rect_t", bycopy.} = object
    x1*: int16
    y1*: int16
    x2*: int16
    x3*: int16

  XcbXf86driDrmClipRectIterator* {.importc: "xcb_xf86dri_drm_clip_rect_iterator_t", bycopy.} = object
    data*: ptr XcbXf86driDrmClipRect
    rem*: cint
    index*: cint

  XcbXf86driQueryVersionCookie* {.importc: "xcb_xf86dri_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driQueryVersionRequest* {.importc: "xcb_xf86dri_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXf86driQueryVersionReply* {.importc: "xcb_xf86dri_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    driMajorVersion* {.importc: "dri_major_version".}: uint16
    driMinorVersion* {.importc: "dri_minor_version".}: uint16
    driMinorPatch* {.importc: "dri_minor_patch".}: uint32

  XcbXf86driQueryDirectRenderingCapableCookie* {.importc: "xcb_xf86dri_query_direct_rendering_capable_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driQueryDirectRenderingCapableRequest* {.importc: "xcb_xf86dri_query_direct_rendering_capable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXf86driQueryDirectRenderingCapableReply* {.importc: "xcb_xf86dri_query_direct_rendering_capable_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    isCapable* {.importc: "is_capable".}: uint8

  XcbXf86driOpenConnectionCookie* {.importc: "xcb_xf86dri_open_connection_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driOpenConnectionRequest* {.importc: "xcb_xf86dri_open_connection_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXf86driOpenConnectionReply* {.importc: "xcb_xf86dri_open_connection_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    sareaHandleLow* {.importc: "sarea_handle_low".}: uint32
    sareaHandleHigh* {.importc: "sarea_handle_high".}: uint32
    busIdLen* {.importc: "bus_id_len".}: uint32
    pad1: array[12, uint8]

  XcbXf86driCloseConnectionRequest* {.importc: "xcb_xf86dri_close_connection_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXf86driGetClientDriverNameCookie* {.importc: "xcb_xf86dri_get_client_driver_name_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driGetClientDriverNameRequest* {.importc: "xcb_xf86dri_get_client_driver_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXf86driGetClientDriverNameReply* {.importc: "xcb_xf86dri_get_client_driver_name_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    clientDriverMajorVersion* {.importc: "client_driver_major_version".}: uint32
    clientDriverMinorVersion* {.importc: "client_driver_minor_version".}: uint32
    clientDriverPatchVersion* {.importc: "client_driver_patch_version".}: uint32
    clientDriverNameLen* {.importc: "client_driver_name_len".}: uint32
    pad1: array[8, uint8]

  XcbXf86driCreateContextCookie* {.importc: "xcb_xf86dri_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driCreateContextRequest* {.importc: "xcb_xf86dri_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    visual*: uint32
    context*: uint32

  XcbXf86driCreateContextReply* {.importc: "xcb_xf86dri_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    hwContext* {.importc: "hw_context".}: uint32

  XcbXf86driDestroyContextRequest* {.importc: "xcb_xf86dri_destroy_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    context*: uint32

  XcbXf86driCreateDrawableCookie* {.importc: "xcb_xf86dri_create_drawable_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driCreateDrawableRequest* {.importc: "xcb_xf86dri_create_drawable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    drawable*: uint32

  XcbXf86driCreateDrawableReply* {.importc: "xcb_xf86dri_create_drawable_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    hwDrawableHandle* {.importc: "hw_drawable_handle".}: uint32

  XcbXf86driDestroyDrawableRequest* {.importc: "xcb_xf86dri_destroy_drawable_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    drawable*: uint32

  XcbXf86driGetDrawableInfoCookie* {.importc: "xcb_xf86dri_get_drawable_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driGetDrawableInfoRequest* {.importc: "xcb_xf86dri_get_drawable_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    drawable*: uint32

  XcbXf86driGetDrawableInfoReply* {.importc: "xcb_xf86dri_get_drawable_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    drawableTableIndex* {.importc: "drawable_table_index".}: uint32
    drawableTableStamp* {.importc: "drawable_table_stamp".}: uint32
    drawableOriginX* {.importc: "drawable_origin_X".}: int16
    drawableOriginY* {.importc: "drawable_origin_Y".}: int16
    drawableSizeW* {.importc: "drawable_size_W".}: int16
    drawableSizeH* {.importc: "drawable_size_H".}: int16
    numClipRects* {.importc: "num_clip_rects".}: uint32
    backX* {.importc: "back_x".}: int16
    backY* {.importc: "back_y".}: int16
    numBackClipRects* {.importc: "num_back_clip_rects".}: uint32

  XcbXf86driGetDeviceInfoCookie* {.importc: "xcb_xf86dri_get_device_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driGetDeviceInfoRequest* {.importc: "xcb_xf86dri_get_device_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbXf86driGetDeviceInfoReply* {.importc: "xcb_xf86dri_get_device_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    framebufferHandleLow* {.importc: "framebuffer_handle_low".}: uint32
    framebufferHandleHigh* {.importc: "framebuffer_handle_high".}: uint32
    framebufferOriginOffset* {.importc: "framebuffer_origin_offset".}: uint32
    framebufferSize* {.importc: "framebuffer_size".}: uint32
    framebufferStride* {.importc: "framebuffer_stride".}: uint32
    devicePrivateSize* {.importc: "device_private_size".}: uint32

  XcbXf86driAuthConnectionCookie* {.importc: "xcb_xf86dri_auth_connection_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXf86driAuthConnectionRequest* {.importc: "xcb_xf86dri_auth_connection_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    magic*: uint32

  XcbXf86driAuthConnectionReply* {.importc: "xcb_xf86dri_auth_connection_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    authenticated*: uint32

{.push cdecl.}

proc next*(i: ptr XcbXf86driDrmClipRectIterator) {.importc: "xcb_xf86dri_drm_clip_rect_next".}
proc iterEnd*(i: XcbXf86driDrmClipRectIterator): XcbGenericIterator {.importc: "xcb_xf86dri_drm_clip_rect_end".}
proc xf86driQueryVersion*(c: ptr XcbConnection): XcbXf86driQueryVersionCookie {.importc: "xcb_xf86dri_query_version".}
proc xf86driQueryVersionUnchecked*(c: ptr XcbConnection): XcbXf86driQueryVersionCookie {.importc: "xcb_xf86dri_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driQueryVersionReply {.importc: "xcb_xf86dri_query_version_reply".}
proc queryDirectRenderingCapable*(c: ptr XcbConnection; screen: uint32): XcbXf86driQueryDirectRenderingCapableCookie {.importc: "xcb_xf86dri_query_direct_rendering_capable".}
proc queryDirectRenderingCapableUnchecked*(c: ptr XcbConnection; screen: uint32): XcbXf86driQueryDirectRenderingCapableCookie {.importc: "xcb_xf86dri_query_direct_rendering_capable_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driQueryDirectRenderingCapableCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driQueryDirectRenderingCapableReply {.importc: "xcb_xf86dri_query_direct_rendering_capable_reply".}
proc openConnectionSizeof*(buffer: pointer): cint {.importc: "xcb_xf86dri_open_connection_sizeof".}
proc xf86driOpenConnection*(c: ptr XcbConnection; screen: uint32): XcbXf86driOpenConnectionCookie {.importc: "xcb_xf86dri_open_connection".}
proc xf86driOpenConnectionUnchecked*(c: ptr XcbConnection; screen: uint32): XcbXf86driOpenConnectionCookie {.importc: "xcb_xf86dri_open_connection_unchecked".}
proc busId*(R: ptr XcbXf86driOpenConnectionReply): ptr UncheckedArray[char] {.importc: "xcb_xf86dri_open_connection_bus_id".}
proc busIdLength*(R: ptr XcbXf86driOpenConnectionReply): cint {.importc: "xcb_xf86dri_open_connection_bus_id_length".}
proc busIdEnd*(R: ptr XcbXf86driOpenConnectionReply): XcbGenericIterator {.importc: "xcb_xf86dri_open_connection_bus_id_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driOpenConnectionCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driOpenConnectionReply {.importc: "xcb_xf86dri_open_connection_reply".}
proc xf86driCloseConnectionChecked*(c: ptr XcbConnection; screen: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_close_connection_checked".}
proc xf86driCloseConnection*(c: ptr XcbConnection; screen: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_close_connection".}
proc getClientDriverNameSizeof*(buffer: pointer): cint {.importc: "xcb_xf86dri_get_client_driver_name_sizeof".}
proc getClientDriverName*(c: ptr XcbConnection; screen: uint32): XcbXf86driGetClientDriverNameCookie {.importc: "xcb_xf86dri_get_client_driver_name".}
proc getClientDriverNameUnchecked*(c: ptr XcbConnection; screen: uint32): XcbXf86driGetClientDriverNameCookie {.importc: "xcb_xf86dri_get_client_driver_name_unchecked".}
proc clientDriverName*(R: ptr XcbXf86driGetClientDriverNameReply): ptr UncheckedArray[char] {.importc: "xcb_xf86dri_get_client_driver_name_client_driver_name".}
proc clientDriverNameLength*(R: ptr XcbXf86driGetClientDriverNameReply): cint {.importc: "xcb_xf86dri_get_client_driver_name_client_driver_name_length".}
proc clientDriverNameEnd*(R: ptr XcbXf86driGetClientDriverNameReply): XcbGenericIterator {.importc: "xcb_xf86dri_get_client_driver_name_client_driver_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driGetClientDriverNameCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driGetClientDriverNameReply {.importc: "xcb_xf86dri_get_client_driver_name_reply".}
proc createContext*(c: ptr XcbConnection; screen: uint32; visual: uint32; context: uint32): XcbXf86driCreateContextCookie {.importc: "xcb_xf86dri_create_context".}
proc createContextUnchecked*(c: ptr XcbConnection; screen: uint32; visual: uint32; context: uint32): XcbXf86driCreateContextCookie {.importc: "xcb_xf86dri_create_context_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driCreateContextReply {.importc: "xcb_xf86dri_create_context_reply".}
proc destroyContextChecked*(c: ptr XcbConnection; screen: uint32; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_destroy_context_checked".}
proc destroyContext*(c: ptr XcbConnection; screen: uint32; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_destroy_context".}
proc xf86driCreateDrawable*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbXf86driCreateDrawableCookie {.importc: "xcb_xf86dri_create_drawable".}
proc xf86driCreateDrawableUnchecked*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbXf86driCreateDrawableCookie {.importc: "xcb_xf86dri_create_drawable_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driCreateDrawableCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driCreateDrawableReply {.importc: "xcb_xf86dri_create_drawable_reply".}
proc xf86driDestroyDrawableChecked*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_destroy_drawable_checked".}
proc xf86driDestroyDrawable*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbVoidCookie {.discardable, importc: "xcb_xf86dri_destroy_drawable".}
proc getDrawableInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xf86dri_get_drawable_info_sizeof".}
proc getDrawableInfo*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbXf86driGetDrawableInfoCookie {.importc: "xcb_xf86dri_get_drawable_info".}
proc getDrawableInfoUnchecked*(c: ptr XcbConnection; screen: uint32; drawable: uint32): XcbXf86driGetDrawableInfoCookie {.importc: "xcb_xf86dri_get_drawable_info_unchecked".}
proc clipRects*(R: ptr XcbXf86driGetDrawableInfoReply): ptr UncheckedArray[XcbXf86driDrmClipRect] {.importc: "xcb_xf86dri_get_drawable_info_clip_rects".}
proc clipRectsLength*(R: ptr XcbXf86driGetDrawableInfoReply): cint {.importc: "xcb_xf86dri_get_drawable_info_clip_rects_length".}
proc clipRectsIterator*(R: ptr XcbXf86driGetDrawableInfoReply): XcbXf86driDrmClipRectIterator {.importc: "xcb_xf86dri_get_drawable_info_clip_rects_iterator".}
proc backClipRects*(R: ptr XcbXf86driGetDrawableInfoReply): ptr UncheckedArray[XcbXf86driDrmClipRect] {.importc: "xcb_xf86dri_get_drawable_info_back_clip_rects".}
proc backClipRectsLength*(R: ptr XcbXf86driGetDrawableInfoReply): cint {.importc: "xcb_xf86dri_get_drawable_info_back_clip_rects_length".}
proc backClipRectsIterator*(R: ptr XcbXf86driGetDrawableInfoReply): XcbXf86driDrmClipRectIterator {.importc: "xcb_xf86dri_get_drawable_info_back_clip_rects_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driGetDrawableInfoCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driGetDrawableInfoReply {.importc: "xcb_xf86dri_get_drawable_info_reply".}
proc getDeviceInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xf86dri_get_device_info_sizeof".}
proc getDeviceInfo*(c: ptr XcbConnection; screen: uint32): XcbXf86driGetDeviceInfoCookie {.importc: "xcb_xf86dri_get_device_info".}
proc getDeviceInfoUnchecked*(c: ptr XcbConnection; screen: uint32): XcbXf86driGetDeviceInfoCookie {.importc: "xcb_xf86dri_get_device_info_unchecked".}
proc devicePrivate*(R: ptr XcbXf86driGetDeviceInfoReply): ptr UncheckedArray[uint32] {.importc: "xcb_xf86dri_get_device_info_device_private".}
proc devicePrivateLength*(R: ptr XcbXf86driGetDeviceInfoReply): cint {.importc: "xcb_xf86dri_get_device_info_device_private_length".}
proc devicePrivateEnd*(R: ptr XcbXf86driGetDeviceInfoReply): XcbGenericIterator {.importc: "xcb_xf86dri_get_device_info_device_private_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driGetDeviceInfoCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driGetDeviceInfoReply {.importc: "xcb_xf86dri_get_device_info_reply".}
proc authConnection*(c: ptr XcbConnection; screen: uint32; magic: uint32): XcbXf86driAuthConnectionCookie {.importc: "xcb_xf86dri_auth_connection".}
proc authConnectionUnchecked*(c: ptr XcbConnection; screen: uint32; magic: uint32): XcbXf86driAuthConnectionCookie {.importc: "xcb_xf86dri_auth_connection_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXf86driAuthConnectionCookie; e: ptr ptr XcbGenericError): ptr XcbXf86driAuthConnectionReply {.importc: "xcb_xf86dri_auth_connection_reply".}

{.pop.}
{.pop.}
