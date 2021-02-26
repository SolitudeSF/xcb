import ./xcb, ./render

const
  xcbRandrMajorVersion* = 1
  xcbRandrMinorVersion* = 6
  xcbRandrBadOutput* = 0
  xcbRandrBadCrtc* = 1
  xcbRandrBadMode* = 2
  xcbRandrBadProvider* = 3
  xcbRandrQueryVersion* = 0
  xcbRandrSetScreenConfig* = 2
  xcbRandrSelectInput* = 4
  xcbRandrGetScreenInfo* = 5
  xcbRandrGetScreenSizeRange* = 6
  xcbRandrSetScreenSize* = 7
  xcbRandrGetScreenResources* = 8
  xcbRandrGetOutputInfo* = 9
  xcbRandrListOutputProperties* = 10
  xcbRandrQueryOutputProperty* = 11
  xcbRandrConfigureOutputProperty* = 12
  xcbRandrChangeOutputProperty* = 13
  xcbRandrDeleteOutputProperty* = 14
  xcbRandrGetOutputProperty* = 15
  xcbRandrCreateMode* = 16
  xcbRandrDestroyMode* = 17
  xcbRandrAddOutputMode* = 18
  xcbRandrDeleteOutputMode* = 19
  xcbRandrGetCrtcInfo* = 20
  xcbRandrSetCrtcConfig* = 21
  xcbRandrGetCrtcGammaSize* = 22
  xcbRandrGetCrtcGamma* = 23
  xcbRandrSetCrtcGamma* = 24
  xcbRandrGetScreenResourcesCurrent* = 25
  xcbRandrSetCrtcTransform* = 26
  xcbRandrGetCrtcTransform* = 27
  xcbRandrGetPanning* = 28
  xcbRandrSetPanning* = 29
  xcbRandrSetOutputPrimary* = 30
  xcbRandrGetOutputPrimary* = 31
  xcbRandrGetProviders* = 32
  xcbRandrGetProviderInfo* = 33
  xcbRandrSetProviderOffloadSink* = 34
  xcbRandrSetProviderOutputSource* = 35
  xcbRandrListProviderProperties* = 36
  xcbRandrQueryProviderProperty* = 37
  xcbRandrConfigureProviderProperty* = 38
  xcbRandrChangeProviderProperty* = 39
  xcbRandrDeleteProviderProperty* = 40
  xcbRandrGetProviderProperty* = 41
  xcbRandrScreenChangeNotify* = 0
  xcbRandrGetMonitors* = 42
  xcbRandrSetMonitor* = 43
  xcbRandrDeleteMonitor* = 44
  xcbRandrCreateLease* = 45
  xcbRandrFreeLease* = 46
  xcbRandrNotify* = 1

{.passl: "-lxcb-randr".}
{.push header: "xcb/randr.h".}

var xcbRandrId* {.extern: "xcb_randr_id".}: XcbExtension

