import ./xcb, ./shm

const
  xcbXvMajorVersion* = 2
  xcbXvMinorVersion* = 2
  xcbXvBadPort* = 0
  xcbXvBadEncoding* = 1
  xcbXvBadControl* = 2
  xcbXvVideoNotify* = 0
  xcbXvPortNotify* = 1
  xcbXvQueryExtension* = 0
  xcbXvQueryAdaptors* = 1
  xcbXvQueryEncodings* = 2
  xcbXvGrabPort* = 3
  xcbXvUngrabPort* = 4
  xcbXvPutVideo* = 5
  xcbXvPutStill* = 6
  xcbXvGetVideo* = 7
  xcbXvGetStill* = 8
  xcbXvStopVideo* = 9
  xcbXvSelectVideoNotify* = 10
  xcbXvSelectPortNotify* = 11
  xcbXvQueryBestSize* = 12
  xcbXvSetPortAttribute* = 13
  xcbXvGetPortAttribute* = 14
  xcbXvQueryPortAttributes* = 15
  xcbXvListImageFormats* = 16
  xcbXvQueryImageAttributes* = 17
  xcbXvPutImage* = 18
  xcbXvShmPutImage* = 19

{.passl: "-lxcb-xv".}
{.push header: "xcb/xv.h".}

var xcbXvId* {.extern: "xcb_xv_id".}: XcbExtension

