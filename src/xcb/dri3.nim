import ./xcb

const
  xcbDri3MajorVersion* = 1
  xcbDri3MinorVersion* = 2
  xcbDri3QueryVersion* = 0
  xcbDri3Open* = 1
  xcbDri3PixmapFromBuffer* = 2
  xcbDri3BufferFromPixmap* = 3
  xcbDri3FenceFromFd* = 4
  xcbDri3FdFromFence* = 5
  xcbDri3GetSupportedModifiers* = 6
  xcbDri3PixmapFromBuffers* = 7
  xcbDri3BuffersFromPixmap* = 8

{.passl: "-lxcb-dri3".}
{.push header: "xcb/dri3.h".}

var xcbDri3Id* {.extern: "xcb_dri3_id".}: XcbExtension

type
  XcbDri3QueryVersionCookie* {.importc: "xcb_dri3_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3QueryVersionRequest* {.importc: "xcb_dri3_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbDri3QueryVersionReply* {.importc: "xcb_dri3_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbDri3OpenCookie* {.importc: "xcb_dri3_open_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3OpenRequest* {.importc: "xcb_dri3_open_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    provider*: uint32

  XcbDri3OpenReply* {.importc: "xcb_dri3_open_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbDri3PixmapFromBufferRequest* {.importc: "xcb_dri3_pixmap_from_buffer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pixmap*: XcbPixmap
    drawable*: XcbDrawable
    size*: uint32
    width*: uint16
    height*: uint16
    stride*: uint16
    depth*: uint8
    bpp*: uint8

  XcbDri3BufferFromPixmapCookie* {.importc: "xcb_dri3_buffer_from_pixmap_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3BufferFromPixmapRequest* {.importc: "xcb_dri3_buffer_from_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pixmap*: XcbPixmap

  XcbDri3BufferFromPixmapReply* {.importc: "xcb_dri3_buffer_from_pixmap_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    size*: uint32
    width*: uint16
    height*: uint16
    stride*: uint16
    depth*: uint8
    bpp*: uint8
    pad0: array[12, uint8]

  XcbDri3FenceFromFdRequest* {.importc: "xcb_dri3_fence_from_fd_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    fence*: uint32
    initiallyTriggered* {.importc: "initially_triggered".}: uint8
    pad0: array[3, uint8]

  XcbDri3FdFromFenceCookie* {.importc: "xcb_dri3_fd_from_fence_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3FdFromFenceRequest* {.importc: "xcb_dri3_fd_from_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    fence*: uint32

  XcbDri3FdFromFenceReply* {.importc: "xcb_dri3_fd_from_fence_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbDri3GetSupportedModifiersCookie* {.importc: "xcb_dri3_get_supported_modifiers_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3GetSupportedModifiersRequest* {.importc: "xcb_dri3_get_supported_modifiers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: uint32
    depth*: uint8
    bpp*: uint8
    pad0: array[2, uint8]

  XcbDri3GetSupportedModifiersReply* {.importc: "xcb_dri3_get_supported_modifiers_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numWindowModifiers* {.importc: "num_window_modifiers".}: uint32
    numScreenModifiers* {.importc: "num_screen_modifiers".}: uint32
    pad1: array[16, uint8]

  XcbDri3PixmapFromBuffersRequest* {.importc: "xcb_dri3_pixmap_from_buffers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pixmap*: XcbPixmap
    window*: XcbWindow
    numBuffers* {.importc: "num_buffers".}: uint8
    pad0: array[3, uint8]
    width*: uint16
    height*: uint16
    stride0*: uint32
    offset0*: uint32
    stride1*: uint32
    offset1*: uint32
    stride2*: uint32
    offset2*: uint32
    stride3*: uint32
    offset3*: uint32
    depth*: uint8
    bpp*: uint8
    pad1: array[2, uint8]
    modifier*: uint64

  XcbDri3BuffersFromPixmapCookie* {.importc: "xcb_dri3_buffers_from_pixmap_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbDri3BuffersFromPixmapRequest* {.importc: "xcb_dri3_buffers_from_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pixmap*: XcbPixmap

  XcbDri3BuffersFromPixmapReply* {.importc: "xcb_dri3_buffers_from_pixmap_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    width*: uint16
    height*: uint16
    pad0: array[4, uint8]
    modifier*: uint64
    depth*: uint8
    bpp*: uint8
    pad1: array[6, uint8]

{.push cdecl.}

proc dri3QueryVersion*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbDri3QueryVersionCookie {.importc: "xcb_dri3_query_version".}
proc dri3QueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbDri3QueryVersionCookie {.importc: "xcb_dri3_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3QueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbDri3QueryVersionReply {.importc: "xcb_dri3_query_version_reply".}
proc open*(c: ptr XcbConnection; drawable: XcbDrawable; provider: uint32): XcbDri3OpenCookie {.importc: "xcb_dri3_open".}
proc openUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; provider: uint32): XcbDri3OpenCookie {.importc: "xcb_dri3_open_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3OpenCookie; e: ptr ptr XcbGenericError): ptr XcbDri3OpenReply {.importc: "xcb_dri3_open_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbDri3OpenReply): ptr UncheckedArray[cint] {.importc: "xcb_dri3_open_reply_fds".}
proc pixmapFromBufferChecked*(c: ptr XcbConnection; pixmap: XcbPixmap; drawable: XcbDrawable; size: uint32; width: uint16; height: uint16; stride: uint16; depth: uint8; bpp: uint8; pixmapFd: int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_pixmap_from_buffer_checked".}
proc pixmapFromBuffer*(c: ptr XcbConnection; pixmap: XcbPixmap; drawable: XcbDrawable; size: uint32; width: uint16; height: uint16; stride: uint16; depth: uint8; bpp: uint8; pixmapFd: int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_pixmap_from_buffer".}
proc bufferFromPixmap*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbDri3BufferFromPixmapCookie {.importc: "xcb_dri3_buffer_from_pixmap".}
proc bufferFromPixmapUnchecked*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbDri3BufferFromPixmapCookie {.importc: "xcb_dri3_buffer_from_pixmap_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3BufferFromPixmapCookie; e: ptr ptr XcbGenericError): ptr XcbDri3BufferFromPixmapReply {.importc: "xcb_dri3_buffer_from_pixmap_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbDri3BufferFromPixmapReply): ptr UncheckedArray[cint] {.importc: "xcb_dri3_buffer_from_pixmap_reply_fds".}
proc fenceFromFdChecked*(c: ptr XcbConnection; drawable: XcbDrawable; fence: uint32; initiallyTriggered: uint8; fenceFd: int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_fence_from_fd_checked".}
proc fenceFromFd*(c: ptr XcbConnection; drawable: XcbDrawable; fence: uint32; initiallyTriggered: uint8; fenceFd: int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_fence_from_fd".}
proc fdFromFence*(c: ptr XcbConnection; drawable: XcbDrawable; fence: uint32): XcbDri3FdFromFenceCookie {.importc: "xcb_dri3_fd_from_fence".}
proc fdFromFenceUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; fence: uint32): XcbDri3FdFromFenceCookie {.importc: "xcb_dri3_fd_from_fence_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3FdFromFenceCookie; e: ptr ptr XcbGenericError): ptr XcbDri3FdFromFenceReply {.importc: "xcb_dri3_fd_from_fence_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbDri3FdFromFenceReply): ptr UncheckedArray[cint] {.importc: "xcb_dri3_fd_from_fence_reply_fds".}
proc getSupportedModifiersSizeof*(buffer: pointer): cint {.importc: "xcb_dri3_get_supported_modifiers_sizeof".}
proc getSupportedModifiers*(c: ptr XcbConnection; window: uint32; depth, bpp: uint8): XcbDri3GetSupportedModifiersCookie {.importc: "xcb_dri3_get_supported_modifiers".}
proc getSupportedModifiersUnchecked*(c: ptr XcbConnection; window: uint32; depth, bpp: uint8): XcbDri3GetSupportedModifiersCookie {.importc: "xcb_dri3_get_supported_modifiers_unchecked".}
proc windowModifiers*(R: ptr XcbDri3GetSupportedModifiersReply): ptr UncheckedArray[uint64] {.importc: "xcb_dri3_get_supported_modifiers_window_modifiers".}
proc windowModifiersLength*(R: ptr XcbDri3GetSupportedModifiersReply): cint {.importc: "xcb_dri3_get_supported_modifiers_window_modifiers_length".}
proc windowModifiersEnd*(R: ptr XcbDri3GetSupportedModifiersReply): XcbGenericIterator {.importc: "xcb_dri3_get_supported_modifiers_window_modifiers_end".}
proc screenModifiers*(R: ptr XcbDri3GetSupportedModifiersReply): ptr UncheckedArray[uint64] {.importc: "xcb_dri3_get_supported_modifiers_screen_modifiers".}
proc screenModifiersLength*(R: ptr XcbDri3GetSupportedModifiersReply): cint {.importc: "xcb_dri3_get_supported_modifiers_screen_modifiers_length".}
proc screenModifiersEnd*(R: ptr XcbDri3GetSupportedModifiersReply): XcbGenericIterator {.importc: "xcb_dri3_get_supported_modifiers_screen_modifiers_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3GetSupportedModifiersCookie; e: ptr ptr XcbGenericError): ptr XcbDri3GetSupportedModifiersReply {.importc: "xcb_dri3_get_supported_modifiers_reply".}
proc pixmapFromBuffersChecked*(c: ptr XcbConnection; pixmap: XcbPixmap; window: XcbWindow; numBuffers: uint8; width, height: uint16; stride0, offset0, stride1, offset1, stride2, offset2, stride3, offset3: uint32; depth, bpp: uint8; modifier: uint64; buffers: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_pixmap_from_buffers_checked".}
proc pixmapFromBuffers*(c: ptr XcbConnection; pixmap: XcbPixmap; window: XcbWindow; numBuffers: uint8; width, height: uint16; stride0, offset0, stride1, offset1, stride2, offset2, stride3, offset3: uint32; depth, bpp: uint8; modifier: uint64; buffers: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_dri3_pixmap_from_buffers".}
proc buffersFromPixmapSizeof*(buffer: pointer; buffers: int32): cint {.importc: "xcb_dri3_buffers_from_pixmap_sizeof".}
proc buffersFromPixmap*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbDri3BuffersFromPixmapCookie {.importc: "xcb_dri3_buffers_from_pixmap".}
proc buffersFromPixmapUnchecked*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbDri3BuffersFromPixmapCookie {.importc: "xcb_dri3_buffers_from_pixmap_unchecked".}
proc strides*(R: ptr XcbDri3BuffersFromPixmapReply): ptr UncheckedArray[uint32] {.importc: "xcb_dri3_buffers_from_pixmap_strides".}
proc stridesLength*(R: ptr XcbDri3BuffersFromPixmapReply): cint {.importc: "xcb_dri3_buffers_from_pixmap_strides_length".}
proc stridesEnd*(R: ptr XcbDri3BuffersFromPixmapReply): XcbGenericIterator {.importc: "xcb_dri3_buffers_from_pixmap_strides_end".}
proc offsets*(R: ptr XcbDri3BuffersFromPixmapReply): ptr UncheckedArray[uint32] {.importc: "xcb_dri3_buffers_from_pixmap_offsets".}
proc offsetsLength*(R: ptr XcbDri3BuffersFromPixmapReply): cint {.importc: "xcb_dri3_buffers_from_pixmap_offsets_length".}
proc offsetsEnd*(R: ptr XcbDri3BuffersFromPixmapReply): XcbGenericIterator {.importc: "xcb_dri3_buffers_from_pixmap_offsets_end".}
proc buffers*(R: ptr XcbDri3BuffersFromPixmapReply): ptr UncheckedArray[int32] {.importc: "xcb_dri3_buffers_from_pixmap_buffers".}
proc buffersLength*(R: ptr XcbDri3BuffersFromPixmapReply): cint {.importc: "xcb_dri3_buffers_from_pixmap_buffers_length".}
proc buffersEnd*(R: ptr XcbDri3BuffersFromPixmapReply): XcbGenericIterator {.importc: "xcb_dri3_buffers_from_pixmap_buffers_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbDri3BuffersFromPixmapCookie; e: ptr ptr XcbGenericError): ptr XcbDri3BuffersFromPixmapReply {.importc: "xcb_dri3_buffers_from_pixmap_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbDri3BuffersFromPixmapReply): ptr UncheckedArray[cint] {.importc: "xcb_dri3_buffers_from_pixmap_reply_fds".}

{.pop.}
{.pop.}
