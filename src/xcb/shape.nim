import ./xcb

const
  xcbShapeMajorVersion* = 1
  xcbShapeMinorVersion* = 1
  xcbShapeNotify* = 0
  xcbShapeQueryVersion* = 0
  xcbShapeRectangles* = 1
  xcbShapeMask* = 2
  xcbShapeCombine* = 3
  xcbShapeOffset* = 4
  xcbShapeQueryExtents* = 5
  xcbShapeSelectInput* = 6
  xcbShapeInputSelected* = 7
  xcbShapeGetRectangles* = 8

{.push header: "xcb/shape.h".}

var xcbShapeId* {.extern: "xcb_shape_id".}: XcbExtension

type
  XcbShapeOp* {.importc: "xcb_shape_op_t".} = distinct uint8
  XcbShapeKind* {.importc: "xcb_shape_kind_t".} = distinct uint8

  XcbShapeOpIterator* {.importc: "xcb_shape_op_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbShapeOp]
    rem*: cint
    index*: cint

  XcbShapeKindIterator* {.importc: "xcb_shape_kind_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbShapeKind]
    rem*: cint
    index*: cint

  XcbShapeSo* {.importc: "xcb_shape_so_t".} = enum
    xcbShapeSoSet = 0, xcbShapeSoUnion = 1, xcbShapeSoIntersect = 2,
    xcbShapeSoSubtract = 3, xcbShapeSoInvert = 4

  XcbShapeSk* {.importc: "xcb_shape_sk_t".} = enum
    xcbShapeSkBounding = 0, xcbShapeSkClip = 1, xcbShapeSkInput = 2

  XcbShapeNotifyEvent* {.importc: "xcb_shape_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    shapeKind* {.importc: "shape_kind".}: XcbShapeKind
    sequence*: uint16
    affectedWindow* {.importc: "affected_window".}: XcbWindow
    extentsX* {.importc: "extents_x".}: int16
    extentsY* {.importc: "extents_y".}: int16
    extentsWidth* {.importc: "extents_width".}: uint16
    extentsHeight* {.importc: "extents_height".}: uint16
    serverTime* {.importc: "server_time".}: XcbTimestamp
    shaped*: uint8
    pad0: array[11, uint8]

  XcbShapeQueryVersionCookie* {.importc: "xcb_shape_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShapeQueryVersionRequest* {.importc: "xcb_shape_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbShapeQueryVersionReply* {.importc: "xcb_shape_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16

  XcbShapeRectanglesRequest* {.importc: "xcb_shape_rectangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    operation*: XcbShapeOp
    destinationKind* {.importc: "destination_kind".}: XcbShapeKind
    ordering*: uint8
    pad0: uint8
    destinationWindow* {.importc: "destination_window".}: XcbWindow
    xOffset* {.importc: "x_offset".}: int16
    yOffset* {.importc: "y_offset".}: int16

  XcbShapeMaskRequest* {.importc: "xcb_shape_mask_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    operation*: XcbShapeOp
    destinationKind* {.importc: "destination_kind".}: XcbShapeKind
    pad0: array[2, uint8]
    destinationWindow* {.importc: "destination_window".}: XcbWindow
    xOffset* {.importc: "x_offset".}: int16
    yOffset* {.importc: "y_offset".}: int16
    sourceBitmap* {.importc: "source_bitmap".}: XcbPixmap

  XcbShapeCombineRequest* {.importc: "xcb_shape_combine_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    operation*: XcbShapeOp
    destinationKind* {.importc: "destination_kind".}: XcbShapeKind
    sourceKind* {.importc: "source_kind".}: XcbShapeKind
    pad0: uint8
    destinationWindow* {.importc: "destination_window".}: XcbWindow
    xOffset* {.importc: "x_offset".}: int16
    yOffset* {.importc: "y_offset".}: int16
    sourceWindow* {.importc: "source_window".}: XcbWindow

  XcbShapeOffsetRequest* {.importc: "xcb_shape_offset_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    destinationKind* {.importc: "destination_kind".}: XcbShapeKind
    pad0: array[3, uint8]
    destinationWindow* {.importc: "destination_window".}: XcbWindow
    xOffset* {.importc: "x_offset".}: int16
    yOffset* {.importc: "y_offset".}: int16

  XcbShapeQueryExtentsCookie* {.importc: "xcb_shape_query_extents_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShapeQueryExtentsRequest* {.importc: "xcb_shape_query_extents_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    destinationWindow* {.importc: "destination_window".}: XcbWindow

  XcbShapeQueryExtentsReply* {.importc: "xcb_shape_query_extents_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    boundingShaped* {.importc: "bounding_shaped".}: uint8
    clipShaped* {.importc: "clip_shaped".}: uint8
    pad1: array[2, uint8]
    boundingShapeExtentsX* {.importc: "bounding_shape_extents_x".}: int16
    boundingShapeExtentsY* {.importc: "bounding_shape_extents_y".}: int16
    boundingShapeExtentsWidth* {.importc: "bounding_shape_extents_width".}: uint16
    boundingShapeExtentsHeight* {.importc: "bounding_shape_extents_height".}: uint16
    clipShapeExtentsX* {.importc: "clip_shape_extents_x".}: int16
    clipShapeExtentsY* {.importc: "clip_shape_extents_y".}: int16
    clipShapeExtentsWidth* {.importc: "clip_shape_extents_width".}: uint16
    clipShapeExtentsHeight* {.importc: "clip_shape_extents_height".}: uint16

  XcbShapeSelectInputRequest* {.importc: "xcb_shape_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    destinationWindow* {.importc: "destination_window".}: XcbWindow
    enable*: uint8
    pad0: array[3, uint8]

  XcbShapeInputSelectedCookie* {.importc: "xcb_shape_input_selected_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShapeInputSelectedRequest* {.importc: "xcb_shape_input_selected_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    destinationWindow* {.importc: "destination_window".}: XcbWindow

  XcbShapeInputSelectedReply* {.importc: "xcb_shape_input_selected_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    enabled*: uint8
    sequence*: uint16
    length*: uint32

  XcbShapeGetRectanglesCookie* {.importc: "xcb_shape_get_rectangles_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbShapeGetRectanglesRequest* {.importc: "xcb_shape_get_rectangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    sourceKind* {.importc: "source_kind".}: XcbShapeKind
    pad0: array[3, uint8]

  XcbShapeGetRectanglesReply* {.importc: "xcb_shape_get_rectangles_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    ordering*: uint8
    sequence*: uint16
    length*: uint32
    rectanglesLen* {.importc: "rectangles_len".}: uint32
    pad0: array[20, uint8]

{.passl: "-lxcb-shape".}
{.push cdecl.}

proc next*(i: ptr XcbShapeOpIterator) {.importc: "xcb_shape_op_next".}
proc iterEnd*(i: XcbShapeOpIterator): XcbGenericIterator {.importc: "xcb_shape_op_end".}
proc next*(i: ptr XcbShapeKindIterator) {.importc: "xcb_shape_kind_next".}
proc iterEnd*(i: XcbShapeKindIterator): XcbGenericIterator {.importc: "xcb_shape_kind_end".}
proc shapeQueryVersion*(c: ptr XcbConnection): XcbShapeQueryVersionCookie {.importc: "xcb_shape_query_version".}
proc shapeQueryVersionUnchecked*(c: ptr XcbConnection): XcbShapeQueryVersionCookie {.importc: "xcb_shape_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShapeQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbShapeQueryVersionReply {.importc: "xcb_shape_query_version_reply".}
proc rectanglesSizeof*(buffer: pointer; rectangles_len: uint32): cint {.importc: "xcb_shape_rectangles_sizeof".}
proc rectanglesChecked*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; ordering: uint8; destination_window: XcbWindow; x_offset: int16; y_offset: int16; rectangles_len: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_shape_rectangles_checked".}
proc rectangles*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; ordering: uint8; destination_window: XcbWindow; x_offset: int16; y_offset: int16; rectangles_len: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_shape_rectangles".}
proc rectangles*(R: ptr XcbShapeRectanglesRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_shape_rectangles_rectangles".}
proc rectanglesLength*(R: ptr XcbShapeRectanglesRequest): cint {.importc: "xcb_shape_rectangles_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbShapeRectanglesRequest): XcbRectangleIterator {.importc: "xcb_shape_rectangles_rectangles_iterator".}
proc maskChecked*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16; source_bitmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_shape_mask_checked".}
proc mask*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16; source_bitmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_shape_mask".}
proc combineChecked*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; source_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16; source_window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_shape_combine_checked".}
proc combine*(c: ptr XcbConnection; operation: XcbShapeOp; destination_kind: XcbShapeKind; source_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16; source_window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_shape_combine".}
proc offsetChecked*(c: ptr XcbConnection; destination_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16): XcbVoidCookie {.discardable, importc: "xcb_shape_offset_checked".}
proc offset*(c: ptr XcbConnection; destination_kind: XcbShapeKind; destination_window: XcbWindow; x_offset: int16; y_offset: int16): XcbVoidCookie {.discardable, importc: "xcb_shape_offset".}
proc queryExtents*(c: ptr XcbConnection; destination_window: XcbWindow): XcbShapeQueryExtentsCookie {.importc: "xcb_shape_query_extents".}
proc queryExtentsUnchecked*(c: ptr XcbConnection; destination_window: XcbWindow): XcbShapeQueryExtentsCookie {.importc: "xcb_shape_query_extents_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShapeQueryExtentsCookie; e: ptr ptr XcbGenericError): ptr XcbShapeQueryExtentsReply {.importc: "xcb_shape_query_extents_reply".}
proc shapeSelectInputChecked*(c: ptr XcbConnection; destination_window: XcbWindow; enable: uint8): XcbVoidCookie {.discardable, importc: "xcb_shape_select_input_checked".}
proc shapeSelectInput*(c: ptr XcbConnection; destination_window: XcbWindow; enable: uint8): XcbVoidCookie {.discardable, importc: "xcb_shape_select_input".}
proc shapeInputSelected*(c: ptr XcbConnection; destination_window: XcbWindow): XcbShapeInputSelectedCookie {.importc: "xcb_shape_input_selected".}
proc shapeInputSelectedUnchecked*(c: ptr XcbConnection; destination_window: XcbWindow): XcbShapeInputSelectedCookie {.importc: "xcb_shape_input_selected_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbShapeInputSelectedCookie; e: ptr ptr XcbGenericError): ptr XcbShapeInputSelectedReply {.importc: "xcb_shape_input_selected_reply".}
proc getRectanglesSizeof*(buffer: pointer): cint {.importc: "xcb_shape_get_rectangles_sizeof".}
proc getRectangles*(c: ptr XcbConnection; window: XcbWindow; source_kind: XcbShapeKind): XcbShapeGetRectanglesCookie {.importc: "xcb_shape_get_rectangles".}
proc getRectanglesUnchecked*(c: ptr XcbConnection; window: XcbWindow; source_kind: XcbShapeKind): XcbShapeGetRectanglesCookie {.importc: "xcb_shape_get_rectangles_unchecked".}
proc getRectangles*(R: ptr XcbShapeGetRectanglesReply): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_shape_get_rectangles_rectangles".}
proc getLength*(R: ptr XcbShapeGetRectanglesReply): cint {.importc: "xcb_shape_get_rectangles_rectangles_length".}
proc getIterator*(R: ptr XcbShapeGetRectanglesReply): XcbRectangleIterator {.importc: "xcb_shape_get_rectangles_rectangles_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbShapeGetRectanglesCookie; e: ptr ptr XcbGenericError): ptr XcbShapeGetRectanglesReply {.importc: "xcb_shape_get_rectangles_reply".}

{.pop.}
{.pop.}
