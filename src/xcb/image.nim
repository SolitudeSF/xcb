import ./xcb, ./shm

{.passl: "-lxcb-image".}
{.push header: "xcb/xcb_image.h".}

type
  XcbImage* {.importc: "xcb_image_t", bycopy.} = object
    width*: uint16
    height*: uint16
    format*: XcbImageFormat
    scanlinePad* {.importc: "scanline_pad".}: uint8
    depth*: uint8
    bpp*: uint8
    unit*: uint8
    planeMask* {.importc: "plane_mask".}: uint32
    byteOrder* {.importc: "byte_order".}: XcbImageOrder
    bitOrder* {.importc: "bit_order".}: XcbImageOrder
    stride*: uint32
    size*: uint32
    base*: pointer
    data*: ptr UncheckedArray[uint8]

  XcbShmSegmentInfo* {.importc: "xcb_shm_segment_info_t", bycopy.} = object
    shmseg*: XcbShmSeg
    shmid*: uint32
    shmaddr*: ptr uint8

{.push cdecl.}

proc annotate*(image: ptr XcbImage) {.importc: "xcb_image_annotate".}
proc createImage*(width: uint16; height: uint16; format: XcbImageFormat; xpad: uint8; depth: uint8; bpp: uint8; unit: uint8; byteOrder: XcbImageOrder; bitOrder: XcbImageOrder; base: pointer; bytes: uint32; data: ptr uint8): ptr XcbImage {.importc: "xcb_image_create".}
proc createImageNative*(c: ptr XcbConnection; width: uint16; height: uint16; format: XcbImageFormat; depth: uint8; base: pointer; bytes: uint32; data: ptr uint8): ptr XcbImage {.importc: "xcb_image_create_native".}
proc destroy*(image: ptr XcbImage) {.importc: "xcb_image_destroy".}
proc get*(conn: ptr XcbConnection; draw: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; planeMask: uint32; format: XcbImageFormat): ptr XcbImage {.importc: "xcb_image_get".}
proc put*(conn: ptr XcbConnection; draw: XcbDrawable; gc: XcbGcontext; image: ptr XcbImage; x: int16; y: int16; leftPad: uint8): XcbVoidCookie {.discardable, importc: "xcb_image_put".}
proc native*(c: ptr XcbConnection; image: ptr XcbImage; convert: cint): ptr XcbImage {.importc: "xcb_image_native".}
proc putPixel*(image: ptr XcbImage; x: uint32; y: uint32; pixel: uint32) {.importc: "xcb_image_put_pixel".}
proc getPixel*(image: ptr XcbImage; x: uint32; y: uint32): uint32 {.importc: "xcb_image_get_pixel".}
proc convert*(src: ptr XcbImage; dst: ptr XcbImage): ptr XcbImage {.importc: "xcb_image_convert".}
proc subimage*(image: ptr XcbImage; x: uint32; y: uint32; width: uint32; height: uint32; base: pointer; bytes: uint32; data: ptr uint8): ptr XcbImage {.importc: "xcb_image_subimage".}
proc put*(conn: ptr XcbConnection; draw: XcbDrawable; gc: XcbGcontext; image: ptr XcbImage; shminfo: XcbShmSegmentInfo; srcX: int16; srcY: int16; destX: int16; destY: int16; srcWidth: uint16; srcHeight: uint16; sendEvent: uint8): ptr XcbImage {.importc: "xcb_image_shm_put".}
proc get*(conn: ptr XcbConnection; draw: XcbDrawable; image: ptr XcbImage; shminfo: XcbShmSegmentInfo; x: int16; y: int16; planeMask: uint32): cint {.importc: "xcb_image_shm_get".}
proc createImageFromBitmapData*(data: ptr uint8; width: uint32; height: uint32): ptr XcbImage {.importc: "xcb_image_create_from_bitmap_data".}
proc createPixmapFromBitmapData*(display: ptr XcbConnection; d: XcbDrawable; data: ptr uint8; width: uint32; height: uint32; depth: uint32; fg: uint32; bg: uint32; gcp: ptr XcbGcontext): XcbPixmap {.importc: "xcb_create_pixmap_from_bitmap_data".}

{.pop.}
{.pop.}