type
  XcbRandrMode* {.importc: "xcb_randr_mode_t".} = distinct uint32
  XcbRandrCrtc* {.importc: "xcb_randr_crtc_t".} = distinct uint32
  XcbRandrOutput* {.importc: "xcb_randr_output_t".} = distinct uint32
  XcbRandrProvider* {.importc: "xcb_randr_provider_t".} = distinct uint32
  XcbRandrLease* {.importc: "xcb_randr_lease_t".} = distinct uint32

  XcbRandrModeIterator* {.importc: "xcb_randr_mode_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrMode]
    rem*: cint
    index*: cint

  XcbRandrCrtcIterator* {.importc: "xcb_randr_crtc_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrCrtc]
    rem*: cint
    index*: cint

  XcbRandrOutputIterator* {.importc: "xcb_randr_output_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrOutput]
    rem*: cint
    index*: cint

  XcbRandrProviderIterator* {.importc: "xcb_randr_provider_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrProvider]
    rem*: cint
    index*: cint

  XcbRandrLeaseIterator* {.importc: "xcb_randr_lease_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrLease]
    rem*: cint
    index*: cint

  XcbRandrBadOutputError* {.importc: "xcb_randr_bad_output_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRandrBadCrtcError* {.importc: "xcb_randr_bad_crtc_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRandrBadModeError* {.importc: "xcb_randr_bad_mode_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRandrBadProviderError* {.importc: "xcb_randr_bad_provider_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRandrRotation* {.importc: "xcb_randr_rotation_t".} = enum
    xcbRandrRotationRotate0 = 1, xcbRandrRotationRotate90 = 2,
    xcbRandrRotationRotate180 = 4, xcbRandrRotationRotate270 = 8,
    xcbRandrRotationReflectX = 16, xcbRandrRotationReflectY = 32

  XcbRandrScreenSize* {.importc: "xcb_randr_screen_size_t", bycopy.} = object
    width*: uint16
    height*: uint16
    mwidth*: uint16
    mheight*: uint16

  XcbRandrScreenSizeIterator* {.importc: "xcb_randr_screen_size_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrScreenSize]
    rem*: cint
    index*: cint

  XcbRandrRefreshRates* {.importc: "xcb_randr_refresh_rates_t", bycopy.} = object
    nRates*: uint16

  XcbRandrRefreshRatesIterator* {.importc: "xcb_randr_refresh_rates_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrRefreshRates]
    rem*: cint
    index*: cint

  XcbRandrQueryVersionCookie* {.importc: "xcb_randr_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrQueryVersionRequest* {.importc: "xcb_randr_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbRandrQueryVersionReply* {.importc: "xcb_randr_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbRandrSetConfig* {.importc: "xcb_randr_set_config_t".} = enum
    xcbRandrSetConfigSuccess = 0, xcbRandrSetConfigInvalidConfigTime = 1,
    xcbRandrSetConfigInvalidTime = 2, xcbRandrSetConfigFailed = 3

  XcbRandrSetScreenConfigCookie* {.importc: "xcb_randr_set_screen_config_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrSetScreenConfigRequest* {.importc: "xcb_randr_set_screen_config_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    sizeID*: uint16
    rotation*: uint16
    rate*: uint16
    pad0: array[2, uint8]

  XcbRandrSetScreenConfigReply* {.importc: "xcb_randr_set_screen_config_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    newTimestamp* {.importc: "new_timestamp".}: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    root*: XcbWindow
    subpixelOrder* {.importc: "subpixel_order".}: uint16
    pad0: array[10, uint8]

  XcbRandrNotifyMask* {.importc: "xcb_randr_notify_mask_t".} = enum
    xcbRandrNotifyMaskScreenChange = 1, xcbRandrNotifyMaskCrtcChange = 2,
    xcbRandrNotifyMaskOutputChange = 4,
    xcbRandrNotifyMaskOutputProperty = 8,
    xcbRandrNotifyMaskProviderChange = 16,
    xcbRandrNotifyMaskProviderProperty = 32,
    xcbRandrNotifyMaskResourceChange = 64, xcbRandrNotifyMaskLease = 128

  XcbRandrSelectInputRequest* {.importc: "xcb_randr_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    enable*: uint16
    pad0: array[2, uint8]

  XcbRandrGetScreenInfoCookie* {.importc: "xcb_randr_get_screen_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetScreenInfoRequest* {.importc: "xcb_randr_get_screen_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetScreenInfoReply* {.importc: "xcb_randr_get_screen_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    rotations*: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    nSizes*: uint16
    sizeID*: uint16
    rotation*: uint16
    rate*: uint16
    nInfo*: uint16
    pad0: array[2, uint8]

  XcbRandrGetScreenSizeRangeCookie* {.importc: "xcb_randr_get_screen_size_range_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetScreenSizeRangeRequest* {.importc: "xcb_randr_get_screen_size_range_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetScreenSizeRangeReply* {.importc: "xcb_randr_get_screen_size_range_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    minWidth* {.importc: "min_width".}: uint16
    minHeight* {.importc: "min_height".}: uint16
    maxWidth* {.importc: "max_width".}: uint16
    maxHeight* {.importc: "max_height".}: uint16
    pad1: array[16, uint8]

  XcbRandrSetScreenSizeRequest* {.importc: "xcb_randr_set_screen_size_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    width*: uint16
    height*: uint16
    mmWidth* {.importc: "mm_width".}: uint32
    mmHeight* {.importc: "mm_height".}: uint32

  XcbRandrModeFlag* {.importc: "xcb_randr_mode_flag_t".} = enum
    xcbRandrModeFlagHsyncPositive = 1, xcbRandrModeFlagHsyncNegative = 2,
    xcbRandrModeFlagVsyncPositive = 4, xcbRandrModeFlagVsyncNegative = 8,
    xcbRandrModeFlagInterlace = 16, xcbRandrModeFlagDoubleScan = 32,
    xcbRandrModeFlagCsync = 64, xcbRandrModeFlagCsyncPositive = 128,
    xcbRandrModeFlagCsyncNegative = 256,
    xcbRandrModeFlagHskewPresent = 512, xcbRandrModeFlagBcast = 1024,
    xcbRandrModeFlagPixelMultiplex = 2048,
    xcbRandrModeFlagDoubleClock = 4096, xcbRandrModeFlagHalveClock = 8192

  XcbRandrModeInfo* {.importc: "xcb_randr_mode_info_t", bycopy.} = object
    id*: uint32
    width*: uint16
    height*: uint16
    dotClock* {.importc: "dot_clock".}: uint32
    hsyncStart* {.importc: "hsync_start".}: uint16
    hsyncEnd* {.importc: "hsync_end".}: uint16
    htotal*: uint16
    hskew*: uint16
    vsyncStart* {.importc: "vsync_start".}: uint16
    vsyncEnd* {.importc: "vsync_end".}: uint16
    vtotal*: uint16
    nameLen* {.importc: "name_len".}: uint16
    modeFlags* {.importc: "mode_flags".}: uint32

  XcbRandrModeInfoIterator* {.importc: "xcb_randr_mode_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrModeInfo]
    rem*: cint
    index*: cint

  XcbRandrGetScreenResourcesCookie* {.importc: "xcb_randr_get_screen_resources_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetScreenResourcesRequest* {.importc: "xcb_randr_get_screen_resources_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetScreenResourcesReply* {.importc: "xcb_randr_get_screen_resources_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    numCrtcs* {.importc: "num_crtcs".}: uint16
    numOutputs* {.importc: "num_outputs".}: uint16
    numModes* {.importc: "num_modes".}: uint16
    namesLen* {.importc: "names_len".}: uint16
    pad1: array[8, uint8]

  XcbRandrConnection* {.importc: "xcb_randr_connection_t", size: 1.} = enum
    xcbRandrConnectionConnected = 0, xcbRandrConnectionDisconnected = 1,
    xcbRandrConnectionUnknown = 2

  XcbRandrGetOutputInfoCookie* {.importc: "xcb_randr_get_output_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetOutputInfoRequest* {.importc: "xcb_randr_get_output_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp

  XcbRandrGetOutputInfoReply* {.importc: "xcb_randr_get_output_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    crtc*: XcbRandrCrtc
    mmWidth* {.importc: "mm_width".}: uint32
    mmHeight* {.importc: "mm_height".}: uint32
    connection*: XcbRandrConnection
    subpixelOrder* {.importc: "subpixel_order".}: uint8
    numCrtcs* {.importc: "num_crtcs".}: uint16
    numModes* {.importc: "num_modes".}: uint16
    numPreferred* {.importc: "num_preferred".}: uint16
    numClones* {.importc: "num_clones".}: uint16
    nameLen* {.importc: "name_len".}: uint16

  XcbRandrListOutputPropertiesCookie* {.importc: "xcb_randr_list_output_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrListOutputPropertiesRequest* {.importc: "xcb_randr_list_output_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput

  XcbRandrListOutputPropertiesReply* {.importc: "xcb_randr_list_output_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAtoms* {.importc: "num_atoms".}: uint16
    pad1: array[22, uint8]

  XcbRandrQueryOutputPropertyCookie* {.importc: "xcb_randr_query_output_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrQueryOutputPropertyRequest* {.importc: "xcb_randr_query_output_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    property*: XcbAtom

  XcbRandrQueryOutputPropertyReply* {.importc: "xcb_randr_query_output_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pending*: uint8
    range*: uint8
    immutable*: uint8
    pad1: array[21, uint8]

  XcbRandrConfigureOutputPropertyRequest* {.importc: "xcb_randr_configure_output_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    property*: XcbAtom
    pending*: uint8
    range*: uint8
    pad0: array[2, uint8]

  XcbRandrChangeOutputPropertyRequest* {.importc: "xcb_randr_change_output_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    property*: XcbAtom
    `type`*: XcbAtom
    format*: uint8
    mode*: uint8
    pad0: array[2, uint8]
    numUnits* {.importc: "num_units".}: uint32

  XcbRandrDeleteOutputPropertyRequest* {.importc: "xcb_randr_delete_output_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    property*: XcbAtom

  XcbRandrGetOutputPropertyCookie* {.importc: "xcb_randr_get_output_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetOutputPropertyRequest* {.importc: "xcb_randr_get_output_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    property*: XcbAtom
    `type`*: XcbAtom
    longOffset* {.importc: "long_offset".}: uint32
    longLength* {.importc: "long_length".}: uint32
    delete*: uint8
    pending*: uint8
    pad0: array[2, uint8]

  XcbRandrGetOutputPropertyReply* {.importc: "xcb_randr_get_output_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    format*: uint8
    sequence*: uint16
    length*: uint32
    `type`*: XcbAtom
    bytesAfter* {.importc: "bytes_after".}: uint32
    numItems* {.importc: "num_items".}: uint32
    pad0: array[12, uint8]

  XcbRandrCreateModeCookie* {.importc: "xcb_randr_create_mode_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrCreateModeRequest* {.importc: "xcb_randr_create_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    modeInfo* {.importc: "mode_info".}: XcbRandrModeInfo

  XcbRandrCreateModeReply* {.importc: "xcb_randr_create_mode_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    mode*: XcbRandrMode
    pad1: array[20, uint8]

  XcbRandrDestroyModeRequest* {.importc: "xcb_randr_destroy_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    mode*: XcbRandrMode

  XcbRandrAddOutputModeRequest* {.importc: "xcb_randr_add_output_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    mode*: XcbRandrMode

  XcbRandrDeleteOutputModeRequest* {.importc: "xcb_randr_delete_output_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    output*: XcbRandrOutput
    mode*: XcbRandrMode

  XcbRandrGetCrtcInfoCookie* {.importc: "xcb_randr_get_crtc_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetCrtcInfoRequest* {.importc: "xcb_randr_get_crtc_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp

  XcbRandrGetCrtcInfoReply* {.importc: "xcb_randr_get_crtc_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    mode*: XcbRandrMode
    rotation*: uint16
    rotations*: uint16
    numOutputs* {.importc: "num_outputs".}: uint16
    numPossibleOutputs* {.importc: "num_possible_outputs".}: uint16

  XcbRandrSetCrtcConfigCookie* {.importc: "xcb_randr_set_crtc_config_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrSetCrtcConfigRequest* {.importc: "xcb_randr_set_crtc_config_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    x*: int16
    y*: int16
    mode*: XcbRandrMode
    rotation*: uint16
    pad0: array[2, uint8]

  XcbRandrSetCrtcConfigReply* {.importc: "xcb_randr_set_crtc_config_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    pad0: array[20, uint8]

  XcbRandrGetCrtcGammaSizeCookie* {.importc: "xcb_randr_get_crtc_gamma_size_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetCrtcGammaSizeRequest* {.importc: "xcb_randr_get_crtc_gamma_size_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc

  XcbRandrGetCrtcGammaSizeReply* {.importc: "xcb_randr_get_crtc_gamma_size_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    size*: uint16
    pad1: array[22, uint8]

  XcbRandrGetCrtcGammaCookie* {.importc: "xcb_randr_get_crtc_gamma_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetCrtcGammaRequest* {.importc: "xcb_randr_get_crtc_gamma_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc

  XcbRandrGetCrtcGammaReply* {.importc: "xcb_randr_get_crtc_gamma_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    size*: uint16
    pad1: array[22, uint8]

  XcbRandrSetCrtcGammaRequest* {.importc: "xcb_randr_set_crtc_gamma_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc
    size*: uint16
    pad0: array[2, uint8]

  XcbRandrGetScreenResourcesCurrentCookie* {.importc: "xcb_randr_get_screen_resources_current_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetScreenResourcesCurrentRequest* {.importc: "xcb_randr_get_screen_resources_current_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetScreenResourcesCurrentReply* {.importc: "xcb_randr_get_screen_resources_current_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    numCrtcs* {.importc: "num_crtcs".}: uint16
    numOutputs* {.importc: "num_outputs".}: uint16
    numModes* {.importc: "num_modes".}: uint16
    namesLen* {.importc: "names_len".}: uint16
    pad1: array[8, uint8]

  XcbRandrTransform* {.importc: "xcb_randr_transform_t".} = enum
    xcbRandrTransformUnit = 1, xcbRandrTransformScaleUp = 2,
    xcbRandrTransformScaleDown = 4, xcbRandrTransformProjective = 8

  XcbRandrSetCrtcTransformRequest* {.importc: "xcb_randr_set_crtc_transform_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc
    transform*: XcbRenderTransform
    filterLen* {.importc: "filter_len".}: uint16
    pad0: array[2, uint8]

  XcbRandrGetCrtcTransformCookie* {.importc: "xcb_randr_get_crtc_transform_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetCrtcTransformRequest* {.importc: "xcb_randr_get_crtc_transform_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc

  XcbRandrGetCrtcTransformReply* {.importc: "xcb_randr_get_crtc_transform_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pendingTransform* {.importc: "pending_transform".}: XcbRenderTransform
    hasTransforms* {.importc: "has_transforms".}: uint8
    pad1: array[3, uint8]
    currentTransform* {.importc: "current_transform".}: XcbRenderTransform
    pad2: array[4, uint8]
    pendingLen* {.importc: "pending_len".}: uint16
    pendingNparams* {.importc: "pending_nparams".}: uint16
    currentLen* {.importc: "current_len".}: uint16
    currentNparams* {.importc: "current_nparams".}: uint16

  XcbRandrGetPanningCookie* {.importc: "xcb_randr_get_panning_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetPanningRequest* {.importc: "xcb_randr_get_panning_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc

  XcbRandrGetPanningReply* {.importc: "xcb_randr_get_panning_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    left*: uint16
    top*: uint16
    width*: uint16
    height*: uint16
    trackLeft* {.importc: "track_left".}: uint16
    trackTop* {.importc: "track_top".}: uint16
    trackWidth* {.importc: "track_width".}: uint16
    trackHeight* {.importc: "track_height".}: uint16
    borderLeft* {.importc: "border_left".}: int16
    borderTop* {.importc: "border_top".}: int16
    borderRight* {.importc: "border_right".}: int16
    borderBottom* {.importc: "border_bottom".}: int16

  XcbRandrSetPanningCookie* {.importc: "xcb_randr_set_panning_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrSetPanningRequest* {.importc: "xcb_randr_set_panning_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    crtc*: XcbRandrCrtc
    timestamp*: XcbTimestamp
    left*: uint16
    top*: uint16
    width*: uint16
    height*: uint16
    trackLeft* {.importc: "track_left".}: uint16
    trackTop* {.importc: "track_top".}: uint16
    trackWidth* {.importc: "track_width".}: uint16
    trackHeight* {.importc: "track_height".}: uint16
    borderLeft* {.importc: "border_left".}: int16
    borderTop* {.importc: "border_top".}: int16
    borderRight* {.importc: "border_right".}: int16
    borderBottom* {.importc: "border_bottom".}: int16

  XcbRandrSetPanningReply* {.importc: "xcb_randr_set_panning_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp

  XcbRandrSetOutputPrimaryRequest* {.importc: "xcb_randr_set_output_primary_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    output*: XcbRandrOutput

  XcbRandrGetOutputPrimaryCookie* {.importc: "xcb_randr_get_output_primary_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetOutputPrimaryRequest* {.importc: "xcb_randr_get_output_primary_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetOutputPrimaryReply* {.importc: "xcb_randr_get_output_primary_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    output*: XcbRandrOutput

  XcbRandrGetProvidersCookie* {.importc: "xcb_randr_get_providers_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetProvidersRequest* {.importc: "xcb_randr_get_providers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrGetProvidersReply* {.importc: "xcb_randr_get_providers_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    numProviders* {.importc: "num_providers".}: uint16
    pad1: array[18, uint8]

  XcbRandrProviderCapability* {.importc: "xcb_randr_provider_capability_t".} = enum
    xcbRandrProviderCapabilitySourceOutput = 1,
    xcbRandrProviderCapabilitySinkOutput = 2,
    xcbRandrProviderCapabilitySourceOffload = 4,
    xcbRandrProviderCapabilitySinkOffload = 8

  XcbRandrGetProviderInfoCookie* {.importc: "xcb_randr_get_provider_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetProviderInfoRequest* {.importc: "xcb_randr_get_provider_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp

  XcbRandrGetProviderInfoReply* {.importc: "xcb_randr_get_provider_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    capabilities*: uint32
    numCrtcs* {.importc: "num_crtcs".}: uint16
    numOutputs* {.importc: "num_outputs".}: uint16
    numAssociatedProviders* {.importc: "num_associated_providers".}: uint16
    nameLen* {.importc: "name_len".}: uint16
    pad0: array[8, uint8]

  XcbRandrSetProviderOffloadSinkRequest* {.importc: "xcb_randr_set_provider_offload_sink_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    sinkProvider* {.importc: "sink_provider".}: XcbRandrProvider
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp

  XcbRandrSetProviderOutputSourceRequest* {.importc: "xcb_randr_set_provider_output_source_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    sourceProvider* {.importc: "source_provider".}: XcbRandrProvider
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp

  XcbRandrListProviderPropertiesCookie* {.importc: "xcb_randr_list_provider_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrListProviderPropertiesRequest* {.importc: "xcb_randr_list_provider_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider

  XcbRandrListProviderPropertiesReply* {.importc: "xcb_randr_list_provider_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAtoms* {.importc: "num_atoms".}: uint16
    pad1: array[22, uint8]

  XcbRandrQueryProviderPropertyCookie* {.importc: "xcb_randr_query_provider_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrQueryProviderPropertyRequest* {.importc: "xcb_randr_query_provider_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    property*: XcbAtom

  XcbRandrQueryProviderPropertyReply* {.importc: "xcb_randr_query_provider_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pending*: uint8
    range*: uint8
    immutable*: uint8
    pad1: array[21, uint8]

  XcbRandrConfigureProviderPropertyRequest* {.importc: "xcb_randr_configure_provider_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    property*: XcbAtom
    pending*: uint8
    range*: uint8
    pad0: array[2, uint8]

  XcbRandrChangeProviderPropertyRequest* {.importc: "xcb_randr_change_provider_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    property*: XcbAtom
    `type`*: XcbAtom
    format*: uint8
    mode*: uint8
    pad0: array[2, uint8]
    numItems* {.importc: "num_items".}: uint32

  XcbRandrDeleteProviderPropertyRequest* {.importc: "xcb_randr_delete_provider_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    property*: XcbAtom

  XcbRandrGetProviderPropertyCookie* {.importc: "xcb_randr_get_provider_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetProviderPropertyRequest* {.importc: "xcb_randr_get_provider_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    provider*: XcbRandrProvider
    property*: XcbAtom
    `type`*: XcbAtom
    longOffset* {.importc: "long_offset".}: uint32
    longLength* {.importc: "long_length".}: uint32
    delete*: uint8
    pending*: uint8
    pad0: array[2, uint8]

  XcbRandrGetProviderPropertyReply* {.importc: "xcb_randr_get_provider_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    format*: uint8
    sequence*: uint16
    length*: uint32
    `type`*: XcbAtom
    bytesAfter* {.importc: "bytes_after".}: uint32
    numItems* {.importc: "num_items".}: uint32
    pad0: array[12, uint8]

  XcbRandrScreenChangeNotifyEvent* {.importc: "xcb_randr_screen_change_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    rotation*: uint8
    sequence*: uint16
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    root*: XcbWindow
    requestWindow* {.importc: "request_window".}: XcbWindow
    sizeID*: uint16
    subpixelOrder* {.importc: "subpixel_order".}: uint16
    width*: uint16
    height*: uint16
    mwidth*: uint16
    mheight*: uint16

  XcbRandrNotify* {.importc: "xcb_randr_notify_t".} = enum
    xcbRandrNotifyCrtcChange = 0, xcbRandrNotifyOutputChange = 1,
    xcbRandrNotifyOutputProperty = 2, xcbRandrNotifyProviderChange = 3,
    xcbRandrNotifyProviderProperty = 4, xcbRandrNotifyResourceChange = 5,
    xcbRandrNotifyLease = 6

  XcbRandrCrtcChange* {.importc: "xcb_randr_crtc_change_t", bycopy.} = object
    timestamp*: XcbTimestamp
    window*: XcbWindow
    crtc*: XcbRandrCrtc
    mode*: XcbRandrMode
    rotation*: uint16
    pad0: array[2, uint8]
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16

  XcbRandrCrtcChangeIterator* {.importc: "xcb_randr_crtc_change_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrCrtcChange]
    rem*: cint
    index*: cint

  XcbRandrOutputChange* {.importc: "xcb_randr_output_change_t", bycopy.} = object
    timestamp*: XcbTimestamp
    configTimestamp* {.importc: "config_timestamp".}: XcbTimestamp
    window*: XcbWindow
    output*: XcbRandrOutput
    crtc*: XcbRandrCrtc
    mode*: XcbRandrMode
    rotation*: uint16
    connection*: XcbRandrConnection
    subpixelOrder* {.importc: "subpixel_order".}: uint8

  XcbRandrOutputChangeIterator* {.importc: "xcb_randr_output_change_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrOutputChange]
    rem*: cint
    index*: cint

  XcbRandrOutputProperty* {.importc: "xcb_randr_output_property_t", bycopy.} = object
    window*: XcbWindow
    output*: XcbRandrOutput
    atom*: XcbAtom
    timestamp*: XcbTimestamp
    status*: uint8
    pad0: array[11, uint8]

  XcbRandrOutputPropertyIterator* {.importc: "xcb_randr_output_property_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrOutputProperty]
    rem*: cint
    index*: cint

  XcbRandrProviderChange* {.importc: "xcb_randr_provider_change_t", bycopy.} = object
    timestamp*: XcbTimestamp
    window*: XcbWindow
    provider*: XcbRandrProvider
    pad0: array[16, uint8]

  XcbRandrProviderChangeIterator* {.importc: "xcb_randr_provider_change_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrProviderChange]
    rem*: cint
    index*: cint

  XcbRandrProviderProperty* {.importc: "xcb_randr_provider_property_t", bycopy.} = object
    window*: XcbWindow
    provider*: XcbRandrProvider
    atom*: XcbAtom
    timestamp*: XcbTimestamp
    state*: uint8
    pad0: array[11, uint8]

  XcbRandrProviderPropertyIterator* {.importc: "xcb_randr_provider_property_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrProviderProperty]
    rem*: cint
    index*: cint

  XcbRandrResourceChange* {.importc: "xcb_randr_resource_change_t", bycopy.} = object
    timestamp*: XcbTimestamp
    window*: XcbWindow
    pad0: array[20, uint8]

  XcbRandrResourceChangeIterator* {.importc: "xcb_randr_resource_change_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrResourceChange]
    rem*: cint
    index*: cint

  XcbRandrMonitorInfo* {.importc: "xcb_randr_monitor_info_t", bycopy.} = object
    name*: XcbAtom
    primary*: uint8
    automatic*: uint8
    nOutput*: uint16
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    widthInMillimeters* {.importc: "width_in_millimeters".}: uint32
    heightInMillimeters* {.importc: "height_in_millimeters".}: uint32

  XcbRandrMonitorInfoIterator* {.importc: "xcb_randr_monitor_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrMonitorInfo]
    rem*: cint
    index*: cint

  XcbRandrGetMonitorsCookie* {.importc: "xcb_randr_get_monitors_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrGetMonitorsRequest* {.importc: "xcb_randr_get_monitors_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    getActive* {.importc: "get_active".}: uint8

  XcbRandrGetMonitorsReply* {.importc: "xcb_randr_get_monitors_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    timestamp*: XcbTimestamp
    nMonitors*: uint32
    nOutputs*: uint32
    pad1: array[12, uint8]

  XcbRandrSetMonitorRequest* {.importc: "xcb_randr_set_monitor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbRandrDeleteMonitorRequest* {.importc: "xcb_randr_delete_monitor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    name*: XcbAtom

  XcbRandrCreateLeaseCookie* {.importc: "xcb_randr_create_lease_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRandrCreateLeaseRequest* {.importc: "xcb_randr_create_lease_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    lid*: XcbRandrLease
    numCrtcs* {.importc: "num_crtcs".}: uint16
    numOutputs* {.importc: "num_outputs".}: uint16

  XcbRandrCreateLeaseReply* {.importc: "xcb_randr_create_lease_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nfd*: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbRandrFreeLeaseRequest* {.importc: "xcb_randr_free_lease_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    lid*: XcbRandrLease
    terminate*: uint8

  XcbRandrLeaseNotify* {.importc: "xcb_randr_lease_notify_t", bycopy.} = object
    timestamp*: XcbTimestamp
    window*: XcbWindow
    lease*: XcbRandrLease
    created*: uint8
    pad0: array[15, uint8]

  XcbRandrLeaseNotifyIterator* {.importc: "xcb_randr_lease_notify_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrLeaseNotify]
    rem*: cint
    index*: cint

  XcbRandrNotifyData* {.importc: "xcb_randr_notify_data_t", bycopy, union.} = object
    cc*: XcbRandrCrtcChange
    oc*: XcbRandrOutputChange
    op*: XcbRandrOutputProperty
    pc*: XcbRandrProviderChange
    pp*: XcbRandrProviderProperty
    rc*: XcbRandrResourceChange
    lc*: XcbRandrLeaseNotify

  XcbRandrNotifyDataIterator* {.importc: "xcb_randr_notify_data_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRandrNotifyData]
    rem*: cint
    index*: cint

  XcbRandrNotifyEvent* {.importc: "xcb_randr_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    subCode*: uint8
    sequence*: uint16
    u*: XcbRandrNotifyData

{.push cdecl.}

proc next*(i: ptr XcbRandrModeIterator) {.importc: "xcb_randr_mode_next".}
proc iterEnd*(i: XcbRandrModeIterator): XcbGenericIterator {.importc: "xcb_randr_mode_end".}
proc next*(i: ptr XcbRandrCrtcIterator) {.importc: "xcb_randr_crtc_next".}
proc iterEnd*(i: XcbRandrCrtcIterator): XcbGenericIterator {.importc: "xcb_randr_crtc_end".}
proc next*(i: ptr XcbRandrOutputIterator) {.importc: "xcb_randr_output_next".}
proc iterEnd*(i: XcbRandrOutputIterator): XcbGenericIterator {.importc: "xcb_randr_output_end".}
proc next*(i: ptr XcbRandrProviderIterator) {.importc: "xcb_randr_provider_next".}
proc iterEnd*(i: XcbRandrProviderIterator): XcbGenericIterator {.importc: "xcb_randr_provider_end".}
proc next*(i: ptr XcbRandrLeaseIterator) {.importc: "xcb_randr_lease_next".}
proc iterEnd*(i: XcbRandrLeaseIterator): XcbGenericIterator {.importc: "xcb_randr_lease_end".}
proc next*(i: ptr XcbRandrScreenSizeIterator) {.importc: "xcb_randr_screen_size_next".}
proc iterEnd*(i: XcbRandrScreenSizeIterator): XcbGenericIterator {.importc: "xcb_randr_screen_size_end".}
proc refreshRatesSizeof*(buffer: pointer): cint {.importc: "xcb_randr_refresh_rates_sizeof".}
proc rates*(R: ptr XcbRandrRefreshRates): ptr UncheckedArray[uint16] {.importc: "xcb_randr_refresh_rates_rates".}
proc ratesLength*(R: ptr XcbRandrRefreshRates): cint {.importc: "xcb_randr_refresh_rates_rates_length".}
proc ratesEnd*(R: ptr XcbRandrRefreshRates): XcbGenericIterator {.importc: "xcb_randr_refresh_rates_rates_end".}
proc next*(i: ptr XcbRandrRefreshRatesIterator) {.importc: "xcb_randr_refresh_rates_next".}
proc iterEnd*(i: XcbRandrRefreshRatesIterator): XcbGenericIterator {.importc: "xcb_randr_refresh_rates_end".}
proc randrQueryVersion*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbRandrQueryVersionCookie {.importc: "xcb_randr_query_version".}
proc randrQueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbRandrQueryVersionCookie {.importc: "xcb_randr_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbRandrQueryVersionReply {.importc: "xcb_randr_query_version_reply".}
proc setScreenConfig*(c: ptr XcbConnection; window: XcbWindow; timestamp: XcbTimestamp; configTimestamp: XcbTimestamp; sizeID: uint16; rotation: uint16; rate: uint16): XcbRandrSetScreenConfigCookie {.importc: "xcb_randr_set_screen_config".}
proc setScreenConfigUnchecked*(c: ptr XcbConnection; window: XcbWindow; timestamp: XcbTimestamp; configTimestamp: XcbTimestamp; sizeID: uint16; rotation: uint16; rate: uint16): XcbRandrSetScreenConfigCookie {.importc: "xcb_randr_set_screen_config_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrSetScreenConfigCookie; e: ptr ptr XcbGenericError): ptr XcbRandrSetScreenConfigReply {.importc: "xcb_randr_set_screen_config_reply".}
proc randrSelectInputChecked*(c: ptr XcbConnection; window: XcbWindow; enable: uint16): XcbVoidCookie {.discardable, importc: "xcb_randr_select_input_checked".}
proc randrSelectInput*(c: ptr XcbConnection; window: XcbWindow; enable: uint16): XcbVoidCookie {.discardable, importc: "xcb_randr_select_input".}
proc getScreenInfoSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_screen_info_sizeof".}
proc getScreenInfo*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenInfoCookie {.importc: "xcb_randr_get_screen_info".}
proc getScreenInfoUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenInfoCookie {.importc: "xcb_randr_get_screen_info_unchecked".}
proc sizes*(R: ptr XcbRandrGetScreenInfoReply): ptr UncheckedArray[XcbRandrScreenSize] {.importc: "xcb_randr_get_screen_info_sizes".}
proc sizesLength*(R: ptr XcbRandrGetScreenInfoReply): cint {.importc: "xcb_randr_get_screen_info_sizes_length".}
proc sizesIterator*(R: ptr XcbRandrGetScreenInfoReply): XcbRandrScreenSizeIterator {.importc: "xcb_randr_get_screen_info_sizes_iterator".}
proc ratesLength*(R: ptr XcbRandrGetScreenInfoReply): cint {.importc: "xcb_randr_get_screen_info_rates_length".}
proc ratesIterator*(R: ptr XcbRandrGetScreenInfoReply): XcbRandrRefreshRatesIterator {.importc: "xcb_randr_get_screen_info_rates_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetScreenInfoCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetScreenInfoReply {.importc: "xcb_randr_get_screen_info_reply".}
proc getScreenSizeRange*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenSizeRangeCookie {.importc: "xcb_randr_get_screen_size_range".}
proc getScreenSizeRangeUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenSizeRangeCookie {.importc: "xcb_randr_get_screen_size_range_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetScreenSizeRangeCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetScreenSizeRangeReply {.importc: "xcb_randr_get_screen_size_range_reply".}
proc setScreenSizeChecked*(c: ptr XcbConnection; window: XcbWindow; width: uint16; height: uint16; mmWidth: uint32; mmHeight: uint32): XcbVoidCookie {.discardable, importc: "xcb_randr_set_screen_size_checked".}
proc setScreenSize*(c: ptr XcbConnection; window: XcbWindow; width: uint16; height: uint16; mmWidth: uint32; mmHeight: uint32): XcbVoidCookie {.discardable, importc: "xcb_randr_set_screen_size".}
proc next*(i: ptr XcbRandrModeInfoIterator) {.importc: "xcb_randr_mode_info_next".}
proc iterEnd*(i: XcbRandrModeInfoIterator): XcbGenericIterator {.importc: "xcb_randr_mode_info_end".}
proc getScreenResourcesSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_screen_resources_sizeof".}
proc getScreenResources*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenResourcesCookie {.importc: "xcb_randr_get_screen_resources".}
proc getScreenResourcesUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenResourcesCookie {.importc: "xcb_randr_get_screen_resources_unchecked".}
proc crtcs*(R: ptr XcbRandrGetScreenResourcesReply): ptr UncheckedArray[XcbRandrCrtc] {.importc: "xcb_randr_get_screen_resources_crtcs".}
proc crtcsLength*(R: ptr XcbRandrGetScreenResourcesReply): cint {.importc: "xcb_randr_get_screen_resources_crtcs_length".}
proc crtcsEnd*(R: ptr XcbRandrGetScreenResourcesReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_crtcs_end".}
proc outputs*(R: ptr XcbRandrGetScreenResourcesReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_screen_resources_outputs".}
proc outputsLength*(R: ptr XcbRandrGetScreenResourcesReply): cint {.importc: "xcb_randr_get_screen_resources_outputs_length".}
proc outputsEnd*(R: ptr XcbRandrGetScreenResourcesReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_outputs_end".}
proc modes*(R: ptr XcbRandrGetScreenResourcesReply): ptr UncheckedArray[XcbRandrModeInfo] {.importc: "xcb_randr_get_screen_resources_modes".}
proc modesLength*(R: ptr XcbRandrGetScreenResourcesReply): cint {.importc: "xcb_randr_get_screen_resources_modes_length".}
proc modesIterator*(R: ptr XcbRandrGetScreenResourcesReply): XcbRandrModeInfoIterator {.importc: "xcb_randr_get_screen_resources_modes_iterator".}
proc names*(R: ptr XcbRandrGetScreenResourcesReply): ptr UncheckedArray[uint8] {.importc: "xcb_randr_get_screen_resources_names".}
proc namesLength*(R: ptr XcbRandrGetScreenResourcesReply): cint {.importc: "xcb_randr_get_screen_resources_names_length".}
proc namesEnd*(R: ptr XcbRandrGetScreenResourcesReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_names_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetScreenResourcesCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetScreenResourcesReply {.importc: "xcb_randr_get_screen_resources_reply".}
proc getOutputInfoSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_output_info_sizeof".}
proc getInfo*(c: ptr XcbConnection; output: XcbRandrOutput; configTimestamp: XcbTimestamp): XcbRandrGetOutputInfoCookie {.importc: "xcb_randr_get_output_info".}
proc getInfoUnchecked*(c: ptr XcbConnection; output: XcbRandrOutput; configTimestamp: XcbTimestamp): XcbRandrGetOutputInfoCookie {.importc: "xcb_randr_get_output_info_unchecked".}
proc crtcs*(R: ptr XcbRandrGetOutputInfoReply): ptr UncheckedArray[XcbRandrCrtc] {.importc: "xcb_randr_get_output_info_crtcs".}
proc crtcsLength*(R: ptr XcbRandrGetOutputInfoReply): cint {.importc: "xcb_randr_get_output_info_crtcs_length".}
proc crtcsEnd*(R: ptr XcbRandrGetOutputInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_output_info_crtcs_end".}
proc modes*(R: ptr XcbRandrGetOutputInfoReply): ptr UncheckedArray[XcbRandrMode] {.importc: "xcb_randr_get_output_info_modes".}
proc modesLength*(R: ptr XcbRandrGetOutputInfoReply): cint {.importc: "xcb_randr_get_output_info_modes_length".}
proc modesEnd*(R: ptr XcbRandrGetOutputInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_output_info_modes_end".}
proc clones*(R: ptr XcbRandrGetOutputInfoReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_output_info_clones".}
proc clonesLength*(R: ptr XcbRandrGetOutputInfoReply): cint {.importc: "xcb_randr_get_output_info_clones_length".}
proc clonesEnd*(R: ptr XcbRandrGetOutputInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_output_info_clones_end".}
proc name*(R: ptr XcbRandrGetOutputInfoReply): ptr UncheckedArray[uint8] {.importc: "xcb_randr_get_output_info_name".}
proc nameLength*(R: ptr XcbRandrGetOutputInfoReply): cint {.importc: "xcb_randr_get_output_info_name_length".}
proc nameEnd*(R: ptr XcbRandrGetOutputInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_output_info_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetOutputInfoCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetOutputInfoReply {.importc: "xcb_randr_get_output_info_reply".}
proc listOutputPropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_randr_list_output_properties_sizeof".}
proc listProperties*(c: ptr XcbConnection; output: XcbRandrOutput): XcbRandrListOutputPropertiesCookie {.importc: "xcb_randr_list_output_properties".}
proc listPropertiesUnchecked*(c: ptr XcbConnection; output: XcbRandrOutput): XcbRandrListOutputPropertiesCookie {.importc: "xcb_randr_list_output_properties_unchecked".}
proc atoms*(R: ptr XcbRandrListOutputPropertiesReply): ptr UncheckedArray[XcbAtom] {.importc: "xcb_randr_list_output_properties_atoms".}
proc atomsLength*(R: ptr XcbRandrListOutputPropertiesReply): cint {.importc: "xcb_randr_list_output_properties_atoms_length".}
proc atomsEnd*(R: ptr XcbRandrListOutputPropertiesReply): XcbGenericIterator {.importc: "xcb_randr_list_output_properties_atoms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrListOutputPropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbRandrListOutputPropertiesReply {.importc: "xcb_randr_list_output_properties_reply".}
proc queryOutputPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_query_output_property_sizeof".}
proc queryProperty*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom): XcbRandrQueryOutputPropertyCookie {.importc: "xcb_randr_query_output_property".}
proc queryPropertyUnchecked*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom): XcbRandrQueryOutputPropertyCookie {.importc: "xcb_randr_query_output_property_unchecked".}
proc validValues*(R: ptr XcbRandrQueryOutputPropertyReply): ptr UncheckedArray[int32] {.importc: "xcb_randr_query_output_property_valid_values".}
proc validValuesLength*(R: ptr XcbRandrQueryOutputPropertyReply): cint {.importc: "xcb_randr_query_output_property_valid_values_length".}
proc validValuesEnd*(R: ptr XcbRandrQueryOutputPropertyReply): XcbGenericIterator {.importc: "xcb_randr_query_output_property_valid_values_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrQueryOutputPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbRandrQueryOutputPropertyReply {.importc: "xcb_randr_query_output_property_reply".}
proc configureOutputPropertySizeof*(buffer: pointer; valuesLen: uint32): cint {.importc: "xcb_randr_configure_output_property_sizeof".}
proc configurePropertyChecked*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; pending: uint8; range: uint8; valuesLen: uint32; values: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_randr_configure_output_property_checked".}
proc configureProperty*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; pending: uint8; range: uint8; valuesLen: uint32; values: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_randr_configure_output_property".}
proc values*(R: ptr XcbRandrConfigureOutputPropertyRequest): ptr UncheckedArray[int32] {.importc: "xcb_randr_configure_output_property_values".}
proc valuesLength*(R: ptr XcbRandrConfigureOutputPropertyRequest): cint {.importc: "xcb_randr_configure_output_property_values_length".}
proc valuesEnd*(R: ptr XcbRandrConfigureOutputPropertyRequest): XcbGenericIterator {.importc: "xcb_randr_configure_output_property_values_end".}
proc changeOutputPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_change_output_property_sizeof".}
proc changePropertyChecked*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; `type`: XcbAtom; format: uint8; mode: XcbPropMode; numUnits: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_randr_change_output_property_checked".}
proc changeProperty*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; `type`: XcbAtom; format: uint8; mode: XcbPropMode; numUnits: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_randr_change_output_property".}
proc data*(R: ptr XcbRandrChangeOutputPropertyRequest): pointer {.importc: "xcb_randr_change_output_property_data".}
proc dataLength*(R: ptr XcbRandrChangeOutputPropertyRequest): cint {.importc: "xcb_randr_change_output_property_data_length".}
proc dataEnd*(R: ptr XcbRandrChangeOutputPropertyRequest): XcbGenericIterator {.importc: "xcb_randr_change_output_property_data_end".}
proc deletePropertyChecked*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_output_property_checked".}
proc deleteProperty*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_output_property".}
proc getOutputPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_output_property_sizeof".}
proc getProperty*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32; delete: uint8; pending: uint8): XcbRandrGetOutputPropertyCookie {.importc: "xcb_randr_get_output_property".}
proc getPropertyUnchecked*(c: ptr XcbConnection; output: XcbRandrOutput; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32; delete: uint8; pending: uint8): XcbRandrGetOutputPropertyCookie {.importc: "xcb_randr_get_output_property_unchecked".}
proc data*(R: ptr XcbRandrGetOutputPropertyReply): ptr UncheckedArray[uint8] {.importc: "xcb_randr_get_output_property_data".}
proc dataLength*(R: ptr XcbRandrGetOutputPropertyReply): cint {.importc: "xcb_randr_get_output_property_data_length".}
proc dataEnd*(R: ptr XcbRandrGetOutputPropertyReply): XcbGenericIterator {.importc: "xcb_randr_get_output_property_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetOutputPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetOutputPropertyReply {.importc: "xcb_randr_get_output_property_reply".}
proc createModeSizeof*(buffer: pointer; nameLen: uint32): cint {.importc: "xcb_randr_create_mode_sizeof".}
proc createMode*(c: ptr XcbConnection; window: XcbWindow; modeInfo: XcbRandrModeInfo; nameLen: uint32; name: cstring): XcbRandrCreateModeCookie {.importc: "xcb_randr_create_mode".}
proc createModeUnchecked*(c: ptr XcbConnection; window: XcbWindow; modeInfo: XcbRandrModeInfo; nameLen: uint32; name: cstring): XcbRandrCreateModeCookie {.importc: "xcb_randr_create_mode_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrCreateModeCookie; e: ptr ptr XcbGenericError): ptr XcbRandrCreateModeReply {.importc: "xcb_randr_create_mode_reply".}
proc destroyChecked*(c: ptr XcbConnection; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_destroy_mode_checked".}
proc destroy*(c: ptr XcbConnection; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_destroy_mode".}
proc addModeChecked*(c: ptr XcbConnection; output: XcbRandrOutput; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_add_output_mode_checked".}
proc addMode*(c: ptr XcbConnection; output: XcbRandrOutput; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_add_output_mode".}
proc deleteModeChecked*(c: ptr XcbConnection; output: XcbRandrOutput; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_output_mode_checked".}
proc deleteMode*(c: ptr XcbConnection; output: XcbRandrOutput; mode: XcbRandrMode): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_output_mode".}
proc getCrtcInfoSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_crtc_info_sizeof".}
proc getCrtcInfo*(c: ptr XcbConnection; crtc: XcbRandrCrtc; configTimestamp: XcbTimestamp): XcbRandrGetCrtcInfoCookie {.importc: "xcb_randr_get_crtc_info".}
proc getCrtcInfoUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc; configTimestamp: XcbTimestamp): XcbRandrGetCrtcInfoCookie {.importc: "xcb_randr_get_crtc_info_unchecked".}
proc outputs*(R: ptr XcbRandrGetCrtcInfoReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_crtc_info_outputs".}
proc outputsLength*(R: ptr XcbRandrGetCrtcInfoReply): cint {.importc: "xcb_randr_get_crtc_info_outputs_length".}
proc outputsEnd*(R: ptr XcbRandrGetCrtcInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_info_outputs_end".}
proc possible*(R: ptr XcbRandrGetCrtcInfoReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_crtc_info_possible".}
proc possibleLength*(R: ptr XcbRandrGetCrtcInfoReply): cint {.importc: "xcb_randr_get_crtc_info_possible_length".}
proc possibleEnd*(R: ptr XcbRandrGetCrtcInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_info_possible_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetCrtcInfoCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetCrtcInfoReply {.importc: "xcb_randr_get_crtc_info_reply".}
proc setCrtcConfigSizeof*(buffer: pointer; outputsLen: uint32): cint {.importc: "xcb_randr_set_crtc_config_sizeof".}
proc setCrtcConfig*(c: ptr XcbConnection; crtc: XcbRandrCrtc; timestamp: XcbTimestamp; configTimestamp: XcbTimestamp; x: int16; y: int16; mode: XcbRandrMode; rotation: uint16; outputsLen: uint32; outputs: ptr XcbRandrOutput): XcbRandrSetCrtcConfigCookie {.importc: "xcb_randr_set_crtc_config".}
proc setCrtcConfigUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc; timestamp: XcbTimestamp; configTimestamp: XcbTimestamp; x: int16; y: int16; mode: XcbRandrMode; rotation: uint16; outputsLen: uint32; outputs: ptr XcbRandrOutput): XcbRandrSetCrtcConfigCookie {.importc: "xcb_randr_set_crtc_config_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrSetCrtcConfigCookie; e: ptr ptr XcbGenericError): ptr XcbRandrSetCrtcConfigReply {.importc: "xcb_randr_set_crtc_config_reply".}
proc getGammaSize*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcGammaSizeCookie {.importc: "xcb_randr_get_crtc_gamma_size".}
proc getGammaSizeUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcGammaSizeCookie {.importc: "xcb_randr_get_crtc_gamma_size_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetCrtcGammaSizeCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetCrtcGammaSizeReply {.importc: "xcb_randr_get_crtc_gamma_size_reply".}
proc getCrtcGammaSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_crtc_gamma_sizeof".}
proc getGamma*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcGammaCookie {.importc: "xcb_randr_get_crtc_gamma".}
proc getGammaUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcGammaCookie {.importc: "xcb_randr_get_crtc_gamma_unchecked".}
proc red*(R: ptr XcbRandrGetCrtcGammaReply): ptr UncheckedArray[uint16] {.importc: "xcb_randr_get_crtc_gamma_red".}
proc redLength*(R: ptr XcbRandrGetCrtcGammaReply): cint {.importc: "xcb_randr_get_crtc_gamma_red_length".}
proc redEnd*(R: ptr XcbRandrGetCrtcGammaReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_gamma_red_end".}
proc green*(R: ptr XcbRandrGetCrtcGammaReply): ptr UncheckedArray[uint16] {.importc: "xcb_randr_get_crtc_gamma_green".}
proc greenLength*(R: ptr XcbRandrGetCrtcGammaReply): cint {.importc: "xcb_randr_get_crtc_gamma_green_length".}
proc greenEnd*(R: ptr XcbRandrGetCrtcGammaReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_gamma_green_end".}
proc blue*(R: ptr XcbRandrGetCrtcGammaReply): ptr UncheckedArray[uint16] {.importc: "xcb_randr_get_crtc_gamma_blue".}
proc blueLength*(R: ptr XcbRandrGetCrtcGammaReply): cint {.importc: "xcb_randr_get_crtc_gamma_blue_length".}
proc blueEnd*(R: ptr XcbRandrGetCrtcGammaReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_gamma_blue_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetCrtcGammaCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetCrtcGammaReply {.importc: "xcb_randr_get_crtc_gamma_reply".}
proc setCrtcGammaSizeof*(buffer: pointer): cint {.importc: "xcb_randr_set_crtc_gamma_sizeof".}
proc setGammaChecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc; size: uint16; red: ptr uint16; green: ptr uint16; blue: ptr uint16): XcbVoidCookie {.discardable, importc: "xcb_randr_set_crtc_gamma_checked".}
proc setGamma*(c: ptr XcbConnection; crtc: XcbRandrCrtc; size: uint16; red: ptr uint16; green: ptr uint16; blue: ptr uint16): XcbVoidCookie {.discardable, importc: "xcb_randr_set_crtc_gamma".}
proc red*(R: ptr XcbRandrSetCrtcGammaRequest): ptr UncheckedArray[uint16] {.importc: "xcb_randr_set_crtc_gamma_red".}
proc redLength*(R: ptr XcbRandrSetCrtcGammaRequest): cint {.importc: "xcb_randr_set_crtc_gamma_red_length".}
proc redEnd*(R: ptr XcbRandrSetCrtcGammaRequest): XcbGenericIterator {.importc: "xcb_randr_set_crtc_gamma_red_end".}
proc green*(R: ptr XcbRandrSetCrtcGammaRequest): ptr UncheckedArray[uint16] {.importc: "xcb_randr_set_crtc_gamma_green".}
proc greenLength*(R: ptr XcbRandrSetCrtcGammaRequest): cint {.importc: "xcb_randr_set_crtc_gamma_green_length".}
proc greenEnd*(R: ptr XcbRandrSetCrtcGammaRequest): XcbGenericIterator {.importc: "xcb_randr_set_crtc_gamma_green_end".}
proc blue*(R: ptr XcbRandrSetCrtcGammaRequest): ptr UncheckedArray[uint16] {.importc: "xcb_randr_set_crtc_gamma_blue".}
proc blueLength*(R: ptr XcbRandrSetCrtcGammaRequest): cint {.importc: "xcb_randr_set_crtc_gamma_blue_length".}
proc blueEnd*(R: ptr XcbRandrSetCrtcGammaRequest): XcbGenericIterator {.importc: "xcb_randr_set_crtc_gamma_blue_end".}
proc getScreenResourcesCurrentSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_screen_resources_current_sizeof".}
proc getScreenResourcesCurrent*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenResourcesCurrentCookie {.importc: "xcb_randr_get_screen_resources_current".}
proc getScreenResourcesCurrentUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetScreenResourcesCurrentCookie {.importc: "xcb_randr_get_screen_resources_current_unchecked".}
proc crtcs*(R: ptr XcbRandrGetScreenResourcesCurrentReply): ptr UncheckedArray[XcbRandrCrtc] {.importc: "xcb_randr_get_screen_resources_current_crtcs".}
proc crtcsLength*(R: ptr XcbRandrGetScreenResourcesCurrentReply): cint {.importc: "xcb_randr_get_screen_resources_current_crtcs_length".}
proc crtcsEnd*(R: ptr XcbRandrGetScreenResourcesCurrentReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_current_crtcs_end".}
proc outputs*(R: ptr XcbRandrGetScreenResourcesCurrentReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_screen_resources_current_outputs".}
proc outputsLength*(R: ptr XcbRandrGetScreenResourcesCurrentReply): cint {.importc: "xcb_randr_get_screen_resources_current_outputs_length".}
proc outputsEnd*(R: ptr XcbRandrGetScreenResourcesCurrentReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_current_outputs_end".}
proc modes*(R: ptr XcbRandrGetScreenResourcesCurrentReply): ptr UncheckedArray[XcbRandrModeInfo] {.importc: "xcb_randr_get_screen_resources_current_modes".}
proc modesLength*(R: ptr XcbRandrGetScreenResourcesCurrentReply): cint {.importc: "xcb_randr_get_screen_resources_current_modes_length".}
proc modesIterator*(R: ptr XcbRandrGetScreenResourcesCurrentReply): XcbRandrModeInfoIterator {.importc: "xcb_randr_get_screen_resources_current_modes_iterator".}
proc names*(R: ptr XcbRandrGetScreenResourcesCurrentReply): ptr UncheckedArray[uint8] {.importc: "xcb_randr_get_screen_resources_current_names".}
proc namesLength*(R: ptr XcbRandrGetScreenResourcesCurrentReply): cint {.importc: "xcb_randr_get_screen_resources_current_names_length".}
proc namesEnd*(R: ptr XcbRandrGetScreenResourcesCurrentReply): XcbGenericIterator {.importc: "xcb_randr_get_screen_resources_current_names_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetScreenResourcesCurrentCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetScreenResourcesCurrentReply {.importc: "xcb_randr_get_screen_resources_current_reply".}
proc setCrtcTransformSizeof*(buffer: pointer; filterParamsLen: uint32): cint {.importc: "xcb_randr_set_crtc_transform_sizeof".}
proc setTransformChecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc; transform: XcbRenderTransform; filterLen: uint16; filterName: cstring; filterParamsLen: uint32; filterParams: ptr XcbRenderFixed): XcbVoidCookie {.discardable, importc: "xcb_randr_set_crtc_transform_checked".}
proc setTransform*(c: ptr XcbConnection; crtc: XcbRandrCrtc; transform: XcbRenderTransform; filterLen: uint16; filterName: cstring; filterParamsLen: uint32; filterParams: ptr XcbRenderFixed): XcbVoidCookie {.discardable, importc: "xcb_randr_set_crtc_transform".}
proc name*(R: ptr XcbRandrSetCrtcTransformRequest): ptr UncheckedArray[char] {.importc: "xcb_randr_set_crtc_transform_filter_name".}
proc nameLength*(R: ptr XcbRandrSetCrtcTransformRequest): cint {.importc: "xcb_randr_set_crtc_transform_filter_name_length".}
proc nameEnd*(R: ptr XcbRandrSetCrtcTransformRequest): XcbGenericIterator {.importc: "xcb_randr_set_crtc_transform_filter_name_end".}
proc params*(R: ptr XcbRandrSetCrtcTransformRequest): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_randr_set_crtc_transform_filter_params".}
proc paramsLength*(R: ptr XcbRandrSetCrtcTransformRequest): cint {.importc: "xcb_randr_set_crtc_transform_filter_params_length".}
proc paramsEnd*(R: ptr XcbRandrSetCrtcTransformRequest): XcbGenericIterator {.importc: "xcb_randr_set_crtc_transform_filter_params_end".}
proc getCrtcTransformSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_crtc_transform_sizeof".}
proc getTransform*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcTransformCookie {.importc: "xcb_randr_get_crtc_transform".}
proc getTransformUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetCrtcTransformCookie {.importc: "xcb_randr_get_crtc_transform_unchecked".}
proc pendingFilterName*(R: ptr XcbRandrGetCrtcTransformReply): ptr UncheckedArray[char] {.importc: "xcb_randr_get_crtc_transform_pending_filter_name".}
proc pendingFilterNameLength*(R: ptr XcbRandrGetCrtcTransformReply): cint {.importc: "xcb_randr_get_crtc_transform_pending_filter_name_length".}
proc pendingFilterNameEnd*(R: ptr XcbRandrGetCrtcTransformReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_transform_pending_filter_name_end".}
proc pendingParams*(R: ptr XcbRandrGetCrtcTransformReply): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_randr_get_crtc_transform_pending_params".}
proc pendingParamsLength*(R: ptr XcbRandrGetCrtcTransformReply): cint {.importc: "xcb_randr_get_crtc_transform_pending_params_length".}
proc pendingParamsEnd*(R: ptr XcbRandrGetCrtcTransformReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_transform_pending_params_end".}
proc currentFilterName*(R: ptr XcbRandrGetCrtcTransformReply): ptr UncheckedArray[char] {.importc: "xcb_randr_get_crtc_transform_current_filter_name".}
proc currentFilterNameLength*(R: ptr XcbRandrGetCrtcTransformReply): cint {.importc: "xcb_randr_get_crtc_transform_current_filter_name_length".}
proc currentFilterNameEnd*(R: ptr XcbRandrGetCrtcTransformReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_transform_current_filter_name_end".}
proc currentParams*(R: ptr XcbRandrGetCrtcTransformReply): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_randr_get_crtc_transform_current_params".}
proc currentParamsLength*(R: ptr XcbRandrGetCrtcTransformReply): cint {.importc: "xcb_randr_get_crtc_transform_current_params_length".}
proc currentParamsEnd*(R: ptr XcbRandrGetCrtcTransformReply): XcbGenericIterator {.importc: "xcb_randr_get_crtc_transform_current_params_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetCrtcTransformCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetCrtcTransformReply {.importc: "xcb_randr_get_crtc_transform_reply".}
proc getPanning*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetPanningCookie {.importc: "xcb_randr_get_panning".}
proc getPanningUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc): XcbRandrGetPanningCookie {.importc: "xcb_randr_get_panning_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetPanningCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetPanningReply {.importc: "xcb_randr_get_panning_reply".}
proc setPanning*(c: ptr XcbConnection; crtc: XcbRandrCrtc; timestamp: XcbTimestamp; left: uint16; top: uint16; width: uint16; height: uint16; trackLeft: uint16; trackTop: uint16; trackWidth: uint16; trackHeight: uint16; borderLeft: int16; borderTop: int16; borderRight: int16; borderBottom: int16): XcbRandrSetPanningCookie {.importc: "xcb_randr_set_panning".}
proc setPanningUnchecked*(c: ptr XcbConnection; crtc: XcbRandrCrtc; timestamp: XcbTimestamp; left: uint16; top: uint16; width: uint16; height: uint16; trackLeft: uint16; trackTop: uint16; trackWidth: uint16; trackHeight: uint16; borderLeft: int16; borderTop: int16; borderRight: int16; borderBottom: int16): XcbRandrSetPanningCookie {.importc: "xcb_randr_set_panning_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrSetPanningCookie; e: ptr ptr XcbGenericError): ptr XcbRandrSetPanningReply {.importc: "xcb_randr_set_panning_reply".}
proc setOutputPrimaryChecked*(c: ptr XcbConnection; window: XcbWindow; output: XcbRandrOutput): XcbVoidCookie {.discardable, importc: "xcb_randr_set_output_primary_checked".}
proc setOutputPrimary*(c: ptr XcbConnection; window: XcbWindow; output: XcbRandrOutput): XcbVoidCookie {.discardable, importc: "xcb_randr_set_output_primary".}
proc getOutputPrimary*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetOutputPrimaryCookie {.importc: "xcb_randr_get_output_primary".}
proc getOutputPrimaryUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetOutputPrimaryCookie {.importc: "xcb_randr_get_output_primary_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetOutputPrimaryCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetOutputPrimaryReply {.importc: "xcb_randr_get_output_primary_reply".}
proc getProvidersSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_providers_sizeof".}
proc getProviders*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetProvidersCookie {.importc: "xcb_randr_get_providers".}
proc getProvidersUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbRandrGetProvidersCookie {.importc: "xcb_randr_get_providers_unchecked".}
proc providers*(R: ptr XcbRandrGetProvidersReply): ptr UncheckedArray[XcbRandrProvider] {.importc: "xcb_randr_get_providers_providers".}
proc providersLength*(R: ptr XcbRandrGetProvidersReply): cint {.importc: "xcb_randr_get_providers_providers_length".}
proc providersEnd*(R: ptr XcbRandrGetProvidersReply): XcbGenericIterator {.importc: "xcb_randr_get_providers_providers_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetProvidersCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetProvidersReply {.importc: "xcb_randr_get_providers_reply".}
proc getProviderInfoSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_provider_info_sizeof".}
proc getInfo*(c: ptr XcbConnection; provider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbRandrGetProviderInfoCookie {.importc: "xcb_randr_get_provider_info".}
proc getInfoUnchecked*(c: ptr XcbConnection; provider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbRandrGetProviderInfoCookie {.importc: "xcb_randr_get_provider_info_unchecked".}
proc crtcs*(R: ptr XcbRandrGetProviderInfoReply): ptr UncheckedArray[XcbRandrCrtc] {.importc: "xcb_randr_get_provider_info_crtcs".}
proc crtcsLength*(R: ptr XcbRandrGetProviderInfoReply): cint {.importc: "xcb_randr_get_provider_info_crtcs_length".}
proc crtcsEnd*(R: ptr XcbRandrGetProviderInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_info_crtcs_end".}
proc outputs*(R: ptr XcbRandrGetProviderInfoReply): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_get_provider_info_outputs".}
proc outputsLength*(R: ptr XcbRandrGetProviderInfoReply): cint {.importc: "xcb_randr_get_provider_info_outputs_length".}
proc outputsEnd*(R: ptr XcbRandrGetProviderInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_info_outputs_end".}
proc associatedProviders*(R: ptr XcbRandrGetProviderInfoReply): ptr UncheckedArray[XcbRandrProvider] {.importc: "xcb_randr_get_provider_info_associated_providers".}
proc associatedProvidersLength*(R: ptr XcbRandrGetProviderInfoReply): cint {.importc: "xcb_randr_get_provider_info_associated_providers_length".}
proc associatedProvidersEnd*(R: ptr XcbRandrGetProviderInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_info_associated_providers_end".}
proc associatedCapability*(R: ptr XcbRandrGetProviderInfoReply): ptr UncheckedArray[uint32] {.importc: "xcb_randr_get_provider_info_associated_capability".}
proc associatedCapabilityLength*(R: ptr XcbRandrGetProviderInfoReply): cint {.importc: "xcb_randr_get_provider_info_associated_capability_length".}
proc associatedCapabilityEnd*(R: ptr XcbRandrGetProviderInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_info_associated_capability_end".}
proc name*(R: ptr XcbRandrGetProviderInfoReply): cstring {.importc: "xcb_randr_get_provider_info_name".}
proc nameLength*(R: ptr XcbRandrGetProviderInfoReply): cint {.importc: "xcb_randr_get_provider_info_name_length".}
proc nameEnd*(R: ptr XcbRandrGetProviderInfoReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_info_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetProviderInfoCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetProviderInfoReply {.importc: "xcb_randr_get_provider_info_reply".}
proc setOffloadSinkChecked*(c: ptr XcbConnection; provider: XcbRandrProvider; sinkProvider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_randr_set_provider_offload_sink_checked".}
proc setOffloadSink*(c: ptr XcbConnection; provider: XcbRandrProvider; sinkProvider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_randr_set_provider_offload_sink".}
proc setOutputSourceChecked*(c: ptr XcbConnection; provider: XcbRandrProvider; sourceProvider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_randr_set_provider_output_source_checked".}
proc setOutputSource*(c: ptr XcbConnection; provider: XcbRandrProvider; sourceProvider: XcbRandrProvider; configTimestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_randr_set_provider_output_source".}
proc listProviderPropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_randr_list_provider_properties_sizeof".}
proc listProperties*(c: ptr XcbConnection; provider: XcbRandrProvider): XcbRandrListProviderPropertiesCookie {.importc: "xcb_randr_list_provider_properties".}
proc listPropertiesUnchecked*(c: ptr XcbConnection; provider: XcbRandrProvider): XcbRandrListProviderPropertiesCookie {.importc: "xcb_randr_list_provider_properties_unchecked".}
proc atoms*(R: ptr XcbRandrListProviderPropertiesReply): ptr UncheckedArray[XcbAtom] {.importc: "xcb_randr_list_provider_properties_atoms".}
proc atomsLength*(R: ptr XcbRandrListProviderPropertiesReply): cint {.importc: "xcb_randr_list_provider_properties_atoms_length".}
proc atomsEnd*(R: ptr XcbRandrListProviderPropertiesReply): XcbGenericIterator {.importc: "xcb_randr_list_provider_properties_atoms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrListProviderPropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbRandrListProviderPropertiesReply {.importc: "xcb_randr_list_provider_properties_reply".}
proc queryProviderPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_query_provider_property_sizeof".}
proc QueryProperty*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom): XcbRandrQueryProviderPropertyCookie {.importc: "xcb_randr_query_provider_property".}
proc QueryPropertyUnchecked*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom): XcbRandrQueryProviderPropertyCookie {.importc: "xcb_randr_query_provider_property_unchecked".}
proc values*(R: ptr XcbRandrQueryProviderPropertyReply): ptr UncheckedArray[int32] {.importc: "xcb_randr_query_provider_property_valid_values".}
proc valuesLength*(R: ptr XcbRandrQueryProviderPropertyReply): cint {.importc: "xcb_randr_query_provider_property_valid_values_length".}
proc valuesEnd*(R: ptr XcbRandrQueryProviderPropertyReply): XcbGenericIterator {.importc: "xcb_randr_query_provider_property_valid_values_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrQueryProviderPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbRandrQueryProviderPropertyReply {.importc: "xcb_randr_query_provider_property_reply".}
proc configureProviderPropertySizeof*(buffer: pointer; valuesLen: uint32): cint {.importc: "xcb_randr_configure_provider_property_sizeof".}
proc configurePropertyChecked*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; pending: uint8; range: uint8; valuesLen: uint32; values: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_randr_configure_provider_property_checked".}
proc configureProperty*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; pending: uint8; range: uint8; valuesLen: uint32; values: ptr int32): XcbVoidCookie {.discardable, importc: "xcb_randr_configure_provider_property".}
proc values*(R: ptr XcbRandrConfigureProviderPropertyRequest): ptr UncheckedArray[int32] {.importc: "xcb_randr_configure_provider_property_values".}
proc valuesLength*(R: ptr XcbRandrConfigureProviderPropertyRequest): cint {.importc: "xcb_randr_configure_provider_property_values_length".}
proc valuesEnd*(R: ptr XcbRandrConfigureProviderPropertyRequest): XcbGenericIterator {.importc: "xcb_randr_configure_provider_property_values_end".}
proc changeProviderPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_change_provider_property_sizeof".}
proc changePropertyChecked*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; `type`: XcbAtom; format: uint8; mode: XcbPropMode; numItems: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_randr_change_provider_property_checked".}
proc changeProperty*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; `type`: XcbAtom; format: uint8; mode: XcbPropMode; numItems: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_randr_change_provider_property".}
proc data*(R: ptr XcbRandrChangeProviderPropertyRequest): pointer {.importc: "xcb_randr_change_provider_property_data".}
proc dataLength*(R: ptr XcbRandrChangeProviderPropertyRequest): cint {.importc: "xcb_randr_change_provider_property_data_length".}
proc dataEnd*(R: ptr XcbRandrChangeProviderPropertyRequest): XcbGenericIterator {.importc: "xcb_randr_change_provider_property_data_end".}
proc deletePropertyChecked*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_provider_property_checked".}
proc deleteProperty*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_provider_property".}
proc getProviderPropertySizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_provider_property_sizeof".}
proc getProperty*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32; delete: uint8; pending: uint8): XcbRandrGetProviderPropertyCookie {.importc: "xcb_randr_get_provider_property".}
proc getPropertyUnchecked*(c: ptr XcbConnection; provider: XcbRandrProvider; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32; delete: uint8; pending: uint8): XcbRandrGetProviderPropertyCookie {.importc: "xcb_randr_get_provider_property_unchecked".}
proc data*(R: ptr XcbRandrGetProviderPropertyReply): pointer {.importc: "xcb_randr_get_provider_property_data".}
proc dataLength*(R: ptr XcbRandrGetProviderPropertyReply): cint {.importc: "xcb_randr_get_provider_property_data_length".}
proc dataEnd*(R: ptr XcbRandrGetProviderPropertyReply): XcbGenericIterator {.importc: "xcb_randr_get_provider_property_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetProviderPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetProviderPropertyReply {.importc: "xcb_randr_get_provider_property_reply".}
proc next*(i: ptr XcbRandrCrtcChangeIterator) {.importc: "xcb_randr_crtc_change_next".}
proc iterEnd*(i: XcbRandrCrtcChangeIterator): XcbGenericIterator {.importc: "xcb_randr_crtc_change_end".}
proc next*(i: ptr XcbRandrOutputChangeIterator) {.importc: "xcb_randr_output_change_next".}
proc iterEnd*(i: XcbRandrOutputChangeIterator): XcbGenericIterator {.importc: "xcb_randr_output_change_end".}
proc next*(i: ptr XcbRandrOutputPropertyIterator) {.importc: "xcb_randr_output_property_next".}
proc iterEnd*(i: XcbRandrOutputPropertyIterator): XcbGenericIterator {.importc: "xcb_randr_output_property_end".}
proc next*(i: ptr XcbRandrProviderChangeIterator) {.importc: "xcb_randr_provider_change_next".}
proc iterEnd*(i: XcbRandrProviderChangeIterator): XcbGenericIterator {.importc: "xcb_randr_provider_change_end".}
proc next*(i: ptr XcbRandrProviderPropertyIterator) {.importc: "xcb_randr_provider_property_next".}
proc iterEnd*(i: XcbRandrProviderPropertyIterator): XcbGenericIterator {.importc: "xcb_randr_provider_property_end".}
proc next*(i: ptr XcbRandrResourceChangeIterator) {.importc: "xcb_randr_resource_change_next".}
proc iterEnd*(i: XcbRandrResourceChangeIterator): XcbGenericIterator {.importc: "xcb_randr_resource_change_end".}
proc monitorInfoSizeof*(buffer: pointer): cint {.importc: "xcb_randr_monitor_info_sizeof".}
proc outputs*(R: ptr XcbRandrMonitorInfo): ptr UncheckedArray[XcbRandrOutput] {.importc: "xcb_randr_monitor_info_outputs".}
proc outputsLength*(R: ptr XcbRandrMonitorInfo): cint {.importc: "xcb_randr_monitor_info_outputs_length".}
proc outputsEnd*(R: ptr XcbRandrMonitorInfo): XcbGenericIterator {.importc: "xcb_randr_monitor_info_outputs_end".}
proc next*(i: ptr XcbRandrMonitorInfoIterator) {.importc: "xcb_randr_monitor_info_next".}
proc iterEnd*(i: XcbRandrMonitorInfoIterator): XcbGenericIterator {.importc: "xcb_randr_monitor_info_end".}
proc getMonitorsSizeof*(buffer: pointer): cint {.importc: "xcb_randr_get_monitors_sizeof".}
proc getMonitors*(c: ptr XcbConnection; window: XcbWindow; getActive: uint8): XcbRandrGetMonitorsCookie {.importc: "xcb_randr_get_monitors".}
proc getMonitorsUnchecked*(c: ptr XcbConnection; window: XcbWindow; getActive: uint8): XcbRandrGetMonitorsCookie {.importc: "xcb_randr_get_monitors_unchecked".}
proc monitorsLength*(R: ptr XcbRandrGetMonitorsReply): cint {.importc: "xcb_randr_get_monitors_monitors_length".}
proc monitorsIterator*(R: ptr XcbRandrGetMonitorsReply): XcbRandrMonitorInfoIterator {.importc: "xcb_randr_get_monitors_monitors_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrGetMonitorsCookie; e: ptr ptr XcbGenericError): ptr XcbRandrGetMonitorsReply {.importc: "xcb_randr_get_monitors_reply".}
proc setMonitorSizeof*(buffer: pointer): cint {.importc: "xcb_randr_set_monitor_sizeof".}
proc setMonitorChecked*(c: ptr XcbConnection; window: XcbWindow; monitorinfo: ptr XcbRandrMonitorInfo): XcbVoidCookie {.discardable, importc: "xcb_randr_set_monitor_checked".}
proc setMonitor*(c: ptr XcbConnection; window: XcbWindow; monitorinfo: ptr XcbRandrMonitorInfo): XcbVoidCookie {.discardable, importc: "xcb_randr_set_monitor".}
proc monitorInfo*(R: ptr XcbRandrSetMonitorRequest): ptr XcbRandrMonitorInfo {.importc: "xcb_randr_set_monitor_monitorinfo".}
proc deleteMonitorChecked*(c: ptr XcbConnection; window: XcbWindow; name: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_monitor_checked".}
proc deleteMonitor*(c: ptr XcbConnection; window: XcbWindow; name: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_randr_delete_monitor".}
proc createLeaseSizeof*(buffer: pointer): cint {.importc: "xcb_randr_create_lease_sizeof".}
proc createLease*(c: ptr XcbConnection; window: XcbWindow; lid: XcbRandrLease; numCrtcs: uint16; numOutputs: uint16; crtcs: ptr XcbRandrCrtc; outputs: ptr XcbRandrOutput): XcbRandrCreateLeaseCookie {.importc: "xcb_randr_create_lease".}
proc createLeaseUnchecked*(c: ptr XcbConnection; window: XcbWindow; lid: XcbRandrLease; numCrtcs: uint16; numOutputs: uint16; crtcs: ptr XcbRandrCrtc; outputs: ptr XcbRandrOutput): XcbRandrCreateLeaseCookie {.importc: "xcb_randr_create_lease_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRandrCreateLeaseCookie; e: ptr ptr XcbGenericError): ptr XcbRandrCreateLeaseReply {.importc: "xcb_randr_create_lease_reply".}
proc fds*(c: ptr XcbConnection; reply: ptr XcbRandrCreateLeaseReply): ptr UncheckedArray[cint] {.importc: "xcb_randr_create_lease_reply_fds".}
proc freeChecked*(c: ptr XcbConnection; lid: XcbRandrLease; terminate: uint8): XcbVoidCookie {.discardable, importc: "xcb_randr_free_lease_checked".}
proc free*(c: ptr XcbConnection; lid: XcbRandrLease; terminate: uint8): XcbVoidCookie {.discardable, importc: "xcb_randr_free_lease".}
proc next*(i: ptr XcbRandrLeaseNotifyIterator) {.importc: "xcb_randr_lease_notify_next".}
proc iterEnd*(i: XcbRandrLeaseNotifyIterator): XcbGenericIterator {.importc: "xcb_randr_lease_notify_end".}
proc next*(i: ptr XcbRandrNotifyDataIterator) {.importc: "xcb_randr_notify_data_next".}
proc iterEnd*(i: XcbRandrNotifyDataIterator): XcbGenericIterator {.importc: "xcb_randr_notify_data_end".}

{.pop.}
{.pop.}
