import ./xcb

const
  xcbShmMajorVersion* = 1
  xcbShmMinorVersion* = 2
  xcbShmCompletion* = 0
  xcbShmBadSeg* = 0
  xcbShmQueryVersion* = 0
  xcbShmAttach* = 1
  xcbShmDetach* = 2
  xcbShmPutImage* = 3
  xcbShmGetImage* = 4
  xcbShmCreatePixmap* = 5
  xcbShmAttachFd* = 6
  xcbShmCreateSegment* = 7

{.passl: "-lxcb-shm".}
{.push header: "xcb/shm.h".}

var xcbShmId* {.extern: "xcb_shm_id".}: XcbExtension

type
  XcbShmSeg* {.importc: "xcb_shm_seg_t".} = distinct uint32
  XcbShmBadSegError* {.importc: "xcb_shm_bad_seg_error_t".} = XcbValueError

  XcbShmSegIterator* {.importc: "xcb_shm_seg_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbShmSeg]
    rem*: cint
    index*: cint

  XcbShmCompletionEvent* {.importc: "xcb_shm_completion_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    drawable*: XcbDrawable
    minorEvent* {.importc: "minor_event".}: uint16
    majorEvent* {.importc: "major_event".}: uint8
    pad1: uint8
    shmseg*: XcbShmSeg
    offset*: uint32

  XcbShmQueryVersionCookie* {.importc: "xcb_shm_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShmQueryVersionRequest* {.importc: "xcb_shm_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbShmQueryVersionReply* {.importc: "xcb_shm_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    sharedPixmaps* {.importc: "shared_pixmaps".}: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16
    uid*: uint16
    gid*: uint16
    pixmapFormat* {.importc: "pixmap_format".}: uint8
    pad0: array[15, uint8]

  XcbShmAttachRequest* {.importc: "xcb_shm_attach_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    shmseg*: XcbShmSeg
    shmid*: uint32
    readOnly* {.importc: "read_only".}: uint8
    pad0: array[3, uint8]

  XcbShmDetachRequest* {.importc: "xcb_shm_detach_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    shmseg*: XcbShmSeg

  XcbShmPutImageRequest* {.importc: "xcb_shm_put_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    totalWidth* {.importc: "total_width".}: uint16
    totalHeight* {.importc: "total_height".}: uint16
    srcX* {.importc: "src_x".}: uint16
    srcY* {.importc: "src_y".}: uint16
    srcWidth* {.importc: "src_width".}: uint16
    srcHeight* {.importc: "src_height".}: uint16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16
    depth*: uint8
    format*: uint8
    sendEvent* {.importc: "send_event".}: uint8
    pad0: uint8
    shmseg*: XcbShmSeg
    offset*: uint32

  XcbShmGetImageCookie* {.importc: "xcb_shm_get_image_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShmGetImageRequest* {.importc: "xcb_shm_get_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    planeMask* {.importc: "plane_mask".}: uint32
    format*: uint8
    pad0: array[3, uint8]
    shmseg*: XcbShmSeg
    offset*: uint32

  XcbShmGetImageReply* {.importc: "xcb_shm_get_image_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    depth*: uint8
    sequence*: uint16
    length*: uint32
    visual*: XcbVisualid
    size*: uint32

  XcbShmCreatePixmapRequest* {.importc: "xcb_shm_create_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pid*: XcbPixmap
    drawable*: XcbDrawable
    width*: uint16
    height*: uint16
    depth*: uint8
    pad0: array[3, uint8]
    shmseg*: XcbShmSeg
    offset*: uint32

  XcbShmAttachFdRequest* {.importc: "xcb_shm_attach_fd_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    shmseg*: XcbShmSeg
    readOnly* {.importc: "read_only".}: uint8
    pad0: array[3, uint8]

  XcbShmCreateSegmentCookie* {.importc: "xcb_shm_create_segment_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShmCreateSegmentRequest* {.importc: "xcb_shm_create_segment_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    shmseg*: XcbShmSeg
    size*: uint32
    readOnly* {.importc: "read_only".}: uint8
    pad0: array[3, uint8]

  XcbShmCreateSegmentReply* {.importc: "xcb_shm_create_segment_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

{.push cdecl.}

proc next*(i: ptr XcbShmSegIterator) {.importc: "xcb_shm_seg_next".}
proc iterEnd*(i: XcbShmSegIterator): XcbGenericIterator {.importc: "xcb_shm_seg_end".}
proc shmQueryVersion*(c: ptr XcbConnection): XcbShmQueryVersionCookie {.importc: "xcb_shm_query_version".}
proc shmQueryVersionUnchecked*(c: ptr XcbConnection): XcbShmQueryVersionCookie {.importc: "xcb_shm_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShmQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbShmQueryVersionReply {.importc: "xcb_shm_query_version_reply".}
proc attachChecked*(c: ptr XcbConnection; shmseg: XcbShmSeg; shmid: uint32; readOnly: uint8): XcbVoidCookie {.discardable, importc: "xcb_shm_attach_checked".}
proc attach*(c: ptr XcbConnection; shmseg: XcbShmSeg; shmid: uint32; readOnly: uint8): XcbVoidCookie {.discardable, importc: "xcb_shm_attach".}
proc detachChecked*(c: ptr XcbConnection; shmseg: XcbShmSeg): XcbVoidCookie {.discardable, importc: "xcb_shm_detach_checked".}
proc detach*(c: ptr XcbConnection; shmseg: XcbShmSeg): XcbVoidCookie {.discardable, importc: "xcb_shm_detach".}
proc putImageChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; totalWidth: uint16; totalHeight: uint16; srcX: uint16; srcY: uint16; srcWidth: uint16; srcHeight: uint16; dstX: int16; dstY: int16; depth: uint8; format: uint8; sendEvent: uint8; shmseg: XcbShmSeg; offset: uint32): XcbVoidCookie {.discardable, importc: "xcb_shm_put_image_checked".}
proc putImage*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; totalWidth: uint16; totalHeight: uint16; srcX: uint16; srcY: uint16; srcWidth: uint16; srcHeight: uint16; dstX: int16; dstY: int16; depth: uint8; format: uint8; sendEvent: uint8; shmseg: XcbShmSeg; offset: uint32): XcbVoidCookie {.discardable, importc: "xcb_shm_put_image".}
proc getImage*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; planeMask: uint32; format: uint8; shmseg: XcbShmSeg; offset: uint32): XcbShmGetImageCookie {.importc: "xcb_shm_get_image".}
proc getImageUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; planeMask: uint32; format: uint8; shmseg: XcbShmSeg; offset: uint32): XcbShmGetImageCookie {.importc: "xcb_shm_get_image_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShmGetImageCookie; e: ptr ptr XcbGenericError): ptr XcbShmGetImageReply {.importc: "xcb_shm_get_image_reply".}
proc createPixmapChecked*(c: ptr XcbConnection; pid: XcbPixmap; drawable: XcbDrawable; width: uint16; height: uint16; depth: uint8; shmseg: XcbShmSeg; offset: uint32): XcbVoidCookie {.discardable, importc: "xcb_shm_create_pixmap_checked".}
proc createPixmap*(c: ptr XcbConnection; pid: XcbPixmap; drawable: XcbDrawable; width: uint16; height: uint16; depth: uint8; shmseg: XcbShmSeg; offset: uint32): XcbVoidCookie {.discardable, importc: "xcb_shm_create_pixmap".}
proc attachFdChecked*(c: ptr XcbConnection; shmseg: XcbShmSeg; shmFd: int32; readOnly: uint8): XcbVoidCookie {.discardable, importc: "xcb_shm_attach_fd_checked".}
proc attachFd*(c: ptr XcbConnection; shmseg: XcbShmSeg; shmFd: int32; readOnly: uint8): XcbVoidCookie {.discardable, importc: "xcb_shm_attach_fd".}
proc createSegment*(c: ptr XcbConnection; shmseg: XcbShmSeg; size: uint32; readOnly: uint8): XcbShmCreateSegmentCookie {.importc: "xcb_shm_create_segment".}
proc createSegmentUnchecked*(c: ptr XcbConnection; shmseg: XcbShmSeg; size: uint32; readOnly: uint8): XcbShmCreateSegmentCookie {.importc: "xcb_shm_create_segment_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShmCreateSegmentCookie; e: ptr ptr XcbGenericError): ptr XcbShmCreateSegmentReply {.importc: "xcb_shm_create_segment_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbShmCreateSegmentReply): ptr UncheckedArray[cint] {.importc: "xcb_shm_create_segment_reply_fds".}

{.pop.}
{.pop.}