type
  XcbXvPort* {.importc: "xcb_xv_port_t".} = distinct uint32
  XcbXvEncoding* {.importc: "xcb_xv_encoding_t".} = distinct uint32

  XcbXvPortIterator* {.importc: "xcb_xv_port_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvPort]
    rem*: cint
    index*: cint

  XcbXvEncodingIterator* {.importc: "xcb_xv_encoding_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvEncoding]
    rem*: cint
    index*: cint

  XcbXvType* {.importc: "xcb_xv_type_t".} = enum
    xcbXvTypeInputMask = 1, xcbXvTypeOutputMask = 2,
    xcbXvTypeVideoMask = 4, xcbXvTypeStillMask = 8,
    xcbXvTypeImageMask = 16

  XcbXvImageFormatInfoType* {.importc: "xcb_xv_image_format_info_type_t".} = enum
    xcbXvImageFormatInfoTypeRgb = 0, xcbXvImageFormatInfoTypeYuv = 1

  XcbXvImageFormatInfoFormat* {.importc: "xcb_xv_image_format_info_format_t".} = enum
    xcbXvImageFormatInfoFormatPacked = 0,
    xcbXvImageFormatInfoFormatPlanar = 1

  XcbXvAttributeFlag* {.importc: "xcb_xv_attribute_flag_t".} = enum
    xcbXvAttributeFlagGettable = 1, xcbXvAttributeFlagSettable = 2

  XcbXvVideoNotifyReason* {.importc: "xcb_xv_video_notify_reason_t".} = enum
    xcbXvVideoNotifyReasonStarted = 0, xcbXvVideoNotifyReasonStopped = 1,
    xcbXvVideoNotifyReasonBusy = 2, xcbXvVideoNotifyReasonPreempted = 3,
    xcbXvVideoNotifyReasonHardError = 4

  XcbXvScanlineOrder* {.importc: "xcb_xv_scanline_order_t".} = enum
    xcbXvScanlineOrderTopToBottom = 0,
    xcbXvScanlineOrderBottomToTop = 1

  XcbXvGrabPortStatus* {.importc: "xcb_xv_grab_port_status_t".} = enum
    xcbXvGrabPortStatusSuccess = 0, xcbXvGrabPortStatusBadExtension = 1,
    xcbXvGrabPortStatusAlreadyGrabbed = 2,
    xcbXvGrabPortStatusInvalidTime = 3,
    xcbXvGrabPortStatusBadReply = 4, xcbXvGrabPortStatusBadAlloc = 5

  XcbXvRational* {.importc: "xcb_xv_rational_t", bycopy.} = object
    numerator*: int32
    denominator*: int32

  XcbXvRationalIterator* {.importc: "xcb_xv_rational_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvRational]
    rem*: cint
    index*: cint

  XcbXvFormat* {.importc: "xcb_xv_format_t", bycopy.} = object
    visual*: XcbVisualid
    depth*: uint8
    pad0: array[3, uint8]

  XcbXvFormatIterator* {.importc: "xcb_xv_format_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvFormat]
    rem*: cint
    index*: cint

  XcbXvAdaptorInfo* {.importc: "xcb_xv_adaptor_info_t", bycopy.} = object
    baseId* {.importc: "base_id".}: XcbXvPort
    nameSize* {.importc: "name_size".}: uint16
    numPorts* {.importc: "num_ports".}: uint16
    numFormats* {.importc: "num_formats".}: uint16
    `type`*: uint8
    pad0: uint8

  XcbXvAdaptorInfoIterator* {.importc: "xcb_xv_adaptor_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvAdaptorInfo]
    rem*: cint
    index*: cint

  XcbXvEncodingInfo* {.importc: "xcb_xv_encoding_info_t", bycopy.} = object
    encoding*: XcbXvEncoding
    nameSize* {.importc: "name_size".}: uint16
    width*: uint16
    height*: uint16
    pad0: array[2, uint8]
    rate*: XcbXvRational

  XcbXvEncodingInfoIterator* {.importc: "xcb_xv_encoding_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvEncodingInfo]
    rem*: cint
    index*: cint

  XcbXvImage* {.importc: "xcb_xv_image_t", bycopy.} = object
    id*: uint32
    width*: uint16
    height*: uint16
    dataSize* {.importc: "data_size".}: uint32
    numPlanes* {.importc: "num_planes".}: uint32

  XcbXvImageIterator* {.importc: "xcb_xv_image_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvImage]
    rem*: cint
    index*: cint

  XcbXvAttributeInfo* {.importc: "xcb_xv_attribute_info_t", bycopy.} = object
    flags*: uint32
    min*: int32
    max*: int32
    size*: uint32

  XcbXvAttributeInfoIterator* {.importc: "xcb_xv_attribute_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvAttributeInfo]
    rem*: cint
    index*: cint

  XcbXvImageFormatInfo* {.importc: "xcb_xv_image_format_info_t", bycopy.} = object
    id*: uint32
    `type`*: uint8
    byteOrder* {.importc: "byte_order".}: uint8
    pad0: array[2, uint8]
    guid*: array[16, uint8]
    bpp*: uint8
    numPlanes* {.importc: "num_planes".}: uint8
    pad1: array[2, uint8]
    depth*: uint8
    pad2: array[3, uint8]
    redMask* {.importc: "red_mask".}: uint32
    greenMask* {.importc: "green_mask".}: uint32
    blueMask* {.importc: "blue_mask".}: uint32
    format*: uint8
    pad3: array[3, uint8]
    ySampleBits* {.importc: "y_sample_bits".}: uint32
    uSampleBits* {.importc: "u_sample_bits".}: uint32
    vSampleBits* {.importc: "v_sample_bits".}: uint32
    vhorzYPeriod* {.importc: "vhorz_y_period".}: uint32
    vhorzUPeriod* {.importc: "vhorz_u_period".}: uint32
    vhorzVPeriod* {.importc: "vhorz_v_period".}: uint32
    vvertYPeriod* {.importc: "vvert_y_period".}: uint32
    vvertUPeriod* {.importc: "vvert_u_period".}: uint32
    vvertVPeriod* {.importc: "vvert_v_period".}: uint32
    vcompOrder* {.importc: "vcomp_order".}: array[32, uint8]
    vscanlineOrder* {.importc: "vscanline_order".}: uint8
    pad4: array[11, uint8]

  XcbXvImageFormatInfoIterator* {.importc: "xcb_xv_image_format_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvImageFormatInfo]
    rem*: cint
    index*: cint

  XcbXvBadPortError* {.importc: "xcb_xv_bad_port_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbXvBadEncodingError* {.importc: "xcb_xv_bad_encoding_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbXvBadControlError* {.importc: "xcb_xv_bad_control_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbXvVideoNotifyEvent* {.importc: "xcb_xv_video_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    reason*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    drawable*: XcbDrawable
    port*: XcbXvPort

  XcbXvPortNotifyEvent* {.importc: "xcb_xv_port_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    time*: XcbTimestamp
    port*: XcbXvPort
    attribute*: XcbAtom
    value*: int32

  XcbXvQueryExtensionCookie* {.importc: "xcb_xv_query_extension_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryExtensionRequest* {.importc: "xcb_xv_query_extension_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXvQueryExtensionReply* {.importc: "xcb_xv_query_extension_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    major*: uint16
    minor*: uint16

  XcbXvQueryAdaptorsCookie* {.importc: "xcb_xv_query_adaptors_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryAdaptorsRequest* {.importc: "xcb_xv_query_adaptors_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXvQueryAdaptorsReply* {.importc: "xcb_xv_query_adaptors_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAdaptors* {.importc: "num_adaptors".}: uint16
    pad1: array[22, uint8]

  XcbXvQueryEncodingsCookie* {.importc: "xcb_xv_query_encodings_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryEncodingsRequest* {.importc: "xcb_xv_query_encodings_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort

  XcbXvQueryEncodingsReply* {.importc: "xcb_xv_query_encodings_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numEncodings* {.importc: "num_encodings".}: uint16
    pad1: array[22, uint8]

  XcbXvGrabPortCookie* {.importc: "xcb_xv_grab_port_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvGrabPortRequest* {.importc: "xcb_xv_grab_port_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    time*: XcbTimestamp

  XcbXvGrabPortReply* {.importc: "xcb_xv_grab_port_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    result*: uint8
    sequence*: uint16
    length*: uint32

  XcbXvUngrabPortRequest* {.importc: "xcb_xv_ungrab_port_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    time*: XcbTimestamp

  XcbXvPutVideoRequest* {.importc: "xcb_xv_put_video_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    vidX* {.importc: "vid_x".}: int16
    vidY* {.importc: "vid_y".}: int16
    vidW* {.importc: "vid_w".}: uint16
    vidH* {.importc: "vid_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16

  XcbXvPutStillRequest* {.importc: "xcb_xv_put_still_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    vidX* {.importc: "vid_x".}: int16
    vidY* {.importc: "vid_y".}: int16
    vidW* {.importc: "vid_w".}: uint16
    vidH* {.importc: "vid_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16

  XcbXvGetVideoRequest* {.importc: "xcb_xv_get_video_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    vidX* {.importc: "vid_x".}: int16
    vidY* {.importc: "vid_y".}: int16
    vidW* {.importc: "vid_w".}: uint16
    vidH* {.importc: "vid_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16

  XcbXvGetStillRequest* {.importc: "xcb_xv_get_still_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    vidX* {.importc: "vid_x".}: int16
    vidY* {.importc: "vid_y".}: int16
    vidW* {.importc: "vid_w".}: uint16
    vidH* {.importc: "vid_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16

  XcbXvStopVideoRequest* {.importc: "xcb_xv_stop_video_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable

  XcbXvSelectVideoNotifyRequest* {.importc: "xcb_xv_select_video_notify_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    onoff*: uint8
    pad0: array[3, uint8]

  XcbXvSelectPortNotifyRequest* {.importc: "xcb_xv_select_port_notify_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    onoff*: uint8
    pad0: array[3, uint8]

  XcbXvQueryBestSizeCookie* {.importc: "xcb_xv_query_best_size_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryBestSizeRequest* {.importc: "xcb_xv_query_best_size_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    vidW* {.importc: "vid_w".}: uint16
    vidH* {.importc: "vid_h".}: uint16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16
    motion*: uint8
    pad0: array[3, uint8]

  XcbXvQueryBestSizeReply* {.importc: "xcb_xv_query_best_size_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    actualWidth* {.importc: "actual_width".}: uint16
    actualHeight* {.importc: "actual_height".}: uint16

  XcbXvSetPortAttributeRequest* {.importc: "xcb_xv_set_port_attribute_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    attribute*: XcbAtom
    value*: int32

  XcbXvGetPortAttributeCookie* {.importc: "xcb_xv_get_port_attribute_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvGetPortAttributeRequest* {.importc: "xcb_xv_get_port_attribute_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    attribute*: XcbAtom

  XcbXvGetPortAttributeReply* {.importc: "xcb_xv_get_port_attribute_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    value*: int32

  XcbXvQueryPortAttributesCookie* {.importc: "xcb_xv_query_port_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryPortAttributesRequest* {.importc: "xcb_xv_query_port_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort

  XcbXvQueryPortAttributesReply* {.importc: "xcb_xv_query_port_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAttributes* {.importc: "num_attributes".}: uint32
    textSize* {.importc: "text_size".}: uint32
    pad1: array[16, uint8]

  XcbXvListImageFormatsCookie* {.importc: "xcb_xv_list_image_formats_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvListImageFormatsRequest* {.importc: "xcb_xv_list_image_formats_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort

  XcbXvListImageFormatsReply* {.importc: "xcb_xv_list_image_formats_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numFormats* {.importc: "num_formats".}: uint32
    pad1: array[20, uint8]

  XcbXvQueryImageAttributesCookie* {.importc: "xcb_xv_query_image_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvQueryImageAttributesRequest* {.importc: "xcb_xv_query_image_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    id*: uint32
    width*: uint16
    height*: uint16

  XcbXvQueryImageAttributesReply* {.importc: "xcb_xv_query_image_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numPlanes* {.importc: "num_planes".}: uint32
    dataSize* {.importc: "data_size".}: uint32
    width*: uint16
    height*: uint16
    pad1: array[12, uint8]

  XcbXvPutImageRequest* {.importc: "xcb_xv_put_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    id*: uint32
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    srcW* {.importc: "src_w".}: uint16
    srcH* {.importc: "src_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16
    width*: uint16
    height*: uint16

  XcbXvShmPutImageRequest* {.importc: "xcb_xv_shm_put_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    port*: XcbXvPort
    drawable*: XcbDrawable
    gc*: XcbGcontext
    shmseg*: XcbShmSeg
    id*: uint32
    offset*: uint32
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    srcW* {.importc: "src_w".}: uint16
    srcH* {.importc: "src_h".}: uint16
    drwX* {.importc: "drw_x".}: int16
    drwY* {.importc: "drw_y".}: int16
    drwW* {.importc: "drw_w".}: uint16
    drwH* {.importc: "drw_h".}: uint16
    width*: uint16
    height*: uint16
    sendEvent* {.importc: "send_event".}: uint8
    pad0: array[3, uint8]

{.push cdecl.}

proc next*(i: ptr XcbXvPortIterator) {.importc: "xcb_xv_port_next".}
proc iterEnd*(i: XcbXvPortIterator): XcbGenericIterator {.importc: "xcb_xv_port_end".}
proc next*(i: ptr XcbXvEncodingIterator) {.importc: "xcb_xv_encoding_next".}
proc iterEnd*(i: XcbXvEncodingIterator): XcbGenericIterator {.importc: "xcb_xv_encoding_end".}
proc next*(i: ptr XcbXvRationalIterator) {.importc: "xcb_xv_rational_next".}
proc iterEnd*(i: XcbXvRationalIterator): XcbGenericIterator {.importc: "xcb_xv_rational_end".}
proc next*(i: ptr XcbXvFormatIterator) {.importc: "xcb_xv_format_next".}
proc iterEnd*(i: XcbXvFormatIterator): XcbGenericIterator {.importc: "xcb_xv_format_end".}
proc adaptorInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xv_adaptor_info_sizeof".}
proc name*(R: ptr XcbXvAdaptorInfo): ptr UncheckedArray[char] {.importc: "xcb_xv_adaptor_info_name".}
proc nameLength*(R: ptr XcbXvAdaptorInfo): cint {.importc: "xcb_xv_adaptor_info_name_length".}
proc nameEnd*(R: ptr XcbXvAdaptorInfo): XcbGenericIterator {.importc: "xcb_xv_adaptor_info_name_end".}
proc formats*(R: ptr XcbXvAdaptorInfo): ptr UncheckedArray[XcbXvFormat] {.importc: "xcb_xv_adaptor_info_formats".}
proc formatsLength*(R: ptr XcbXvAdaptorInfo): cint {.importc: "xcb_xv_adaptor_info_formats_length".}
proc formatsIterator*(R: ptr XcbXvAdaptorInfo): XcbXvFormatIterator {.importc: "xcb_xv_adaptor_info_formats_iterator".}
proc next*(i: ptr XcbXvAdaptorInfoIterator) {.importc: "xcb_xv_adaptor_info_next".}
proc iterEnd*(i: XcbXvAdaptorInfoIterator): XcbGenericIterator {.importc: "xcb_xv_adaptor_info_end".}
proc encodingInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xv_encoding_info_sizeof".}
proc name*(R: ptr XcbXvEncodingInfo): ptr UncheckedArray[char] {.importc: "xcb_xv_encoding_info_name".}
proc nameLength*(R: ptr XcbXvEncodingInfo): cint {.importc: "xcb_xv_encoding_info_name_length".}
proc nameEnd*(R: ptr XcbXvEncodingInfo): XcbGenericIterator {.importc: "xcb_xv_encoding_info_name_end".}
proc next*(i: ptr XcbXvEncodingInfoIterator) {.importc: "xcb_xv_encoding_info_next".}
proc iterEnd*(i: XcbXvEncodingInfoIterator): XcbGenericIterator {.importc: "xcb_xv_encoding_info_end".}
proc imageSizeof*(buffer: pointer): cint {.importc: "xcb_xv_image_sizeof".}
proc pitches*(R: ptr XcbXvImage): ptr UncheckedArray[uint32] {.importc: "xcb_xv_image_pitches".}
proc pitchesLength*(R: ptr XcbXvImage): cint {.importc: "xcb_xv_image_pitches_length".}
proc pitchesEnd*(R: ptr XcbXvImage): XcbGenericIterator {.importc: "xcb_xv_image_pitches_end".}
proc offsets*(R: ptr XcbXvImage): ptr UncheckedArray[uint32] {.importc: "xcb_xv_image_offsets".}
proc offsetsLength*(R: ptr XcbXvImage): cint {.importc: "xcb_xv_image_offsets_length".}
proc offsetsEnd*(R: ptr XcbXvImage): XcbGenericIterator {.importc: "xcb_xv_image_offsets_end".}
proc data*(R: ptr XcbXvImage): ptr UncheckedArray[uint8] {.importc: "xcb_xv_image_data".}
proc dataLength*(R: ptr XcbXvImage): cint {.importc: "xcb_xv_image_data_length".}
proc dataEnd*(R: ptr XcbXvImage): XcbGenericIterator {.importc: "xcb_xv_image_data_end".}
proc next*(i: ptr XcbXvImageIterator) {.importc: "xcb_xv_image_next".}
proc iterEnd*(i: XcbXvImageIterator): XcbGenericIterator {.importc: "xcb_xv_image_end".}
proc attributeInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xv_attribute_info_sizeof".}
proc name*(R: ptr XcbXvAttributeInfo): ptr UncheckedArray[char] {.importc: "xcb_xv_attribute_info_name".}
proc nameLength*(R: ptr XcbXvAttributeInfo): cint {.importc: "xcb_xv_attribute_info_name_length".}
proc nameEnd*(R: ptr XcbXvAttributeInfo): XcbGenericIterator {.importc: "xcb_xv_attribute_info_name_end".}
proc next*(i: ptr XcbXvAttributeInfoIterator) {.importc: "xcb_xv_attribute_info_next".}
proc iterEnd*(i: XcbXvAttributeInfoIterator): XcbGenericIterator {.importc: "xcb_xv_attribute_info_end".}
proc next*(i: ptr XcbXvImageFormatInfoIterator) {.importc: "xcb_xv_image_format_info_next".}
proc iterEnd*(i: XcbXvImageFormatInfoIterator): XcbGenericIterator {.importc: "xcb_xv_image_format_info_end".}
proc xvQueryExtension*(c: ptr XcbConnection): XcbXvQueryExtensionCookie {.importc: "xcb_xv_query_extension".}
proc xvQueryExtensionUnchecked*(c: ptr XcbConnection): XcbXvQueryExtensionCookie {.importc: "xcb_xv_query_extension_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryExtensionCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryExtensionReply {.importc: "xcb_xv_query_extension_reply".}
proc queryAdaptorsSizeof*(buffer: pointer): cint {.importc: "xcb_xv_query_adaptors_sizeof".}
proc queryAdaptors*(c: ptr XcbConnection; window: XcbWindow): XcbXvQueryAdaptorsCookie {.importc: "xcb_xv_query_adaptors".}
proc queryAdaptorsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbXvQueryAdaptorsCookie {.importc: "xcb_xv_query_adaptors_unchecked".}
proc infoLength*(R: ptr XcbXvQueryAdaptorsReply): cint {.importc: "xcb_xv_query_adaptors_info_length".}
proc infoIterator*(R: ptr XcbXvQueryAdaptorsReply): XcbXvAdaptorInfoIterator {.importc: "xcb_xv_query_adaptors_info_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryAdaptorsCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryAdaptorsReply {.importc: "xcb_xv_query_adaptors_reply".}
proc queryEncodingsSizeof*(buffer: pointer): cint {.importc: "xcb_xv_query_encodings_sizeof".}
proc queryEncodings*(c: ptr XcbConnection; port: XcbXvPort): XcbXvQueryEncodingsCookie {.importc: "xcb_xv_query_encodings".}
proc queryEncodingsUnchecked*(c: ptr XcbConnection; port: XcbXvPort): XcbXvQueryEncodingsCookie {.importc: "xcb_xv_query_encodings_unchecked".}
proc infoLength*(R: ptr XcbXvQueryEncodingsReply): cint {.importc: "xcb_xv_query_encodings_info_length".}
proc infoIterator*(R: ptr XcbXvQueryEncodingsReply): XcbXvEncodingInfoIterator {.importc: "xcb_xv_query_encodings_info_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryEncodingsCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryEncodingsReply {.importc: "xcb_xv_query_encodings_reply".}
proc grabPort*(c: ptr XcbConnection; port: XcbXvPort; time: XcbTimestamp): XcbXvGrabPortCookie {.importc: "xcb_xv_grab_port".}
proc grabPortUnchecked*(c: ptr XcbConnection; port: XcbXvPort; time: XcbTimestamp): XcbXvGrabPortCookie {.importc: "xcb_xv_grab_port_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvGrabPortCookie; e: ptr ptr XcbGenericError): ptr XcbXvGrabPortReply {.importc: "xcb_xv_grab_port_reply".}
proc ungrabPortChecked*(c: ptr XcbConnection; port: XcbXvPort; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_xv_ungrab_port_checked".}
proc ungrabPort*(c: ptr XcbConnection; port: XcbXvPort; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_xv_ungrab_port".}
proc putVideoChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_put_video_checked".}
proc putVideo*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_put_video".}
proc putStillChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_put_still_checked".}
proc putStill*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_put_still".}
proc getVideoChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_get_video_checked".}
proc getVideo*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_get_video".}
proc getStillChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_get_still_checked".}
proc getStill*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; vidX: int16; vidY: int16; vidW: uint16; vidH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16): XcbVoidCookie {.discardable, importc: "xcb_xv_get_still".}
proc stopVideoChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_xv_stop_video_checked".}
proc stopVideo*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable): XcbVoidCookie {.discardable, importc: "xcb_xv_stop_video".}
proc selectVideoNotifyChecked*(c: ptr XcbConnection; drawable: XcbDrawable; onoff: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_select_video_notify_checked".}
proc selectVideoNotify*(c: ptr XcbConnection; drawable: XcbDrawable; onoff: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_select_video_notify".}
proc selectPortNotifyChecked*(c: ptr XcbConnection; port: XcbXvPort; onoff: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_select_port_notify_checked".}
proc selectPortNotify*(c: ptr XcbConnection; port: XcbXvPort; onoff: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_select_port_notify".}
proc queryBestSize*(c: ptr XcbConnection; port: XcbXvPort; vidW: uint16; vidH: uint16; drwW: uint16; drwH: uint16; motion: uint8): XcbXvQueryBestSizeCookie {.importc: "xcb_xv_query_best_size".}
proc queryBestSizeUnchecked*(c: ptr XcbConnection; port: XcbXvPort; vidW: uint16; vidH: uint16; drwW: uint16; drwH: uint16; motion: uint8): XcbXvQueryBestSizeCookie {.importc: "xcb_xv_query_best_size_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryBestSizeCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryBestSizeReply {.importc: "xcb_xv_query_best_size_reply".}
proc setPortAttributeChecked*(c: ptr XcbConnection; port: XcbXvPort; attribute: XcbAtom; value: int32): XcbVoidCookie {.discardable, importc: "xcb_xv_set_port_attribute_checked".}
proc setPortAttribute*(c: ptr XcbConnection; port: XcbXvPort; attribute: XcbAtom; value: int32): XcbVoidCookie {.discardable, importc: "xcb_xv_set_port_attribute".}
proc getPortAttribute*(c: ptr XcbConnection; port: XcbXvPort; attribute: XcbAtom): XcbXvGetPortAttributeCookie {.importc: "xcb_xv_get_port_attribute".}
proc getPortAttributeUnchecked*(c: ptr XcbConnection; port: XcbXvPort; attribute: XcbAtom): XcbXvGetPortAttributeCookie {.importc: "xcb_xv_get_port_attribute_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvGetPortAttributeCookie; e: ptr ptr XcbGenericError): ptr XcbXvGetPortAttributeReply {.importc: "xcb_xv_get_port_attribute_reply".}
proc queryPortAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_xv_query_port_attributes_sizeof".}
proc queryPortAttributes*(c: ptr XcbConnection; port: XcbXvPort): XcbXvQueryPortAttributesCookie {.importc: "xcb_xv_query_port_attributes".}
proc queryPortAttributesUnchecked*(c: ptr XcbConnection; port: XcbXvPort): XcbXvQueryPortAttributesCookie {.importc: "xcb_xv_query_port_attributes_unchecked".}
proc attributesLength*(R: ptr XcbXvQueryPortAttributesReply): cint {.importc: "xcb_xv_query_port_attributes_attributes_length".}
proc attributesIterator*(R: ptr XcbXvQueryPortAttributesReply): XcbXvAttributeInfoIterator {.importc: "xcb_xv_query_port_attributes_attributes_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryPortAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryPortAttributesReply {.importc: "xcb_xv_query_port_attributes_reply".}
proc listImageFormatsSizeof*(buffer: pointer): cint {.importc: "xcb_xv_list_image_formats_sizeof".}
proc listImageFormats*(c: ptr XcbConnection; port: XcbXvPort): XcbXvListImageFormatsCookie {.importc: "xcb_xv_list_image_formats".}
proc listImageFormatsUnchecked*(c: ptr XcbConnection; port: XcbXvPort): XcbXvListImageFormatsCookie {.importc: "xcb_xv_list_image_formats_unchecked".}
proc format*(R: ptr XcbXvListImageFormatsReply): ptr UncheckedArray[XcbXvImageFormatInfo] {.importc: "xcb_xv_list_image_formats_format".}
proc formatLength*(R: ptr XcbXvListImageFormatsReply): cint {.importc: "xcb_xv_list_image_formats_format_length".}
proc formatIterator*(R: ptr XcbXvListImageFormatsReply): XcbXvImageFormatInfoIterator {.importc: "xcb_xv_list_image_formats_format_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvListImageFormatsCookie; e: ptr ptr XcbGenericError): ptr XcbXvListImageFormatsReply {.importc: "xcb_xv_list_image_formats_reply".}
proc queryImageAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_xv_query_image_attributes_sizeof".}
proc queryImageAttributes*(c: ptr XcbConnection; port: XcbXvPort; id: uint32; width: uint16; height: uint16): XcbXvQueryImageAttributesCookie {.importc: "xcb_xv_query_image_attributes".}
proc queryImageAttributesUnchecked*(c: ptr XcbConnection; port: XcbXvPort; id: uint32; width: uint16; height: uint16): XcbXvQueryImageAttributesCookie {.importc: "xcb_xv_query_image_attributes_unchecked".}
proc pitches*(R: ptr XcbXvQueryImageAttributesReply): ptr UncheckedArray[uint32] {.importc: "xcb_xv_query_image_attributes_pitches".}
proc pitchesLength*(R: ptr XcbXvQueryImageAttributesReply): cint {.importc: "xcb_xv_query_image_attributes_pitches_length".}
proc pitchesEnd*(R: ptr XcbXvQueryImageAttributesReply): XcbGenericIterator {.importc: "xcb_xv_query_image_attributes_pitches_end".}
proc offsets*(R: ptr XcbXvQueryImageAttributesReply): ptr UncheckedArray[uint32] {.importc: "xcb_xv_query_image_attributes_offsets".}
proc offsetsLength*(R: ptr XcbXvQueryImageAttributesReply): cint {.importc: "xcb_xv_query_image_attributes_offsets_length".}
proc offsetsEnd*(R: ptr XcbXvQueryImageAttributesReply): XcbGenericIterator {.importc: "xcb_xv_query_image_attributes_offsets_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvQueryImageAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbXvQueryImageAttributesReply {.importc: "xcb_xv_query_image_attributes_reply".}
proc putImageSizeof*(buffer: pointer; dataLen: uint32): cint {.importc: "xcb_xv_put_image_sizeof".}
proc putImageChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; id: uint32; srcX: int16; srcY: int16; srcW: uint16; srcH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16; width: uint16; height: uint16; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_put_image_checked".}
proc putImage*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; id: uint32; srcX: int16; srcY: int16; srcW: uint16; srcH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16; width: uint16; height: uint16; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_put_image".}
proc data*(R: ptr XcbXvPutImageRequest): ptr UncheckedArray[uint8] {.importc: "xcb_xv_put_image_data".}
proc dataLength*(R: ptr XcbXvPutImageRequest): cint {.importc: "xcb_xv_put_image_data_length".}
proc dataEnd*(R: ptr XcbXvPutImageRequest): XcbGenericIterator {.importc: "xcb_xv_put_image_data_end".}
proc putImageChecked*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; shmseg: XcbShmSeg; id: uint32; offset: uint32; srcX: int16; srcY: int16; srcW: uint16; srcH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16; width: uint16; height: uint16; sendEvent: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_shm_put_image_checked".}
proc putImage*(c: ptr XcbConnection; port: XcbXvPort; drawable: XcbDrawable; gc: XcbGcontext; shmseg: XcbShmSeg; id: uint32; offset: uint32; srcX: int16; srcY: int16; srcW: uint16; srcH: uint16; drwX: int16; drwY: int16; drwW: uint16; drwH: uint16; width: uint16; height: uint16; sendEvent: uint8): XcbVoidCookie {.discardable, importc: "xcb_xv_shm_put_image".}

{.pop.}
{.pop.}
