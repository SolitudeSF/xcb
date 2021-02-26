import ./xcb, ./render, ./shape

const
  xcbXfixesMajorVersion* = 5
  xcbXfixesMinorVersion* = 0
  xcbXfixesQueryVersion* = 0
  xcbXfixesChangeSaveSet* = 1
  xcbXfixesSelectionNotify* = 0
  xcbXfixesSelectSelectionInput* = 2
  xcbXfixesCursorNotify* = 1
  xcbXfixesSelectCursorInput* = 3
  xcbXfixesGetCursorImage* = 4
  xcbXfixesBadRegion* = 0
  xcbXfixesCreateRegion* = 5
  xcbXfixesCreateRegionFromBitmap* = 6
  xcbXfixesCreateRegionFromWindow* = 7
  xcbXfixesCreateRegionFromGc* = 8
  xcbXfixesCreateRegionFromPicture* = 9
  xcbXfixesDestroyRegion* = 10
  xcbXfixesSetRegion* = 11
  xcbXfixesCopyRegion* = 12
  xcbXfixesUnionRegion* = 13
  xcbXfixesIntersectRegion* = 14
  xcbXfixesSubtractRegion* = 15
  xcbXfixesInvertRegion* = 16
  xcbXfixesTranslateRegion* = 17
  xcbXfixesRegionExtents* = 18
  xcbXfixesFetchRegion* = 19
  xcbXfixesSetGcClipRegion* = 20
  xcbXfixesSetWindowShapeRegion* = 21
  xcbXfixesSetPictureClipRegion* = 22
  xcbXfixesSetCursorName* = 23
  xcbXfixesGetCursorName* = 24
  xcbXfixesGetCursorImageAndName* = 25
  xcbXfixesChangeCursor* = 26
  xcbXfixesChangeCursorByName* = 27
  xcbXfixesExpandRegion* = 28
  xcbXfixesHideCursor* = 29
  xcbXfixesShowCursor* = 30
  xcbXfixesCreatePointerBarrier* = 31
  xcbXfixesDeletePointerBarrier* = 32

{.push header: "xcb/xfixes.h".}

var xcbXfixesId* {.extern: "xcb_xfixes_id".}: XcbExtension

type
  XcbXfixesBarrier* {.importc: "xcb_xfixes_barrier_t".} = distinct uint32
  XcbXfixesRegion* {.importc: "xcb_xfixes_region_t".} = distinct uint32

  XcbXfixesQueryVersionCookie* {.importc: "xcb_xfixes_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXfixesQueryVersionRequest* {.importc: "xcb_xfixes_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint32
    clientMinorVersion* {.importc: "client_minor_version".}: uint32

  XcbXfixesQueryVersionReply* {.importc: "xcb_xfixes_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbXfixesSaveSetMode* {.importc: "xcb_xfixes_save_set_mode_t".} = enum
    xcbXfixesSaveSetModeInsert = 0, xcbXfixesSaveSetModeDelete = 1

  XcbXfixesSaveSetTarget* {.importc: "xcb_xfixes_save_set_target_t".} = enum
    xcbXfixesSaveSetTargetNearest = 0, xcbXfixesSaveSetTargetRoot = 1

  XcbXfixesSaveSetMapping* {.importc: "xcb_xfixes_save_set_mapping_t".} = enum
    xcbXfixesSaveSetMappingMap = 0, xcbXfixesSaveSetMappingUnmap = 1

  XcbXfixesChangeSaveSetRequest* {.importc: "xcb_xfixes_change_save_set_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    mode*: uint8
    target*: uint8
    map*: uint8
    pad0: uint8
    window*: XcbWindow

  XcbXfixesSelectionEvent* {.importc: "xcb_xfixes_selection_event_t".} = enum
    xcbXfixesSelectionEventSetSelectionOwner = 0,
    xcbXfixesSelectionEventSelectionWindowDestroy = 1,
    xcbXfixesSelectionEventSelectionClientClose = 2

  XcbXfixesSelectionEventMask* {.importc: "xcb_xfixes_selection_event_mask_t".} = enum
    xcbXfixesSelectionEventMaskSetSelectionOwner = 1,
    xcbXfixesSelectionEventMaskSelectionWindowDestroy = 2,
    xcbXfixesSelectionEventMaskSelectionClientClose = 4

  XcbXfixesSelectionNotifyEvent* {.importc: "xcb_xfixes_selection_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    subtype*: uint8
    sequence*: uint16
    window*: XcbWindow
    owner*: XcbWindow
    selection*: XcbAtom
    timestamp*: XcbTimestamp
    selectionTimestamp* {.importc: "selection_timestamp".}: XcbTimestamp
    pad0: array[8, uint8]

  XcbXfixesSelectSelectionInputRequest* {.importc: "xcb_xfixes_select_selection_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    selection*: XcbAtom
    eventMask* {.importc: "event_mask".}: uint32

  XcbXfixesCursorNotify* {.importc: "xcb_xfixes_cursor_notify_t".} = enum
    xcbXfixesCursorNotifyDisplayCursor = 0

  XcbXfixesCursorNotifyMask* {.importc: "xcb_xfixes_cursor_notify_mask_t".} = enum
    xcbXfixesCursorNotifyMaskDisplayCursor = 1

  XcbXfixesCursorNotifyEvent* {.importc: "xcb_xfixes_cursor_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    subtype*: uint8
    sequence*: uint16
    window*: XcbWindow
    cursorSerial* {.importc: "cursor_serial".}: uint32
    timestamp*: XcbTimestamp
    name*: XcbAtom
    pad0: array[12, uint8]

  XcbXfixesSelectCursorInputRequest* {.importc: "xcb_xfixes_select_cursor_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    eventMask* {.importc: "event_mask".}: uint32

  XcbXfixesGetCursorImageCookie* {.importc: "xcb_xfixes_get_cursor_image_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXfixesGetCursorImageRequest* {.importc: "xcb_xfixes_get_cursor_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXfixesGetCursorImageReply* {.importc: "xcb_xfixes_get_cursor_image_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    xhot*: uint16
    yhot*: uint16
    cursorSerial* {.importc: "cursor_serial".}: uint32
    pad1: array[8, uint8]

  XcbXfixesRegionIterator* {.importc: "xcb_xfixes_region_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXfixesRegion]
    rem*: cint
    index*: cint

  XcbXfixesBadRegionError* {.importc: "xcb_xfixes_bad_region_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbXfixesRegionEnum* {.importc: "xcb_xfixes_region_enum_t".} = enum
    xcbXfixesRegionNone = 0

  XcbXfixesCreateRegionRequest* {.importc: "xcb_xfixes_create_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion

  XcbXfixesCreateRegionFromBitmapRequest* {.importc: "xcb_xfixes_create_region_from_bitmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    bitmap*: XcbPixmap

  XcbXfixesCreateRegionFromWindowRequest* {.importc: "xcb_xfixes_create_region_from_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    window*: XcbWindow
    kind*: XcbShapeKind
    pad0: array[3, uint8]

  XcbXfixesCreateRegionFromGcRequest* {.importc: "xcb_xfixes_create_region_from_gcrequest_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    gc*: XcbGcontext

  XcbXfixesCreateRegionFromPictureRequest* {.importc: "xcb_xfixes_create_region_from_picture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    picture*: XcbRenderPicture

  XcbXfixesDestroyRegionRequest* {.importc: "xcb_xfixes_destroy_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion

  XcbXfixesSetRegionRequest* {.importc: "xcb_xfixes_set_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion

  XcbXfixesCopyRegionRequest* {.importc: "xcb_xfixes_copy_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source*: XcbXfixesRegion
    destination*: XcbXfixesRegion

  XcbXfixesUnionRegionRequest* {.importc: "xcb_xfixes_union_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source1*: XcbXfixesRegion
    source2*: XcbXfixesRegion
    destination*: XcbXfixesRegion

  XcbXfixesIntersectRegionRequest* {.importc: "xcb_xfixes_intersect_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source1*: XcbXfixesRegion
    source2*: XcbXfixesRegion
    destination*: XcbXfixesRegion

  XcbXfixesSubtractRegionRequest* {.importc: "xcb_xfixes_subtract_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source1*: XcbXfixesRegion
    source2*: XcbXfixesRegion
    destination*: XcbXfixesRegion

  XcbXfixesInvertRegionRequest* {.importc: "xcb_xfixes_invert_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source*: XcbXfixesRegion
    bounds*: XcbRectangle
    destination*: XcbXfixesRegion

  XcbXfixesTranslateRegionRequest* {.importc: "xcb_xfixes_translate_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    dx*: int16
    dy*: int16

  XcbXfixesRegionExtentsRequest* {.importc: "xcb_xfixes_region_extents_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source*: XcbXfixesRegion
    destination*: XcbXfixesRegion

  XcbXfixesFetchRegionCookie* {.importc: "xcb_xfixes_fetch_region_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXfixesFetchRegionRequest* {.importc: "xcb_xfixes_fetch_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion

  XcbXfixesFetchRegionReply* {.importc: "xcb_xfixes_fetch_region_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    extents*: XcbRectangle
    pad1: array[16, uint8]

  XcbXfixesSetGcClipRegionRequest* {.importc: "xcb_xfixes_set_gcclip_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    gc*: XcbGcontext
    region*: XcbXfixesRegion
    xOrigin* {.importc: "x_origin".}: int16
    yOrigin* {.importc: "y_origin".}: int16

  XcbXfixesSetWindowShapeRegionRequest* {.importc: "xcb_xfixes_set_window_shape_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    dest*: XcbWindow
    destKind* {.importc: "dest_kind".}: XcbShapeKind
    pad0: array[3, uint8]
    xOffset* {.importc: "x_offset".}: int16
    yOffset* {.importc: "y_offset".}: int16
    region*: XcbXfixesRegion

  XcbXfixesSetPictureClipRegionRequest* {.importc: "xcb_xfixes_set_picture_clip_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    region*: XcbXfixesRegion
    xOrigin* {.importc: "x_origin".}: int16
    yOrigin* {.importc: "y_origin".}: int16

  XcbXfixesSetCursorNameRequest* {.importc: "xcb_xfixes_set_cursor_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cursor*: XcbCursor
    nbytes*: uint16
    pad0: array[2, uint8]

  XcbXfixesGetCursorNameCookie* {.importc: "xcb_xfixes_get_cursor_name_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXfixesGetCursorNameRequest* {.importc: "xcb_xfixes_get_cursor_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cursor*: XcbCursor

  XcbXfixesGetCursorNameReply* {.importc: "xcb_xfixes_get_cursor_name_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    atom*: XcbAtom
    nbytes*: uint16
    pad1: array[18, uint8]

  XcbXfixesGetCursorImageAndNameCookie* {.importc: "xcb_xfixes_get_cursor_image_and_name_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXfixesGetCursorImageAndNameRequest* {.importc: "xcb_xfixes_get_cursor_image_and_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXfixesGetCursorImageAndNameReply* {.importc: "xcb_xfixes_get_cursor_image_and_name_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    xhot*: uint16
    yhot*: uint16
    cursorSerial* {.importc: "cursor_serial".}: uint32
    cursorAtom* {.importc: "cursor_atom".}: XcbAtom
    nbytes*: uint16
    pad1: array[2, uint8]

  XcbXfixesChangeCursorRequest* {.importc: "xcb_xfixes_change_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source*: XcbCursor
    destination*: XcbCursor

  XcbXfixesChangeCursorByNameRequest* {.importc: "xcb_xfixes_change_cursor_byname_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    src*: XcbCursor
    nbytes*: uint16
    pad0: array[2, uint8]

  XcbXfixesExpandRegionRequest* {.importc: "xcb_xfixes_expand_region_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    source*: XcbXfixesRegion
    destination*: XcbXfixesRegion
    left*: uint16
    right*: uint16
    top*: uint16
    bottom*: uint16

  XcbXfixesHideCursorRequest* {.importc: "xcb_xfixes_hide_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXfixesShowCursorRequest* {.importc: "xcb_xfixes_show_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXfixesBarrierIterator* {.importc: "xcb_xfixes_barrier_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXfixesBarrier]
    rem*: cint
    index*: cint

  XcbXfixesBarrierDirections* {.importc: "xcb_xfixes_barrier_directions_t".} = enum
    xcbXfixesBarrierDirectionsPositiveX = 1,
    xcbXfixesBarrierDirectionsPositiveY = 2,
    xcbXfixesBarrierDirectionsNegativeX = 4,
    xcbXfixesBarrierDirectionsNegativeY = 8

  XcbXfixesCreatePointerBarrierRequest* {.importc: "xcb_xfixes_create_pointer_barrier_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    barrier*: XcbXfixesBarrier
    window*: XcbWindow
    x1*: uint16
    y1*: uint16
    x2*: uint16
    y2*: uint16
    directions*: uint32
    pad0: array[2, uint8]
    numDevices* {.importc: "num_devices".}: uint16

  XcbXfixesDeletePointerBarrierRequest* {.importc: "xcb_xfixes_delete_pointer_barrier_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    barrier*: XcbXfixesBarrier

{.passl: "-lxcb-xfixes".}
{.push cdecl.}

proc xfixesQueryVersion*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbXfixesQueryVersionCookie {.importc: "xcb_xfixes_query_version".}
proc xfixesQueryVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbXfixesQueryVersionCookie {.importc: "xcb_xfixes_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXfixesQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXfixesQueryVersionReply {.importc: "xcb_xfixes_query_version_reply".}
proc changeSaveSetChecked*(c: ptr XcbConnection; mode: uint8; target: uint8; map: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_save_set_checked".}
proc changeSaveSet*(c: ptr XcbConnection; mode: uint8; target: uint8; map: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_save_set".}
proc selectSelectionInputChecked*(c: ptr XcbConnection; window: XcbWindow; selection: XcbAtom; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_xfixes_select_selection_input_checked".}
proc selectSelectionInput*(c: ptr XcbConnection; window: XcbWindow; selection: XcbAtom; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_xfixes_select_selection_input".}
proc selectCursorInputChecked*(c: ptr XcbConnection; window: XcbWindow; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_xfixes_select_cursor_input_checked".}
proc selectCursorInput*(c: ptr XcbConnection; window: XcbWindow; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_xfixes_select_cursor_input".}
proc getCursorImageSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_get_cursor_image_sizeof".}
proc getCursorImage*(c: ptr XcbConnection): XcbXfixesGetCursorImageCookie {.importc: "xcb_xfixes_get_cursor_image".}
proc getCursorImageUnchecked*(c: ptr XcbConnection): XcbXfixesGetCursorImageCookie {.importc: "xcb_xfixes_get_cursor_image_unchecked".}
proc cursorImage*(R: ptr XcbXfixesGetCursorImageReply): ptr uint32 {.importc: "xcb_xfixes_get_cursor_image_cursor_image".}
proc cursorImageLength*(R: ptr XcbXfixesGetCursorImageReply): cint {.importc: "xcb_xfixes_get_cursor_image_cursor_image_length".}
proc iterEnd*(R: ptr XcbXfixesGetCursorImageReply): XcbGenericIterator {.importc: "xcb_xfixes_get_cursor_image_cursor_image_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXfixesGetCursorImageCookie; e: ptr ptr XcbGenericError): ptr XcbXfixesGetCursorImageReply {.importc: "xcb_xfixes_get_cursor_image_reply".}
proc next*(i: ptr XcbXfixesRegionIterator) {.importc: "xcb_xfixes_region_next".}
proc iterEnd*(i: XcbXfixesRegionIterator): XcbGenericIterator {.importc: "xcb_xfixes_region_end".}
proc createRegionSizeof*(buffer: pointer; rectanglesLen: uint32): cint {.importc: "xcb_xfixes_create_region_sizeof".}
proc createRegionChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_checked".}
proc createRegion*(c: ptr XcbConnection; region: XcbXfixesRegion; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region".}
proc rectangles*(R: ptr XcbXfixesCreateRegionRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_xfixes_create_region_rectangles".}
proc rectanglesLength*(R: ptr XcbXfixesCreateRegionRequest): cint {.importc: "xcb_xfixes_create_region_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbXfixesCreateRegionRequest): XcbRectangleIterator {.importc: "xcb_xfixes_create_region_rectangles_iterator".}
proc createRegionChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; bitmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_bitmap_checked".}
proc createRegion*(c: ptr XcbConnection; region: XcbXfixesRegion; bitmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_bitmap".}
proc createRegionChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; window: XcbWindow; kind: XcbShapeKind): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_window_checked".}
proc createRegion*(c: ptr XcbConnection; region: XcbXfixesRegion; window: XcbWindow; kind: XcbShapeKind): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_window".}
proc createRegionChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; gc: XcbGcontext): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_gc_checked".}
proc createRegion*(c: ptr XcbConnection; region: XcbXfixesRegion; gc: XcbGcontext): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_gc".}
proc createRegionChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; picture: XcbRenderPicture): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_picture_checked".}
proc createRegion*(c: ptr XcbConnection; region: XcbXfixesRegion; picture: XcbRenderPicture): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_region_from_picture".}
proc destroyChecked*(c: ptr XcbConnection; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_destroy_region_checked".}
proc destroy*(c: ptr XcbConnection; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_destroy_region".}
proc setRegionSizeof*(buffer: pointer; rectanglesLen: uint32): cint {.importc: "xcb_xfixes_set_region_sizeof".}
proc setChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_region_checked".}
proc set*(c: ptr XcbConnection; region: XcbXfixesRegion; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_region".}
proc rectangles*(R: ptr XcbXfixesSetRegionRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_xfixes_set_region_rectangles".}
proc rectanglesLength*(R: ptr XcbXfixesSetRegionRequest): cint {.importc: "xcb_xfixes_set_region_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbXfixesSetRegionRequest): XcbRectangleIterator {.importc: "xcb_xfixes_set_region_rectangles_iterator".}
proc copyChecked*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_copy_region_checked".}
proc copy*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_copy_region".}
proc unionChecked*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_union_region_checked".}
proc union*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_union_region".}
proc intersectChecked*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_intersect_region_checked".}
proc intersect*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_intersect_region".}
proc subtractChecked*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_subtract_region_checked".}
proc subtract*(c: ptr XcbConnection; source1: XcbXfixesRegion; source2: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_subtract_region".}
proc invertChecked*(c: ptr XcbConnection; source: XcbXfixesRegion; bounds: XcbRectangle; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_invert_region_checked".}
proc invert*(c: ptr XcbConnection; source: XcbXfixesRegion; bounds: XcbRectangle; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_invert_region".}
proc translateChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; dx: int16; dy: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_translate_region_checked".}
proc translate*(c: ptr XcbConnection; region: XcbXfixesRegion; dx: int16; dy: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_translate_region".}
proc extentsChecked*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_region_extents_checked".}
proc extents*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_region_extents".}
proc fetchRegionSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_fetch_region_sizeof".}
proc fetch*(c: ptr XcbConnection; region: XcbXfixesRegion): XcbXfixesFetchRegionCookie {.importc: "xcb_xfixes_fetch_region".}
proc fetchUnchecked*(c: ptr XcbConnection; region: XcbXfixesRegion): XcbXfixesFetchRegionCookie {.importc: "xcb_xfixes_fetch_region_unchecked".}
proc rectangles*(R: ptr XcbXfixesFetchRegionReply): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_xfixes_fetch_region_rectangles".}
proc rectanglesLength*(R: ptr XcbXfixesFetchRegionReply): cint {.importc: "xcb_xfixes_fetch_region_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbXfixesFetchRegionReply): XcbRectangleIterator {.importc: "xcb_xfixes_fetch_region_rectangles_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXfixesFetchRegionCookie; e: ptr ptr XcbGenericError): ptr XcbXfixesFetchRegionReply {.importc: "xcb_xfixes_fetch_region_reply".}
proc setGcClipRegionChecked*(c: ptr XcbConnection; gc: XcbGcontext; region: XcbXfixesRegion; xOrigin: int16; yOrigin: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_gc_clip_region_checked".}
proc setGcClipRegion*(c: ptr XcbConnection; gc: XcbGcontext; region: XcbXfixesRegion; xOrigin: int16; yOrigin: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_gc_clip_region".}
proc setWindowShapeRegionChecked*(c: ptr XcbConnection; dest: XcbWindow; destKind: XcbShapeKind; xOffset: int16; yOffset: int16; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_window_shape_region_checked".}
proc setWindowShapeRegion*(c: ptr XcbConnection; dest: XcbWindow; destKind: XcbShapeKind; xOffset: int16; yOffset: int16; region: XcbXfixesRegion): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_window_shape_region".}
proc setPictureClipRegionChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; region: XcbXfixesRegion; xOrigin: int16; yOrigin: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_picture_clip_region_checked".}
proc setPictureClipRegion*(c: ptr XcbConnection; picture: XcbRenderPicture; region: XcbXfixesRegion; xOrigin: int16; yOrigin: int16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_picture_clip_region".}
proc setCursorNameSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_set_cursor_name_sizeof".}
proc setCursorNameChecked*(c: ptr XcbConnection; cursor: XcbCursor; nbytes: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_cursor_name_checked".}
proc setCursorName*(c: ptr XcbConnection; cursor: XcbCursor; nbytes: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_xfixes_set_cursor_name".}
proc name*(R: ptr XcbXfixesSetCursorNameRequest): ptr UncheckedArray[char] {.importc: "xcb_xfixes_set_cursor_name_name".}
proc nameLength*(R: ptr XcbXfixesSetCursorNameRequest): cint {.importc: "xcb_xfixes_set_cursor_name_name_length".}
proc nameEnd*(R: ptr XcbXfixesSetCursorNameRequest): XcbGenericIterator {.importc: "xcb_xfixes_set_cursor_name_name_end".}
proc getCursorNameSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_get_cursor_name_sizeof".}
proc getCursorName*(c: ptr XcbConnection; cursor: XcbCursor): XcbXfixesGetCursorNameCookie {.importc: "xcb_xfixes_get_cursor_name".}
proc getCursorNameUnchecked*(c: ptr XcbConnection; cursor: XcbCursor): XcbXfixesGetCursorNameCookie {.importc: "xcb_xfixes_get_cursor_name_unchecked".}
proc name*(R: ptr XcbXfixesGetCursorNameReply): ptr UncheckedArray[char] {.importc: "xcb_xfixes_get_cursor_name_name".}
proc nameLength*(R: ptr XcbXfixesGetCursorNameReply): cint {.importc: "xcb_xfixes_get_cursor_name_name_length".}
proc nameEnd*(R: ptr XcbXfixesGetCursorNameReply): XcbGenericIterator {.importc: "xcb_xfixes_get_cursor_name_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXfixesGetCursorNameCookie; e: ptr ptr XcbGenericError): ptr XcbXfixesGetCursorNameReply {.importc: "xcb_xfixes_get_cursor_name_reply".}
proc getCursorImageAndNameSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_get_cursor_image_and_name_sizeof".}
proc getCursorImageAndName*(c: ptr XcbConnection): XcbXfixesGetCursorImageAndNameCookie {.importc: "xcb_xfixes_get_cursor_image_and_name".}
proc getCursorImageAndNameUnchecked*(c: ptr XcbConnection): XcbXfixesGetCursorImageAndNameCookie {.importc: "xcb_xfixes_get_cursor_image_and_name_unchecked".}
proc cursorImage*(R: ptr XcbXfixesGetCursorImageAndNameReply): ptr UncheckedArray[uint32] {.importc: "xcb_xfixes_get_cursor_image_and_name_cursor_image".}
proc cursorImageLength*(R: ptr XcbXfixesGetCursorImageAndNameReply): cint {.importc: "xcb_xfixes_get_cursor_image_and_name_cursor_image_length".}
proc cursorImageEnd*(R: ptr XcbXfixesGetCursorImageAndNameReply): XcbGenericIterator {.importc: "xcb_xfixes_get_cursor_image_and_name_cursor_image_end".}
proc name*(R: ptr XcbXfixesGetCursorImageAndNameReply): ptr UncheckedArray[char] {.importc: "xcb_xfixes_get_cursor_image_and_name_name".}
proc nameLength*(R: ptr XcbXfixesGetCursorImageAndNameReply): cint {.importc: "xcb_xfixes_get_cursor_image_and_name_name_length".}
proc nameEnd*(R: ptr XcbXfixesGetCursorImageAndNameReply): XcbGenericIterator {.importc: "xcb_xfixes_get_cursor_image_and_name_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXfixesGetCursorImageAndNameCookie; e: ptr ptr XcbGenericError): ptr XcbXfixesGetCursorImageAndNameReply {.importc: "xcb_xfixes_get_cursor_image_and_name_reply".}
proc changeCursorChecked*(c: ptr XcbConnection; source: XcbCursor; destination: XcbCursor): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_cursor_checked".}
proc changeCursor*(c: ptr XcbConnection; source: XcbCursor; destination: XcbCursor): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_cursor".}
proc changeCursorByNameSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_change_cursor_by_name_sizeof".}
proc changeCursorByNameChecked*(c: ptr XcbConnection; src: XcbCursor; nbytes: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_cursor_by_name_checked".}
proc changeCursorByName*(c: ptr XcbConnection; src: XcbCursor; nbytes: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_xfixes_change_cursor_by_name".}
proc name*(R: ptr XcbXfixesChangeCursorByNameRequest): ptr UncheckedArray[char] {.importc: "xcb_xfixes_change_cursor_by_name_name".}
proc nameLength*(R: ptr XcbXfixesChangeCursorByNameRequest): cint {.importc: "xcb_xfixes_change_cursor_by_name_name_length".}
proc iterEnd*(R: ptr XcbXfixesChangeCursorByNameRequest): XcbGenericIterator {.importc: "xcb_xfixes_change_cursor_by_name_name_end".}
proc expandRegionChecked*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion; left: uint16; right: uint16; top: uint16; bottom: uint16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_expand_region_checked".}
proc expandRegion*(c: ptr XcbConnection; source: XcbXfixesRegion; destination: XcbXfixesRegion; left: uint16; right: uint16; top: uint16; bottom: uint16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_expand_region".}
proc hideCursorChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_hide_cursor_checked".}
proc hideCursor*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_hide_cursor".}
proc showCursorChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_show_cursor_checked".}
proc showCursor*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xfixes_show_cursor".}
proc next*(i: ptr XcbXfixesBarrierIterator) {.importc: "xcb_xfixes_barrier_next".}
proc iterEnd*(i: XcbXfixesBarrierIterator): XcbGenericIterator {.importc: "xcb_xfixes_barrier_end".}
proc createPointerBarrierSizeof*(buffer: pointer): cint {.importc: "xcb_xfixes_create_pointer_barrier_sizeof".}
proc createPointerBarrierChecked*(c: ptr XcbConnection; barrier: XcbXfixesBarrier; window: XcbWindow; x1: uint16; y1: uint16; x2: uint16; y2: uint16; directions: uint32; numDevices: uint16; devices: ptr uint16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_pointer_barrier_checked".}
proc createPointerBarrier*(c: ptr XcbConnection; barrier: XcbXfixesBarrier; window: XcbWindow; x1: uint16; y1: uint16; x2: uint16; y2: uint16; directions: uint32; numDevices: uint16; devices: ptr uint16): XcbVoidCookie {.discardable, importc: "xcb_xfixes_create_pointer_barrier".}
proc devices*(R: ptr XcbXfixesCreatePointerBarrierRequest): ptr UncheckedArray[uint16] {.importc: "xcb_xfixes_create_pointer_barrier_devices".}
proc devicesLength*(R: ptr XcbXfixesCreatePointerBarrierRequest): cint {.importc: "xcb_xfixes_create_pointer_barrier_devices_length".}
proc devicesEnd*(R: ptr XcbXfixesCreatePointerBarrierRequest): XcbGenericIterator {.importc: "xcb_xfixes_create_pointer_barrier_devices_end".}
proc deleteChecked*(c: ptr XcbConnection; barrier: XcbXfixesBarrier): XcbVoidCookie {.discardable, importc: "xcb_xfixes_delete_pointer_barrier_checked".}
proc delete*(c: ptr XcbConnection; barrier: XcbXfixesBarrier): XcbVoidCookie {.discardable, importc: "xcb_xfixes_delete_pointer_barrier".}

{.pop.}
{.pop.}
