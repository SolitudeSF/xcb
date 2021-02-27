{.push header: "xcb/xproto.h".}

const
  xcbKeyPress* = 2
  xcbKeyRelease* = 3
  xcbButtonPress* = 4
  xcbButtonRelease* = 5
  xcbMotionNotify* = 6
  xcbEnterNotify* = 7
  xcbLeaveNotify* = 8
  xcbFocusIn* = 9
  xcbFocusOut* = 10
  xcbKeymapNotify* = 11
  xcbExpose* = 12
  xcbGraphicsExposure* = 13
  xcbNoExposure* = 14
  xcbVisibilityNotify* = 15
  xcbCreateNotify* = 16
  xcbDestroyNotify* = 17
  xcbUnmapNotify* = 18
  xcbMapNotify* = 19
  xcbMapRequest* = 20
  xcbReparentNotify* = 21
  xcbConfigureNotify* = 22
  xcbConfigureRequest* = 23
  xcbGravityNotify* = 24
  xcbResizeRequest* = 25
  xcbCirculateNotify* = 26
  xcbCirculateRequest* = 27
  xcbPropertyNotify* = 28
  xcbSelectionClear* = 29
  xcbSelectionRequest* = 30
  xcbSelectionNotify* = 31
  xcbColormapNotify* = 32
  xcbClientMessage* = 33
  xcbMappingNotify* = 34
  xcbGeGeneric* = 35
  xcbRequest* = 1
  xcbValue* = 2
  xcbWindow* = 3
  xcbPixmap* = 4
  xcbAtom* = 5
  xcbCursor* = 6
  xcbFont* = 7
  xcbMatch* = 8
  xcbDrawable* = 9
  xcbAccess* = 10
  xcbAlloc* = 11
  xcbColormap* = 12
  xcbGContext* = 13
  xcbIdChoice* = 14
  xcbName* = 15
  xcbLength* = 16
  xcbImplementation* = 17
  xcbCreateWindow* = 1
  xcbChangeWindowAttributes* = 2
  xcbGetWindowAttributes* = 3
  xcbDestroyWindow* = 4
  xcbDestroySubwindows* = 5
  xcbChangeSaveSet* = 6
  xcbReparentWindow* = 7
  xcbMapWindow* = 8
  xcbMapSubwindows* = 9
  xcbUnmapWindow* = 10
  xcbUnmapSubwindows* = 11
  xcbConfigureWindow* = 12
  xcbCirculateWindow* = 13
  xcbGetGeometry* = 14
  xcbQueryTree* = 15
  xcbInternAtom* = 16
  xcbGetAtomName* = 17
  xcbChangeProperty* = 18
  xcbDeleteProperty* = 19
  xcbGetProperty* = 20
  xcbListProperties* = 21
  xcbSetSelectionOwner* = 22
  xcbGetSelectionOwner* = 23
  xcbConvertSelection* = 24
  xcbSendEvent* = 25
  xcbGrabPointer* = 26
  xcbUngrabPointer* = 27
  xcbGrabButton* = 28
  xcbUngrabButton* = 29
  xcbChangeActivePointerGrab* = 30
  xcbGrabKeyboard* = 31
  xcbUngrabKeyboard* = 32
  xcbGrabKey* = 33
  xcbUngrabKey* = 34
  xcbAllowEvents* = 35
  xcbGrabServer* = 36
  xcbUngrabServer* = 37
  xcbQueryPointer* = 38
  xcbGetMotionEvents* = 39
  xcbTranslateCoordinates* = 40
  xcbWarpPointer* = 41
  xcbSetInputFocus* = 42
  xcbGetInputFocus* = 43
  xcbQueryKeymap* = 44
  xcbOpenFont* = 45
  xcbCloseFont* = 46
  xcbQueryFont* = 47
  xcbQueryTextExtents* = 48
  xcbListFonts* = 49
  xcbListFontsWithInfo* = 50
  xcbSetFontPath* = 51
  xcbGetFontPath* = 52
  xcbCreatePixmap* = 53
  xcbFreePixmap* = 54
  xcbCreateGc* = 55
  xcbChangeGc* = 56
  xcbCopyGc* = 57
  xcbSetDashes* = 58
  xcbSetClipRectangles* = 59
  xcbFreeGc* = 60
  xcbClearArea* = 61
  xcbCopyArea* = 62
  xcbCopyPlane* = 63
  xcbPolyPoint* = 64
  xcbPolyLine* = 65
  xcbPolySegment* = 66
  xcbPolyRectangle* = 67
  xcbPolyArc* = 68
  xcbFillPoly* = 69
  xcbPolyFillRectangle* = 70
  xcbPolyFillArc* = 71
  xcbPutImage* = 72
  xcbGetImage* = 73
  xcbPolyText8* = 74
  xcbPolyText16* = 75
  xcbImageText8* = 76
  xcbImageText16* = 77
  xcbCreateColormap* = 78
  xcbFreeColormap* = 79
  xcbCopyColormapAndFree* = 80
  xcbInstallColormap* = 81
  xcbUninstallColormap* = 82
  xcbListInstalledColormaps* = 83
  xcbAllocColor* = 84
  xcbAllocNamedColor* = 85
  xcbAllocColorCells* = 86
  xcbAllocColorPlanes* = 87
  xcbFreeColors* = 88
  xcbStoreColors* = 89
  xcbStoreNamedColor* = 90
  xcbQueryColors* = 91
  xcbLookupColor* = 92
  xcbCreateCursor* = 93
  xcbCreateGlyphCursor* = 94
  xcbFreeCursor* = 95
  xcbRecolorCursor* = 96
  xcbQueryBestSize* = 97
  xcbQueryExtension* = 98
  xcbListExtensions* = 99
  xcbChangeKeyboardMapping* = 100
  xcbGetKeyboardMapping* = 101
  xcbChangeKeyboardControl* = 102
  xcbGetKeyboardControl* = 103
  xcbBell* = 104
  xcbChangePointerControl* = 105
  xcbGetPointerControl* = 106
  xcbSetScreenSaver* = 107
  xcbGetScreenSaver* = 108
  xcbChangeHosts* = 109
  xcbListHosts* = 110
  xcbSetAccessControl* = 111
  xcbSetCloseDownMode* = 112
  xcbKillClient* = 113
  xcbRotateProperties* = 114
  xcbForceScreenSaver* = 115
  xcbSetPointerMapping* = 116
  xcbGetPointerMapping* = 117
  xcbSetModifierMapping* = 118
  xcbGetModifierMapping* = 119
  xcbNoOperation* = 127

type
  XcbWindow* {.importc: "xcb_window_t".} = distinct uint32
  XcbPixmap* {.importc: "xcb_pixmap_t".} = distinct uint32
  XcbCursor* {.importc: "xcb_cursor_t".} = distinct uint32
  XcbFont* {.importc: "xcb_font_t".} = distinct uint32
  XcbGcontext* {.importc: "xcb_gcontext_t".} = distinct uint32
  XcbColormap* {.importc: "xcb_colormap_t".} = distinct uint32
  XcbAtom* {.importc: "xcb_atom_t".} = distinct uint32
  XcbDrawable* {.importc: "xcb_drawable_t".} = distinct uint32
  XcbFontable* {.importc: "xcb_fontable_t".} = distinct uint32
  XcbBool32* {.importc: "xcb_bool32_t".} = distinct uint32
  XcbVisualid* {.importc: "xcb_visualid_t".} = distinct uint32
  XcbTimestamp* {.importc: "xcb_timestamp_t".} = distinct uint32
  XcbKeysym* {.importc: "xcb_keysym_t".} = distinct uint32
  XcbKeycode* {.importc: "xcb_keycode_t".} = distinct uint8
  XcbKeycode32* {.importc: "xcb_keycode32_t".} = distinct uint32
  XcbButton* {.importc: "xcb_button_t".} = distinct uint8
  XcbKeyReleaseEvent* {.importc: "xcb_key_release_event_t".} = XcbKeyPressEvent
  XcbButtonReleaseEvent* {.importc: "xcb_button_release_event_t".} = XcbButtonPressEvent
  XcbLeaveNotifyEvent* {.importc: "xcb_leave_notify_event_t".} = XcbEnterNotifyEvent
  XcbFocusOutEvent* {.importc: "xcb_focus_out_event_t".} = XcbFocusInEvent
  XcbCirculateRequestEvent* {.importc: "xcb_circulate_request_event_t".} = XcbCirculateNotifyEvent
  XcbWindowError* {.importc: "xcb_window_error_t".} = XcbValueError
  XcbPixmapError* {.importc: "xcb_pixmap_error_t".} = XcbValueError
  XcbAtomError* {.importc: "xcb_atom_error_t".} = XcbValueError
  XcbCursorError* {.importc: "xcb_cursor_error_t".} = XcbValueError
  XcbFontError* {.importc: "xcb_font_error_t".} = XcbValueError
  XcbMatchError* {.importc: "xcb_match_error_t".} = XcbRequestError
  XcbDrawableError* {.importc: "xcb_drawable_error_t".} = XcbValueError
  XcbAccessError* {.importc: "xcb_access_error_t".} = XcbRequestError
  XcbAllocError* {.importc: "xcb_alloc_error_t".} = XcbRequestError
  XcbColormapError* {.importc: "xcb_colormap_error_t".} = XcbValueError
  XcbGContextError* {.importc: "xcb_g_context_error_t".} = XcbValueError
  XcbIdChoiceError* {.importc: "xcb_id_choice_error_t".} = XcbValueError
  XcbNameError* {.importc: "xcb_name_error_t".} = XcbRequestError
  XcbLengthError* {.importc: "xcb_length_error_t".} = XcbRequestError
  XcbImplementationError* {.importc: "xcb_implementation_error_t".} = XcbRequestError

  XcbChar2b* {.importc: "xcb_char2b_t", bycopy.} = object
    byte1*: uint8
    byte2*: uint8

  XcbChar2bIterator* {.importc: "xcb_char2b_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbChar2b]
    rem*: cint
    index*: cint

  XcbWindowIterator* {.importc: "xcb_window_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbWindow]
    rem*: cint
    index*: cint

  XcbPixmapIterator* {.importc: "xcb_pixmap_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbPixmap]
    rem*: cint
    index*: cint

  XcbCursorIterator* {.importc: "xcb_cursor_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbCursor]
    rem*: cint
    index*: cint

  XcbFontIterator* {.importc: "xcb_font_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbFont]
    rem*: cint
    index*: cint

  XcbGcontextIterator* {.importc: "xcb_gcontext_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGcontext]
    rem*: cint
    index*: cint

  XcbColormapIterator* {.importc: "xcb_colormap_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbColormap]
    rem*: cint
    index*: cint

  XcbAtomIterator* {.importc: "xcb_atom_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbAtom]
    rem*: cint
    index*: cint

  XcbDrawableIterator* {.importc: "xcb_drawable_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbDrawable]
    rem*: cint
    index*: cint

  XcbFontableIterator* {.importc: "xcb_fontable_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbFontable]
    rem*: cint
    index*: cint

  XcbBool32Iterator* {.importc: "xcb_bool32_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbBool32]
    rem*: cint
    index*: cint

  XcbVisualidIterator* {.importc: "xcb_visualid_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbVisualid]
    rem*: cint
    index*: cint

  XcbTimestampIterator* {.importc: "xcb_timestamp_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbTimestamp]
    rem*: cint
    index*: cint

  XcbKeysymIterator* {.importc: "xcb_keysym_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbKeysym]
    rem*: cint
    index*: cint

  XcbKeycodeIterator* {.importc: "xcb_keycode_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbKeycode]
    rem*: cint
    index*: cint

  XcbKeycode32Iterator* {.importc: "xcb_keycode32_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbKeycode32]
    rem*: cint
    index*: cint

  XcbButtonIterator* {.importc: "xcb_button_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbButton]
    rem*: cint
    index*: cint

  XcbPoint* {.importc: "xcb_point_t", bycopy.} = object
    x*: int16
    y*: int16

  XcbPointIterator* {.importc: "xcb_point_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbPoint]
    rem*: cint
    index*: cint

  XcbRectangle* {.importc: "xcb_rectangle_t", bycopy.} = object
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16

  XcbRectangleIterator* {.importc: "xcb_rectangle_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRectangle]
    rem*: cint
    index*: cint

  XcbArc* {.importc: "xcb_arc_t", bycopy.} = object
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    angle1*: int16
    angle2*: int16

  XcbArcIterator* {.importc: "xcb_arc_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbArc]
    rem*: cint
    index*: cint

  XcbFormat* {.importc: "xcb_format_t", bycopy.} = object
    depth*: uint8
    bitsPerPixel* {.importc: "bits_per_pixel".}: uint8
    scanlinePad* {.importc: "scanline_pad".}: uint8
    pad0: array[5, uint8]

  XcbFormatIterator* {.importc: "xcb_format_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbFormat]
    rem*: cint
    index*: cint

  XcbVisualClass* {.importc: "xcb_visual_class_t".} = enum
    xcbVisualClassStaticGray = 0, xcbVisualClassGrayScale = 1,
    xcbVisualClassStaticColor = 2, xcbVisualClassPseudoColor = 3,
    xcbVisualClassTrueColor = 4, xcbVisualClassDirectColor = 5

  XcbVisualtype* {.importc: "xcb_visualtype_t", bycopy.} = object
    visualId* {.importc: "visual_id".}: XcbVisualid
    class*: uint8
    bitsPerRgbValue* {.importc: "bits_per_rgb_value".}: uint8
    colormapEntries* {.importc: "colormap_entries".}: uint16
    redMask* {.importc: "red_mask".}: uint32
    greenMask* {.importc: "green_mask".}: uint32
    blueMask* {.importc: "blue_mask".}: uint32
    pad0: array[4, uint8]

  XcbVisualtypeIterator* {.importc: "xcb_visualtype_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbVisualtype]
    rem*: cint
    index*: cint

  XcbDepth* {.importc: "xcb_depth_t", bycopy.} = object
    depth*: uint8
    pad0: uint8
    visualsLen* {.importc: "visuals_len".}: uint16
    pad1: array[4, uint8]

  XcbDepthIterator* {.importc: "xcb_depth_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbDepth]
    rem*: cint
    index*: cint

  XcbEventMask* {.importc: "xcb_event_mask_t".} = enum
    xcbEventMaskNoEvent = 0, xcbEventMaskKeyPress = 1,
    xcbEventMaskKeyRelease = 2, xcbEventMaskButtonPress = 4,
    xcbEventMaskButtonRelease = 8, xcbEventMaskEnterWindow = 16,
    xcbEventMaskLeaveWindow = 32, xcbEventMaskPointerMotion = 64,
    xcbEventMaskPointerMotionHint = 128, xcbEventMaskButton1Motion = 256,
    xcbEventMaskButton2Motion = 512, xcbEventMaskButton3Motion = 1024,
    xcbEventMaskButton4Motion = 2048, xcbEventMaskButton5Motion = 4096,
    xcbEventMaskButtonMotion = 8192, xcbEventMaskKeymapState = 16384,
    xcbEventMaskExposure = 32768, xcbEventMaskVisibilityChange = 65536,
    xcbEventMaskStructureNotify = 131072,
    xcbEventMaskResizeRedirect = 262144,
    xcbEventMaskSubstructureNotify = 524288,
    xcbEventMaskSubstructureRedirect = 1048576,
    xcbEventMaskFocusChange = 2097152,
    xcbEventMaskPropertyChange = 4194304,
    xcbEventMaskColorMapChange = 8388608,
    xcbEventMaskOwnerGrabButton = 16777216

  XcbBackingStore* {.importc: "xcb_backing_store_t".} = enum
    xcbBackingStoreNotUseful = 0, xcbBackingStoreWhenMapped = 1,
    xcbBackingStoreAlways = 2

  XcbScreen* {.importc: "xcb_screen_t", bycopy.} = object
    root*: XcbWindow
    defaultColormap* {.importc: "default_colormap".}: XcbColormap
    whitePixel* {.importc: "white_pixel".}: uint32
    blackPixel* {.importc: "black_pixel".}: uint32
    currentInputMasks* {.importc: "current_input_masks".}: uint32
    widthInPixels* {.importc: "width_in_pixels".}: uint16
    heightInPixels* {.importc: "height_in_pixels".}: uint16
    widthInMillimeters* {.importc: "width_in_millimeters".}: uint16
    heightInMillimeters* {.importc: "height_in_millimeters".}: uint16
    minInstalledMaps* {.importc: "min_installed_maps".}: uint16
    maxInstalledMaps* {.importc: "max_installed_maps".}: uint16
    rootVisual* {.importc: "root_visual".}: XcbVisualid
    backingStores* {.importc: "backing_stores".}: uint8
    saveUnders* {.importc: "save_unders".}: uint8
    rootDepth* {.importc: "root_depth".}: uint8
    allowedDepthsLen* {.importc: "allowed_depths_len".}: uint8

  XcbScreenIterator* {.importc: "xcb_screen_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbScreen]
    rem*: cint
    index*: cint

  XcbSetupRequest* {.importc: "xcb_setup_request_t", bycopy.} = object
    byteOrder* {.importc: "byte_order".}: uint8
    pad0: uint8
    protocolMajorVersion* {.importc: "protocol_major_version".}: uint16
    protocolMinorVersion* {.importc: "protocol_minor_version".}: uint16
    authorizationProtocolNameLen* {.importc: "authorization_protocol_name_len".}: uint16
    authorizationProtocolDataLen* {.importc: "authorization_protocol_data_len".}: uint16
    pad1: array[2, uint8]

  XcbSetupRequestIterator* {.importc: "xcb_setup_request_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSetupRequest]
    rem*: cint
    index*: cint

  XcbSetupFailed* {.importc: "xcb_setup_failed_t", bycopy.} = object
    status*: uint8
    reasonLen* {.importc: "reason_len".}: uint8
    protocolMajorVersion* {.importc: "protocol_major_version".}: uint16
    protocolMinorVersion* {.importc: "protocol_minor_version".}: uint16
    length*: uint16

  XcbSetupFailedIterator* {.importc: "xcb_setup_failed_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSetupFailed]
    rem*: cint
    index*: cint

  XcbSetupAuthenticate* {.importc: "xcb_setup_authenticate_t", bycopy.} = object
    status*: uint8
    pad0: array[5, uint8]
    length*: uint16

  XcbSetupAuthenticateIterator* {.importc: "xcb_setup_authenticate_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSetupAuthenticate]
    rem*: cint
    index*: cint

  XcbImageOrder* {.importc: "xcb_image_order_t".} = enum
    xcbImageOrderLsbFirst = 0, xcbImageOrderMsbFirst = 1

  XcbSetup* {.importc: "xcb_setup_t", bycopy.} = object
    status*: uint8
    pad0: uint8
    protocolMajorVersion* {.importc: "protocol_major_version".}: uint16
    protocolMinorVersion* {.importc: "protocol_minor_version".}: uint16
    length*: uint16
    releaseNumber* {.importc: "release_number".}: uint32
    resourceIdBase* {.importc: "resource_id_base".}: uint32
    resourceIdMask* {.importc: "resource_id_mask".}: uint32
    motionBufferSize* {.importc: "motion_buffer_size".}: uint32
    vendorLen* {.importc: "vendor_len".}: uint16
    maximumRequestLength* {.importc: "maximum_request_length".}: uint16
    rootsLen* {.importc: "roots_len".}: uint8
    pixmapFormatsLen* {.importc: "pixmap_formats_len".}: uint8
    imageByteOrder* {.importc: "image_byte_order".}: uint8
    bitmapFormatBitOrder* {.importc: "bitmap_format_bit_order".}: uint8
    bitmapFormatScanlineUnit* {.importc: "bitmap_format_scanline_unit".}: uint8
    bitmapFormatScanlinePad* {.importc: "bitmap_format_scanline_pad".}: uint8
    minKeycode* {.importc: "min_keycode".}: XcbKeycode
    maxKeycode* {.importc: "max_keycode".}: XcbKeycode
    pad1: array[4, uint8]

  XcbSetupIterator* {.importc: "xcb_setup_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSetup]
    rem*: cint
    index*: cint

  XcbModMask* {.importc: "xcb_mod_mask_t".} = enum
    xcbModMaskShift = 1, xcbModMaskLock = 2, xcbModMaskControl = 4,
    xcbModMask1 = 8, xcbModMask2 = 16, xcbModMask3 = 32, xcbModMask4 = 64,
    xcbModMask5 = 128, xcbModMaskAny = 32768

  XcbKeyButMask* {.importc: "xcb_key_but_mask_t".} = enum
    xcbKeyButMaskShift = 1, xcbKeyButMaskLock = 2,
    xcbKeyButMaskControl = 4, xcbKeyButMaskMod1 = 8,
    xcbKeyButMaskMod2 = 16, xcbKeyButMaskMod3 = 32,
    xcbKeyButMaskMod4 = 64, xcbKeyButMaskMod5 = 128,
    xcbKeyButMaskButton1 = 256, xcbKeyButMaskButton2 = 512,
    xcbKeyButMaskButton3 = 1024, xcbKeyButMaskButton4 = 2048,
    xcbKeyButMaskButton5 = 4096

  XcbWindowEnum* {.importc: "xcb_window_enum_t".} = enum
    xcbWindowNone = 0

  XcbKeyPressEvent* {.importc: "xcb_key_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: XcbKeycode
    sequence*: uint16
    time*: XcbTimestamp
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: int16
    rootY* {.importc: "root_y".}: int16
    eventX* {.importc: "event_x".}: int16
    eventY* {.importc: "event_y".}: int16
    state*: uint16
    sameScreen* {.importc: "same_screen".}: uint8
    pad0: uint8

  XcbButtonMask* {.importc: "xcb_button_mask_t".} = enum
    xcbButtonMask1 = 256, xcbButtonMask2 = 512, xcbButtonMask3 = 1024,
    xcbButtonMask4 = 2048, xcbButtonMask5 = 4096, xcbButtonMaskAny = 32768

  XcbButtonPressEvent* {.importc: "xcb_button_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: XcbButton
    sequence*: uint16
    time*: XcbTimestamp
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: int16
    rootY* {.importc: "root_y".}: int16
    eventX* {.importc: "event_x".}: int16
    eventY* {.importc: "event_y".}: int16
    state*: uint16
    sameScreen* {.importc: "same_screen".}: uint8
    pad0: uint8

  XcbMotion* {.importc: "xcb_motion_t".} = enum
    xcbMotionNormal = 0, xcbMotionHint = 1

  XcbMotionNotifyEvent* {.importc: "xcb_motion_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: int16
    rootY* {.importc: "root_y".}: int16
    eventX* {.importc: "event_x".}: int16
    eventY* {.importc: "event_y".}: int16
    state*: uint16
    sameScreen* {.importc: "same_screen".}: uint8
    pad0: uint8

  XcbNotifyDetail* {.importc: "xcb_notify_detail_t".} = enum
    xcbNotifyDetailAncestor = 0, xcbNotifyDetailVirtual = 1,
    xcbNotifyDetailInferior = 2, xcbNotifyDetailNonlinear = 3,
    xcbNotifyDetailNonlinearVirtual = 4, xcbNotifyDetailPointer = 5,
    xcbNotifyDetailPointerRoot = 6, xcbNotifyDetailNone = 7

  XcbNotifyMode* {.importc: "xcb_notify_mode_t".} = enum
    xcbNotifyModeNormal = 0, xcbNotifyModeGrab = 1, xcbNotifyModeUngrab = 2,
    xcbNotifyModeWhileGrabbed = 3

  XcbEnterNotifyEvent* {.importc: "xcb_enter_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: int16
    rootY* {.importc: "root_y".}: int16
    eventX* {.importc: "event_x".}: int16
    eventY* {.importc: "event_y".}: int16
    state*: uint16
    mode*: uint8
    sameScreenFocus* {.importc: "same_screen_focus".}: uint8


  XcbFocusInEvent* {.importc: "xcb_focus_in_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    event*: XcbWindow
    mode*: uint8
    pad0: array[3, uint8]


  XcbKeymapNotifyEvent* {.importc: "xcb_keymap_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    keys*: array[31, uint8]

  XcbExposeEvent* {.importc: "xcb_expose_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    window*: XcbWindow
    x*: uint16
    y*: uint16
    width*: uint16
    height*: uint16
    count*: uint16
    pad1: array[2, uint8]

  XcbGraphicsExposureEvent* {.importc: "xcb_graphics_exposure_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    drawable*: XcbDrawable
    x*: uint16
    y*: uint16
    width*: uint16
    height*: uint16
    minorOpcode* {.importc: "minor_opcode".}: uint16
    count*: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad1: array[3, uint8]

  XcbNoExposureEvent* {.importc: "xcb_no_exposure_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    drawable*: XcbDrawable
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad1: uint8

  XcbVisibility* {.importc: "xcb_visibility_t".} = enum
    xcbVisibilityUnobscured = 0, xcbVisibilityPartiallyObscured = 1,
    xcbVisibilityFullyObscured = 2

  XcbVisibilityNotifyEvent* {.importc: "xcb_visibility_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    window*: XcbWindow
    state*: uint8
    pad1: array[3, uint8]

  XcbCreateNotifyEvent* {.importc: "xcb_create_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    parent*: XcbWindow
    window*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    overrideRedirect* {.importc: "override_redirect".}: uint8
    pad1: uint8

  XcbDestroyNotifyEvent* {.importc: "xcb_destroy_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow

  XcbUnmapNotifyEvent* {.importc: "xcb_unmap_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    fromConfigure* {.importc: "from_configure".}: uint8
    pad1: array[3, uint8]

  XcbMapNotifyEvent* {.importc: "xcb_map_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    overrideRedirect* {.importc: "override_redirect".}: uint8
    pad1: array[3, uint8]

  XcbMapRequestEvent* {.importc: "xcb_map_request_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    parent*: XcbWindow
    window*: XcbWindow

  XcbReparentNotifyEvent* {.importc: "xcb_reparent_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    parent*: XcbWindow
    x*: int16
    y*: int16
    overrideRedirect* {.importc: "override_redirect".}: uint8
    pad1: array[3, uint8]

  XcbConfigureNotifyEvent* {.importc: "xcb_configure_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    aboveSibling* {.importc: "above_sibling".}: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    overrideRedirect* {.importc: "override_redirect".}: uint8
    pad1: uint8

  XcbConfigureRequestEvent* {.importc: "xcb_configure_request_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    stackMode* {.importc: "stack_mode".}: uint8
    sequence*: uint16
    parent*: XcbWindow
    window*: XcbWindow
    sibling*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    valueMask* {.importc: "value_mask".}: uint16

  XcbGravityNotifyEvent* {.importc: "xcb_gravity_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    x*: int16
    y*: int16

  XcbResizeRequestEvent* {.importc: "xcb_resize_request_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    window*: XcbWindow
    width*: uint16
    height*: uint16

  XcbPlace* {.importc: "xcb_place_t".} = enum
    xcbPlaceOnTop = 0, xcbPlaceOnBottom = 1

  XcbCirculateNotifyEvent* {.importc: "xcb_circulate_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    event*: XcbWindow
    window*: XcbWindow
    pad1: array[4, uint8]
    place*: uint8
    pad2: array[3, uint8]

  XcbProperty* {.importc: "xcb_property_t".} = enum
    xcbPropertyNewValue = 0, xcbPropertyDelete = 1

  XcbPropertyNotifyEvent* {.importc: "xcb_property_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    window*: XcbWindow
    atom*: XcbAtom
    time*: XcbTimestamp
    state*: uint8
    pad1: array[3, uint8]

  XcbSelectionClearEvent* {.importc: "xcb_selection_clear_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    time*: XcbTimestamp
    owner*: XcbWindow
    selection*: XcbAtom

  XcbTime* {.importc: "xcb_time_t".} = enum
    xcbTimeCurrentTime = 0

  XcbAtomEnum* {.importc: "xcb_atom_enum_t".} = enum
    xcbAtomNone = 0, xcbAtomPrimary = 1, xcbAtomSecondary = 2, xcbAtomArc = 3,
    xcbAtomAtom = 4, xcbAtomBitmap = 5, xcbAtomCardinal = 6, xcbAtomColormap = 7,
    xcbAtomCursor = 8, xcbAtomCutBuffer0 = 9, xcbAtomCutBuffer1 = 10,
    xcbAtomCutBuffer2 = 11, xcbAtomCutBuffer3 = 12, xcbAtomCutBuffer4 = 13,
    xcbAtomCutBuffer5 = 14, xcbAtomCutBuffer6 = 15, xcbAtomCutBuffer7 = 16,
    xcbAtomDrawable = 17, xcbAtomFont = 18, xcbAtomInteger = 19,
    xcbAtomPixmap = 20, xcbAtomPoint = 21, xcbAtomRectangle = 22,
    xcbAtomResourceManager = 23, xcbAtomRgbColorMap = 24,
    xcbAtomRgbBestMap = 25, xcbAtomRgbBlueMap = 26,
    xcbAtomRgbDefaultMap = 27, xcbAtomRgbGrayMap = 28,
    xcbAtomRgbGreenMap = 29, xcbAtomRgbRedMap = 30, xcbAtomString = 31,
    xcbAtomVisualid = 32, xcbAtomWindow = 33, xcbAtomWmCommand = 34,
    xcbAtomWmHints = 35, xcbAtomWmClientMachine = 36,
    xcbAtomWmIconName = 37, xcbAtomWmIconSize = 38, xcbAtomWmName = 39,
    xcbAtomWmNormalHints = 40, xcbAtomWmSizeHints = 41,
    xcbAtomWmZoomHints = 42, xcbAtomMinSpace = 43, xcbAtomNormSpace = 44,
    xcbAtomMaxSpace = 45, xcbAtomEndSpace = 46, xcbAtomSuperscriptX = 47,
    xcbAtomSuperscriptY = 48, xcbAtomSubscriptX = 49, xcbAtomSubscriptY = 50,
    xcbAtomUnderlinePosition = 51, xcbAtomUnderlineThickness = 52,
    xcbAtomStrikeoutAscent = 53, xcbAtomStrikeoutDescent = 54,
    xcbAtomItalicAngle = 55, xcbAtomXHeight = 56, xcbAtomQuadWidth = 57,
    xcbAtomWeight = 58, xcbAtomPointSize = 59, xcbAtomResolution = 60,
    xcbAtomCopyright = 61, xcbAtomNotice = 62, xcbAtomFontName = 63,
    xcbAtomFamilyName = 64, xcbAtomFullName = 65, xcbAtomCapHeight = 66,
    xcbAtomWmClass = 67, xcbAtomWmTransientFor = 68

  XcbSelectionRequestEvent* {.importc: "xcb_selection_request_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    time*: XcbTimestamp
    owner*: XcbWindow
    requestor*: XcbWindow
    selection*: XcbAtom
    target*: XcbAtom
    property*: XcbAtom

  XcbSelectionNotifyEvent* {.importc: "xcb_selection_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    time*: XcbTimestamp
    requestor*: XcbWindow
    selection*: XcbAtom
    target*: XcbAtom
    property*: XcbAtom

  XcbColormapState* {.importc: "xcb_colormap_state_t".} = enum
    xcbColormapStateUninstalled = 0, xcbColormapStateInstalled = 1

  XcbColormapEnum* {.importc: "xcb_colormap_enum_t".} = enum
    xcbColormapNone = 0

  XcbColormapNotifyEvent* {.importc: "xcb_colormap_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    window*: XcbWindow
    colormap*: XcbColormap
    new*: uint8
    state*: uint8
    pad1: array[2, uint8]

  XcbClientMessageData* {.importc: "xcb_client_message_data_t", bycopy, union.} = object
    data8*: array[20, uint8]
    data16*: array[10, uint16]
    data32*: array[5, uint32]

  XcbClientMessageDataIterator* {.importc: "xcb_client_message_data_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbClientMessageData]
    rem*: cint
    index*: cint

  XcbClientMessageEvent* {.importc: "xcb_client_message_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    format*: uint8
    sequence*: uint16
    window*: XcbWindow
    `type`*: XcbAtom
    data*: XcbClientMessageData

  XcbMapping* {.importc: "xcb_mapping_t".} = enum
    xcbMappingModifier = 0, xcbMappingKeyboard = 1, xcbMappingPointer = 2

  XcbMappingNotifyEvent* {.importc: "xcb_mapping_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    request*: uint8
    firstKeycode* {.importc: "first_keycode".}: XcbKeycode
    count*: uint8
    pad1: uint8

  XcbGeGenericEvent* {.importc: "xcb_ge_generic_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    pad0: array[22, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbRequestError* {.importc: "xcb_request_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    badValue* {.importc: "bad_value".}: uint32
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8

  XcbValueError* {.importc: "xcb_value_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    badValue* {.importc: "bad_value".}: uint32
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8

  XcbWindowClass* {.importc: "xcb_window_class_t".} = enum
    xcbWindowClassCopyFromParent = 0, xcbWindowClassInputOutput = 1,
    xcbWindowClassInputOnly = 2

  XcbCw* {.importc: "xcb_cw_t".} = enum
    xcbCwBackPixmap = 1, xcbCwBackPixel = 2, xcbCwBorderPixmap = 4,
    xcbCwBorderPixel = 8, xcbCwBitGravity = 16, xcbCwWinGravity = 32,
    xcbCwBackingStore = 64, xcbCwBackingPlanes = 128,
    xcbCwBackingPixel = 256, xcbCwOverrideRedirect = 512,
    xcbCwSaveUnder = 1024, xcbCwEventMask = 2048, xcbCwDontPropagate = 4096,
    xcbCwColormap = 8192, xcbCwCursor = 16384

  XcbBackPixmap* {.importc: "xcb_back_pixmap_t".} = enum
    xcbBackPixmapNone = 0, xcbBackPixmapParentRelative = 1

  XcbGravity* {.importc: "xcb_gravity_t".} = enum
    xcbGravityBitForget = 0, xcbGravityNorthWest = 1, xcbGravityNorth = 2,
    xcbGravityNorthEast = 3, xcbGravityWest = 4, xcbGravityCenter = 5,
    xcbGravityEast = 6, xcbGravitySouthWest = 7, xcbGravitySouth = 8,
    xcbGravitySouthEast = 9, xcbGravityStatic = 10

  XcbCreateWindowValueList* {.importc: "xcb_create_window_value_list_t", bycopy.} = object
    backgroundPixmap* {.importc: "background_pixmap".}: XcbPixmap
    backgroundPixel* {.importc: "background_pixel".}: uint32
    borderPixmap* {.importc: "border_pixmap".}: XcbPixmap
    borderPixel* {.importc: "border_pixel".}: uint32
    bitGravity* {.importc: "bit_gravity".}: uint32
    winGravity* {.importc: "win_gravity".}: uint32
    backingStore* {.importc: "backing_store".}: uint32
    backingPlanes* {.importc: "backing_planes".}: uint32
    backingPixel* {.importc: "backing_pixel".}: uint32
    overrideRedirect* {.importc: "override_redirect".}: XcbBool32
    saveUnder* {.importc: "save_under".}: XcbBool32
    eventMask* {.importc: "event_mask".}: uint32
    doNotPropogateMask* {.importc: "do_not_propogate_mask".}: uint32
    colormap*: XcbColormap
    cursor*: XcbCursor

  XcbCreateWindowRequest* {.importc: "xcb_create_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    depth*: uint8
    length*: uint16
    wid*: XcbWindow
    parent*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    class*: uint16
    visual*: XcbVisualid
    valueMask* {.importc: "value_mask".}: uint32

  XcbChangeWindowAttributesValueList* {.importc: "xcb_change_window_attributes_value_list_t", bycopy.} = object
    backgroundPixmap* {.importc: "background_pixmap".}: XcbPixmap
    backgroundPixel* {.importc: "background_pixel".}: uint32
    borderPixmap* {.importc: "border_pixmap".}: XcbPixmap
    borderPixel* {.importc: "border_pixel".}: uint32
    bitGravity* {.importc: "bit_gravity".}: uint32
    winGravity* {.importc: "win_gravity".}: uint32
    backingStore* {.importc: "backing_store".}: uint32
    backingPlanes* {.importc: "backing_planes".}: uint32
    backingPixel* {.importc: "backing_pixel".}: uint32
    overrideRedirect* {.importc: "override_redirect".}: XcbBool32
    saveUnder* {.importc: "save_under".}: XcbBool32
    eventMask* {.importc: "event_mask".}: uint32
    doNotPropogateMask* {.importc: "do_not_propogate_mask".}: uint32
    colormap*: XcbColormap
    cursor*: XcbCursor

  XcbChangeWindowAttributesRequest* {.importc: "xcb_change_window_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    valueMask* {.importc: "value_mask".}: uint32

  XcbMapState* {.importc: "xcb_map_state_t".} = enum
    xcbMapStateUnmapped = 0, xcbMapStateUnviewable = 1,
    xcbMapStateViewable = 2
  XcbGetWindowAttributesCookie* {.importc: "xcb_get_window_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetWindowAttributesRequest* {.importc: "xcb_get_window_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbGetWindowAttributesReply* {.importc: "xcb_get_window_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    backingStore* {.importc: "backing_store".}: uint8
    sequence*: uint16
    length*: uint32
    visual*: XcbVisualid
    class*: uint16
    bitGravity* {.importc: "bit_gravity".}: uint8
    winGravity* {.importc: "win_gravity".}: uint8
    backingPlanes* {.importc: "backing_planes".}: uint32
    backingPixel* {.importc: "backing_pixel".}: uint32
    saveUnder* {.importc: "save_under".}: uint8
    mapIsInstalled* {.importc: "map_is_installed".}: uint8
    mapState* {.importc: "map_state".}: uint8
    overrideRedirect* {.importc: "override_redirect".}: uint8
    colormap*: XcbColormap
    allEventMasks* {.importc: "all_event_masks".}: uint32
    yourEventMask* {.importc: "your_event_mask".}: uint32
    doNotPropagateMask* {.importc: "do_not_propagate_mask".}: uint16
    pad0: array[2, uint8]

  XcbDestroyWindowRequest* {.importc: "xcb_destroy_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbDestroySubwindowsRequest* {.importc: "xcb_destroy_subwindows_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbSetMode* {.importc: "xcb_set_mode_t".} = enum
    xcbSetModeInsert = 0, xcbSetModeDelete = 1

  XcbChangeSaveSetRequest* {.importc: "xcb_change_save_set_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16
    window*: XcbWindow

  XcbReparentWindowRequest* {.importc: "xcb_reparent_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    parent*: XcbWindow
    x*: int16
    y*: int16

  XcbMapWindowRequest* {.importc: "xcb_map_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbMapSubwindowsRequest* {.importc: "xcb_map_subwindows_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbUnmapWindowRequest* {.importc: "xcb_unmap_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbUnmapSubwindowsRequest* {.importc: "xcb_unmap_subwindows_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbConfigWindow* {.importc: "xcb_config_window_t".} = enum
    xcbConfigWindowX = 1, xcbConfigWindowY = 2, xcbConfigWindowWidth = 4,
    xcbConfigWindowHeight = 8, xcbConfigWindowBorderWidth = 16,
    xcbConfigWindowSibling = 32, xcbConfigWindowStackMode = 64

  XcbStackMode* {.importc: "xcb_stack_mode_t".} = enum
    xcbStackModeAbove = 0, xcbStackModeBelow = 1, xcbStackModeTopIf = 2,
    xcbStackModeBottomIf = 3, xcbStackModeOpposite = 4

  XcbConfigureWindowValueList* {.importc: "xcb_configure_window_value_list_t", bycopy.} = object
    x*: int32
    y*: int32
    width*: uint32
    height*: uint32
    borderWidth* {.importc: "border_width".}: uint32
    sibling*: XcbWindow
    stackMode* {.importc: "stack_mode".}: uint32

  XcbConfigureWindowRequest* {.importc: "xcb_configure_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    valueMask* {.importc: "value_mask".}: uint16
    pad1: array[2, uint8]

  XcbCirculate* {.importc: "xcb_circulate_t".} = enum
    xcbCirculateRaiseLowest = 0, xcbCirculateLowerHighest = 1

  XcbCirculateWindowRequest* {.importc: "xcb_circulate_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    direction*: uint8
    length*: uint16
    window*: XcbWindow

  XcbGetGeometryCookie* {.importc: "xcb_get_geometry_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetGeometryRequest* {.importc: "xcb_get_geometry_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbGetGeometryReply* {.importc: "xcb_get_geometry_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    depth*: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    borderWidth* {.importc: "border_width".}: uint16
    pad0: array[2, uint8]

  XcbQueryTreeCookie* {.importc: "xcb_query_tree_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryTreeRequest* {.importc: "xcb_query_tree_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbQueryTreeReply* {.importc: "xcb_query_tree_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow
    parent*: XcbWindow
    childrenLen* {.importc: "children_len".}: uint16
    pad1: array[14, uint8]

  XcbInternAtomCookie* {.importc: "xcb_intern_atom_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInternAtomRequest* {.importc: "xcb_intern_atom_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    onlyIfExists* {.importc: "only_if_exists".}: uint8
    length*: uint16
    nameLen* {.importc: "name_len".}: uint16
    pad0: array[2, uint8]

  XcbInternAtomReply* {.importc: "xcb_intern_atom_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    atom*: XcbAtom

  XcbGetAtomNameCookie* {.importc: "xcb_get_atom_name_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetAtomNameRequest* {.importc: "xcb_get_atom_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    atom*: XcbAtom

  XcbGetAtomNameReply* {.importc: "xcb_get_atom_name_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    nameLen* {.importc: "name_len".}: uint16
    pad1: array[22, uint8]

  XcbPropMode* {.importc: "xcb_prop_mode_t", size: 1.} = enum
    xcbPropModeReplace = 0, xcbPropModePrepend = 1, xcbPropModeAppend = 2

  XcbChangePropertyRequest* {.importc: "xcb_change_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16
    window*: XcbWindow
    property*: XcbAtom
    `type`*: XcbAtom
    format*: uint8
    pad0: array[3, uint8]
    dataLen* {.importc: "data_len".}: uint32

  XcbDeletePropertyRequest* {.importc: "xcb_delete_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    property*: XcbAtom

  XcbGetPropertyType* {.importc: "xcb_get_property_type_t".} = enum
    xcbGetPropertyTypeAny = 0
  XcbGetPropertyCookie* {.importc: "xcb_get_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetPropertyRequest* {.importc: "xcb_get_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    delete*: uint8
    length*: uint16
    window*: XcbWindow
    property*: XcbAtom
    `type`*: XcbAtom
    longOffset* {.importc: "long_offset".}: uint32
    longLength* {.importc: "long_length".}: uint32

  XcbGetPropertyReply* {.importc: "xcb_get_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    format*: uint8
    sequence*: uint16
    length*: uint32
    `type`*: XcbAtom
    bytesAfter* {.importc: "bytes_after".}: uint32
    valueLen* {.importc: "value_len".}: uint32
    pad0: array[12, uint8]

  XcbListPropertiesCookie* {.importc: "xcb_list_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListPropertiesRequest* {.importc: "xcb_list_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbListPropertiesReply* {.importc: "xcb_list_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    atomsLen* {.importc: "atoms_len".}: uint16
    pad1: array[22, uint8]

  XcbSetSelectionOwnerRequest* {.importc: "xcb_set_selection_owner_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    owner*: XcbWindow
    selection*: XcbAtom
    time*: XcbTimestamp

  XcbGetSelectionOwnerCookie* {.importc: "xcb_get_selection_owner_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetSelectionOwnerRequest* {.importc: "xcb_get_selection_owner_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    selection*: XcbAtom

  XcbGetSelectionOwnerReply* {.importc: "xcb_get_selection_owner_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    owner*: XcbWindow

  XcbConvertSelectionRequest* {.importc: "xcb_convert_selection_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    requestor*: XcbWindow
    selection*: XcbAtom
    target*: XcbAtom
    property*: XcbAtom
    time*: XcbTimestamp

  XcbSendEventDest* {.importc: "xcb_send_event_dest_t".} = enum
    xcbSendEventDestPointerWindow = 0, xcbSendEventDestItemFocus = 1

  XcbSendEventRequest* {.importc: "xcb_send_event_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    propagate*: uint8
    length*: uint16
    destination*: XcbWindow
    eventMask* {.importc: "event_mask".}: uint32
    event*: array[32, char]

  XcbGrabMode* {.importc: "xcb_grab_mode_t".} = enum
    xcbGrabModeSync = 0, xcbGrabModeAsync = 1

  XcbGrabStatus* {.importc: "xcb_grab_status_t".} = enum
    xcbGrabStatusSuccess = 0, xcbGrabStatusAlreadyGrabbed = 1,
    xcbGrabStatusInvalidTime = 2, xcbGrabStatusNotViewable = 3,
    xcbGrabStatusFrozen = 4

  XcbCursorEnum* {.importc: "xcb_cursor_enum_t".} = enum
    xcbCursorNone = 0

  XcbGrabPointerCookie* {.importc: "xcb_grab_pointer_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGrabPointerRequest* {.importc: "xcb_grab_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    eventMask* {.importc: "event_mask".}: uint16
    pointerMode* {.importc: "pointer_mode".}: uint8
    keyboardMode* {.importc: "keyboard_mode".}: uint8
    confineTo* {.importc: "confine_to".}: XcbWindow
    cursor*: XcbCursor
    time*: XcbTimestamp

  XcbGrabPointerReply* {.importc: "xcb_grab_pointer_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32

  XcbUngrabPointerRequest* {.importc: "xcb_ungrab_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    time*: XcbTimestamp

  XcbButtonIndex* {.importc: "xcb_button_index_t".} = enum
    xcbButtonIndexAny = 0, xcbButtonIndex1 = 1, xcbButtonIndex2 = 2,
    xcbButtonIndex3 = 3, xcbButtonIndex4 = 4, xcbButtonIndex5 = 5

  XcbGrabButtonRequest* {.importc: "xcb_grab_button_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    eventMask* {.importc: "event_mask".}: uint16
    pointerMode* {.importc: "pointer_mode".}: uint8
    keyboardMode* {.importc: "keyboard_mode".}: uint8
    confineTo* {.importc: "confine_to".}: XcbWindow
    cursor*: XcbCursor
    button*: uint8
    pad0: uint8
    modifiers*: uint16

  XcbUngrabButtonRequest* {.importc: "xcb_ungrab_button_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    button*: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    modifiers*: uint16
    pad0: array[2, uint8]

  XcbChangeActivePointerGrabRequest* {.importc: "xcb_change_active_pointer_grab_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cursor*: XcbCursor
    time*: XcbTimestamp
    eventMask* {.importc: "event_mask".}: uint16
    pad1: array[2, uint8]

  XcbGrabKeyboardCookie* {.importc: "xcb_grab_keyboard_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGrabKeyboardRequest* {.importc: "xcb_grab_keyboard_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    time*: XcbTimestamp
    pointerMode* {.importc: "pointer_mode".}: uint8
    keyboardMode* {.importc: "keyboard_mode".}: uint8
    pad0: array[2, uint8]

  XcbGrabKeyboardReply* {.importc: "xcb_grab_keyboard_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32

  XcbUngrabKeyboardRequest* {.importc: "xcb_ungrab_keyboard_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    time*: XcbTimestamp

  XcbGrab* {.importc: "xcb_grab_t".} = enum
    xcbGrabAny = 0

  XcbGrabKeyRequest* {.importc: "xcb_grab_key_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    modifiers*: uint16
    key*: XcbKeycode
    pointerMode* {.importc: "pointer_mode".}: uint8
    keyboardMode* {.importc: "keyboard_mode".}: uint8
    pad0: array[3, uint8]

  XcbUngrabKeyRequest* {.importc: "xcb_ungrab_key_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    key*: XcbKeycode
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    modifiers*: uint16
    pad0: array[2, uint8]

  XcbAllow* {.importc: "xcb_allow_t".} = enum
    xcbAllowAsyncPointer = 0, xcbAllowSyncPointer = 1,
    xcbAllowReplayPointer = 2, xcbAllowAsyncKeyboard = 3,
    xcbAllowSyncKeyboard = 4, xcbAllowReplayKeyboard = 5,
    xcbAllowAsyncBoth = 6, xcbAllowSyncBoth = 7

  XcbAllowEventsRequest* {.importc: "xcb_allow_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16
    time*: XcbTimestamp

  XcbGrabServerRequest* {.importc: "xcb_grab_server_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbUngrabServerRequest* {.importc: "xcb_ungrab_server_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbQueryPointerCookie* {.importc: "xcb_query_pointer_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryPointerRequest* {.importc: "xcb_query_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbQueryPointerReply* {.importc: "xcb_query_pointer_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    sameScreen* {.importc: "same_screen".}: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: int16
    rootY* {.importc: "root_y".}: int16
    winX* {.importc: "win_x".}: int16
    winY* {.importc: "win_y".}: int16
    mask*: uint16
    pad0: array[2, uint8]

  XcbTimecoord* {.importc: "xcb_timecoord_t", bycopy.} = object
    time*: XcbTimestamp
    x*: int16
    y*: int16

  XcbTimecoordIterator* {.importc: "xcb_timecoord_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbTimecoord]
    rem*: cint
    index*: cint

  XcbGetMotionEventsCookie* {.importc: "xcb_get_motion_events_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetMotionEventsRequest* {.importc: "xcb_get_motion_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    start*: XcbTimestamp
    stop*: XcbTimestamp

  XcbGetMotionEventsReply* {.importc: "xcb_get_motion_events_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    eventsLen* {.importc: "events_len".}: uint32
    pad1: array[20, uint8]

  XcbTranslateCoordinatesCookie* {.importc: "xcb_translate_coordinates_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbTranslateCoordinatesRequest* {.importc: "xcb_translate_coordinates_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    srcWindow* {.importc: "src_window".}: XcbWindow
    dstWindow* {.importc: "dst_window".}: XcbWindow
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbTranslateCoordinatesReply* {.importc: "xcb_translate_coordinates_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    sameScreen* {.importc: "same_screen".}: uint8
    sequence*: uint16
    length*: uint32
    child*: XcbWindow
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16

  XcbWarpPointerRequest* {.importc: "xcb_warp_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    srcWindow* {.importc: "src_window".}: XcbWindow
    dstWindow* {.importc: "dst_window".}: XcbWindow
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    srcWidth* {.importc: "src_width".}: uint16
    srcHeight* {.importc: "src_height".}: uint16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16

  XcbInputFocus* {.importc: "xcb_input_focus_t".} = enum
    xcbInputFocusNone = 0, xcbInputFocusPointerRoot = 1,
    xcbInputFocusParent = 2, xcbInputFocusFollowKeyboard = 3

  XcbSetInputFocusRequest* {.importc: "xcb_set_input_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    revertTo* {.importc: "revert_to".}: uint8
    length*: uint16
    focus*: XcbWindow
    time*: XcbTimestamp

  XcbGetInputFocusCookie* {.importc: "xcb_get_input_focus_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetInputFocusRequest* {.importc: "xcb_get_input_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetInputFocusReply* {.importc: "xcb_get_input_focus_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    revertTo* {.importc: "revert_to".}: uint8
    sequence*: uint16
    length*: uint32
    focus*: XcbWindow

  XcbQueryKeymapCookie* {.importc: "xcb_query_keymap_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryKeymapRequest* {.importc: "xcb_query_keymap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbQueryKeymapReply* {.importc: "xcb_query_keymap_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    keys*: array[32, uint8]

  XcbOpenFontRequest* {.importc: "xcb_open_font_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    fid*: XcbFont
    nameLen* {.importc: "name_len".}: uint16
    pad1: array[2, uint8]

  XcbCloseFontRequest* {.importc: "xcb_close_font_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    font*: XcbFont

  XcbFontDraw* {.importc: "xcb_font_draw_t".} = enum
    xcbFontDrawLeftToRight = 0, xcbFontDrawRightToLeft = 1
  XcbFontprop* {.importc: "xcb_fontprop_t", bycopy.} = object
    name*: XcbAtom
    value*: uint32

  XcbFontpropIterator* {.importc: "xcb_fontprop_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbFontprop]
    rem*: cint
    index*: cint

  XcbCharinfo* {.importc: "xcb_charinfo_t", bycopy.} = object
    leftSideBearing* {.importc: "left_side_bearing".}: int16
    rightSideBearing* {.importc: "right_side_bearing".}: int16
    characterWidth* {.importc: "character_width".}: int16
    ascent*: int16
    descent*: int16
    attributes*: uint16

  XcbCharinfoIterator* {.importc: "xcb_charinfo_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbCharinfo]
    rem*: cint
    index*: cint

  XcbQueryFontCookie* {.importc: "xcb_query_font_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryFontRequest* {.importc: "xcb_query_font_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    font*: XcbFontable

  XcbQueryFontReply* {.importc: "xcb_query_font_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    minBounds* {.importc: "min_bounds".}: XcbCharinfo
    pad1: array[4, uint8]
    maxBounds* {.importc: "max_bounds".}: XcbCharinfo
    pad2: array[4, uint8]
    minCharOrByte2* {.importc: "min_char_or_byte2".}: uint16
    maxCharOrByte2* {.importc: "max_char_or_byte2".}: uint16
    defaultChar* {.importc: "default_char".}: uint16
    propertiesLen* {.importc: "properties_len".}: uint16
    drawDirection* {.importc: "draw_direction".}: uint8
    minByte1* {.importc: "min_byte1".}: uint8
    maxByte1* {.importc: "max_byte1".}: uint8
    allCharsExist* {.importc: "all_chars_exist".}: uint8
    fontAscent* {.importc: "font_ascent".}: int16
    fontDescent* {.importc: "font_descent".}: int16
    charInfosLen* {.importc: "char_infos_len".}: uint32

  XcbQueryTextExtentsCookie* {.importc: "xcb_query_text_extents_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryTextExtentsRequest* {.importc: "xcb_query_text_extents_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    oddLength* {.importc: "odd_length".}: uint8
    length*: uint16
    font*: XcbFontable

  XcbQueryTextExtentsReply* {.importc: "xcb_query_text_extents_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    drawDirection* {.importc: "draw_direction".}: uint8
    sequence*: uint16
    length*: uint32
    fontAscent* {.importc: "font_ascent".}: int16
    fontDescent* {.importc: "font_descent".}: int16
    overallAscent* {.importc: "overall_ascent".}: int16
    overallDescent* {.importc: "overall_descent".}: int16
    overallWidth* {.importc: "overall_width".}: int32
    overallLeft* {.importc: "overall_left".}: int32
    overallRight* {.importc: "overall_right".}: int32

  XcbStr* {.importc: "xcb_str_t", bycopy.} = object
    nameLen* {.importc: "name_len".}: uint8

  XcbStrIterator* {.importc: "xcb_str_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbStr]
    rem*: cint
    index*: cint

  XcbListFontsCookie* {.importc: "xcb_list_fonts_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListFontsRequest* {.importc: "xcb_list_fonts_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    maxNames* {.importc: "max_names".}: uint16
    patternLen* {.importc: "pattern_len".}: uint16

  XcbListFontsReply* {.importc: "xcb_list_fonts_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    namesLen* {.importc: "names_len".}: uint16
    pad1: array[22, uint8]

  XcbListFontsWithInfoCookie* {.importc: "xcb_list_fonts_with_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListFontsWithInfoRequest* {.importc: "xcb_list_fonts_with_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    maxNames* {.importc: "max_names".}: uint16
    patternLen* {.importc: "pattern_len".}: uint16

  XcbListFontsWithInfoReply* {.importc: "xcb_list_fonts_with_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    nameLen* {.importc: "name_len".}: uint8
    sequence*: uint16
    length*: uint32
    minBounds* {.importc: "min_bounds".}: XcbCharinfo
    pad0: array[4, uint8]
    maxBounds* {.importc: "max_bounds".}: XcbCharinfo
    pad1: array[4, uint8]
    minCharOrByte2* {.importc: "min_char_or_byte2".}: uint16
    maxCharOrByte2* {.importc: "max_char_or_byte2".}: uint16
    defaultChar* {.importc: "default_char".}: uint16
    propertiesLen* {.importc: "properties_len".}: uint16
    drawDirection* {.importc: "draw_direction".}: uint8
    minByte1* {.importc: "min_byte1".}: uint8
    maxByte1* {.importc: "max_byte1".}: uint8
    allCharsExist* {.importc: "all_chars_exist".}: uint8
    fontAscent* {.importc: "font_ascent".}: int16
    fontDescent* {.importc: "font_descent".}: int16
    repliesHint* {.importc: "replies_hint".}: uint32

  XcbSetFontPathRequest* {.importc: "xcb_set_font_path_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    fontQty* {.importc: "font_qty".}: uint16
    pad1: array[2, uint8]

  XcbGetFontPathCookie* {.importc: "xcb_get_font_path_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetFontPathRequest* {.importc: "xcb_get_font_path_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetFontPathReply* {.importc: "xcb_get_font_path_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pathLen* {.importc: "path_len".}: uint16
    pad1: array[22, uint8]

  XcbCreatePixmapRequest* {.importc: "xcb_create_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    depth*: uint8
    length*: uint16
    pid*: XcbPixmap
    drawable*: XcbDrawable
    width*: uint16
    height*: uint16

  XcbFreePixmapRequest* {.importc: "xcb_free_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    pixmap*: XcbPixmap

  XcbGc* {.importc: "xcb_gc_t".} = enum
    xcbGcFunction = 1, xcbGcPlaneMask = 2, xcbGcForeground = 4,
    xcbGcBackground = 8, xcbGcLineWidth = 16, xcbGcLineStyle = 32,
    xcbGcCapStyle = 64, xcbGcJoinStyle = 128, xcbGcFillStyle = 256,
    xcbGcFillRule = 512, xcbGcTile = 1024, xcbGcStipple = 2048,
    xcbGcTileStippleOriginX = 4096, xcbGcTileStippleOriginY = 8192,
    xcbGcFont = 16384, xcbGcSubwindowMode = 32768,
    xcbGcGraphicsExposures = 65536, xcbGcClipOriginX = 131072,
    xcbGcClipOriginY = 262144, xcbGcClipMask = 524288,
    xcbGcDashOffset = 1048576, xcbGcDashList = 2097152,
    xcbGcArcMode = 4194304

  XcbGx* {.importc: "xcb_gx_t".} = enum
    xcbGxClear = 0, xcbGxAnd = 1, xcbGxAndReverse = 2, xcbGxCopy = 3,
    xcbGxAndInverted = 4, xcbGxNoop = 5, xcbGxXor = 6, xcbGxOr = 7, xcbGxNor = 8,
    xcbGxEquiv = 9, xcbGxInvert = 10, xcbGxOrReverse = 11,
    xcbGxCopyInverted = 12, xcbGxOrInverted = 13, xcbGxNand = 14, xcbGxSet = 15

  XcbLineStyle* {.importc: "xcb_line_style_t".} = enum
    xcbLineStyleSolid = 0, xcbLineStyleOnOffDash = 1,
    xcbLineStyleDoubleDash = 2

  XcbCapStyle* {.importc: "xcb_cap_style_t".} = enum
    xcbCapStyleNotLast = 0, xcbCapStyleButt = 1, xcbCapStyleRound = 2,
    xcbCapStyleProjecting = 3

  XcbJoinStyle* {.importc: "xcb_join_style_t".} = enum
    xcbJoinStyleMiter = 0, xcbJoinStyleRound = 1, xcbJoinStyleBevel = 2

  XcbFillStyle* {.importc: "xcb_fill_style_t".} = enum
    xcbFillStyleSolid = 0, xcbFillStyleTiled = 1, xcbFillStyleStippled = 2,
    xcbFillStyleOpaqueStippled = 3

  XcbFillRule* {.importc: "xcb_fill_rule_t".} = enum
    xcbFillRuleEvenOdd = 0, xcbFillRuleWinding = 1

  XcbSubwindowMode* {.importc: "xcb_subwindow_mode_t".} = enum
    xcbSubwindowModeClipByChildren = 0,
    xcbSubwindowModeIncludeInferiors = 1

  XcbArcMode* {.importc: "xcb_arc_mode_t".} = enum
    xcbArcModeChord = 0, xcbArcModePieSlice = 1

  XcbCreateGcValueList* {.importc: "xcb_create_gc_value_list_t", bycopy.} = object
    function*: uint32
    planeMask* {.importc: "plane_mask".}: uint32
    foreground*: uint32
    background*: uint32
    lineWidth* {.importc: "line_width".}: uint32
    lineStyle* {.importc: "line_style".}: uint32
    capStyle* {.importc: "cap_style".}: uint32
    joinStyle* {.importc: "join_style".}: uint32
    fillStyle* {.importc: "fill_style".}: uint32
    fillRule* {.importc: "fill_rule".}: uint32
    tile*: XcbPixmap
    stipple*: XcbPixmap
    tileStippleXOrigin* {.importc: "tile_stipple_x_origin".}: int32
    tileStippleYOrigin* {.importc: "tile_stipple_y_origin".}: int32
    font*: XcbFont
    subwindowMode* {.importc: "subwindow_mode".}: uint32
    graphicsExposures* {.importc: "graphics_exposures".}: XcbBool32
    clipXOrigin* {.importc: "clip_x_origin".}: int32
    clipYOrigin* {.importc: "clip_y_origin".}: int32
    clipMask* {.importc: "clip_mask".}: XcbPixmap
    dashOffset* {.importc: "dash_offset".}: uint32
    dashes*: uint32
    arcMode* {.importc: "arc_mode".}: uint32

  XcbCreateGcRequest* {.importc: "xcb_create_gc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cid*: XcbGcontext
    drawable*: XcbDrawable
    valueMask* {.importc: "value_mask".}: uint32

  XcbChangeGcValueList* {.importc: "xcb_change_gc_value_list_t", bycopy.} = object
    function*: uint32
    planeMask* {.importc: "plane_mask".}: uint32
    foreground*: uint32
    background*: uint32
    lineWidth* {.importc: "line_width".}: uint32
    lineStyle* {.importc: "line_style".}: uint32
    capStyle* {.importc: "cap_style".}: uint32
    joinStyle* {.importc: "join_style".}: uint32
    fillStyle* {.importc: "fill_style".}: uint32
    fillRule* {.importc: "fill_rule".}: uint32
    tile*: XcbPixmap
    stipple*: XcbPixmap
    tileStippleXOrigin* {.importc: "tile_stipple_x_origin".}: int32
    tileStippleYOrigin* {.importc: "tile_stipple_y_origin".}: int32
    font*: XcbFont
    subwindowMode* {.importc: "subwindow_mode".}: uint32
    graphicsExposures* {.importc: "graphics_exposures".}: XcbBool32
    clipXOrigin* {.importc: "clip_x_origin".}: int32
    clipYOrigin* {.importc: "clip_y_origin".}: int32
    clipMask* {.importc: "clip_mask".}: XcbPixmap
    dashOffset* {.importc: "dash_offset".}: uint32
    dashes*: uint32
    arcMode* {.importc: "arc_mode".}: uint32

  XcbChangeGcRequest* {.importc: "xcb_change_gc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    gc*: XcbGcontext
    valueMask* {.importc: "value_mask".}: uint32

  XcbCopyGcRequest* {.importc: "xcb_copy_gc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    srcGc* {.importc: "src_gc".}: XcbGcontext
    dstGc* {.importc: "dst_gc".}: XcbGcontext
    valueMask* {.importc: "value_mask".}: uint32

  XcbSetDashesRequest* {.importc: "xcb_set_dashes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    gc*: XcbGcontext
    dashOffset* {.importc: "dash_offset".}: uint16
    dashesLen* {.importc: "dashes_len".}: uint16

  XcbClipOrdering* {.importc: "xcb_clip_ordering_t".} = enum
    xcbClipOrderingUnsorted = 0, xcbClipOrderingYSorted = 1,
    xcbClipOrderingYxSorted = 2, xcbClipOrderingYxBanded = 3

  XcbSetClipRectanglesRequest* {.importc: "xcb_set_clip_rectangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    ordering*: uint8
    length*: uint16
    gc*: XcbGcontext
    clipXOrigin* {.importc: "clip_x_origin".}: int16
    clipYOrigin* {.importc: "clip_y_origin".}: int16

  XcbFreeGcRequest* {.importc: "xcb_free_gc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    gc*: XcbGcontext

  XcbClearAreaRequest* {.importc: "xcb_clear_area_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    exposures*: uint8
    length*: uint16
    window*: XcbWindow
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16

  XcbCopyAreaRequest* {.importc: "xcb_copy_area_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    srcDrawable* {.importc: "src_drawable".}: XcbDrawable
    dstDrawable* {.importc: "dst_drawable".}: XcbDrawable
    gc*: XcbGcontext
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16
    width*: uint16
    height*: uint16

  XcbCopyPlaneRequest* {.importc: "xcb_copy_plane_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    srcDrawable* {.importc: "src_drawable".}: XcbDrawable
    dstDrawable* {.importc: "dst_drawable".}: XcbDrawable
    gc*: XcbGcontext
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16
    width*: uint16
    height*: uint16
    bitPlane* {.importc: "bit_plane".}: uint32

  XcbCoordMode* {.importc: "xcb_coord_mode_t", size: 1.} = enum
    xcbCoordModeOrigin = 0, xcbCoordModePrevious = 1

  XcbPolyPointRequest* {.importc: "xcb_poly_point_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    coordinateMode* {.importc: "coordinate_mode".}: XcbCoordMode
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbPolyLineRequest* {.importc: "xcb_poly_line_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    coordinateMode* {.importc: "coordinate_mode".}: XcbCoordMode
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbSegment* {.importc: "xcb_segment_t", bycopy.} = object
    x1*: int16
    y1*: int16
    x2*: int16
    y2*: int16

  XcbSegmentIterator* {.importc: "xcb_segment_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSegment]
    rem*: cint
    index*: cint

  XcbPolySegmentRequest* {.importc: "xcb_poly_segment_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbPolyRectangleRequest* {.importc: "xcb_poly_rectangle_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbPolyArcRequest* {.importc: "xcb_poly_arc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbPolyShape* {.importc: "xcb_poly_shape_t".} = enum
    xcbPolyShapeComplex = 0, xcbPolyShapeNonconvex = 1,
    xcbPolyShapeConvex = 2

  XcbFillPolyRequest* {.importc: "xcb_fill_poly_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    shape*: uint8
    coordinateMode* {.importc: "coordinate_mode".}: XcbCoordMode
    pad1: array[2, uint8]

  XcbPolyFillRectangleRequest* {.importc: "xcb_poly_fill_rectangle_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbPolyFillArcRequest* {.importc: "xcb_poly_fill_arc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext

  XcbImageFormat* {.importc: "xcb_image_format_t".} = enum
    xcbImageFormatXyBitmap = 0, xcbImageFormatXyPixmap = 1,
    xcbImageFormatZPixmap = 2

  XcbPutImageRequest* {.importc: "xcb_put_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    format*: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    width*: uint16
    height*: uint16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16
    leftPad* {.importc: "left_pad".}: uint8
    depth*: uint8
    pad0: array[2, uint8]

  XcbGetImageCookie* {.importc: "xcb_get_image_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetImageRequest* {.importc: "xcb_get_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    format*: uint8
    length*: uint16
    drawable*: XcbDrawable
    x*: int16
    y*: int16
    width*: uint16
    height*: uint16
    planeMask* {.importc: "plane_mask".}: uint32

  XcbGetImageReply* {.importc: "xcb_get_image_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    depth*: uint8
    sequence*: uint16
    length*: uint32
    visual*: XcbVisualid
    pad0: array[20, uint8]

  XcbPolyText8Request* {.importc: "xcb_poly_text8_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    x*: int16
    y*: int16

  XcbPolyText16Request* {.importc: "xcb_poly_text16_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    x*: int16
    y*: int16

  XcbImageText8Request* {.importc: "xcb_image_text8_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    stringLen* {.importc: "string_len".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    x*: int16
    y*: int16

  XcbImageText16Request* {.importc: "xcb_image_text16_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    stringLen* {.importc: "string_len".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    gc*: XcbGcontext
    x*: int16
    y*: int16

  XcbColormapAlloc* {.importc: "xcb_colormap_alloc_t".} = enum
    xcbColormapAllocNone = 0, xcbColormapAllocAll = 1

  XcbCreateColormapRequest* {.importc: "xcb_create_colormap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    alloc*: uint8
    length*: uint16
    mid*: XcbColormap
    window*: XcbWindow
    visual*: XcbVisualid

  XcbFreeColormapRequest* {.importc: "xcb_free_colormap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap

  XcbCopyColormapAndFreeRequest* {.importc: "xcb_copy_colormap_and_free_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    mid*: XcbColormap
    srcCmap* {.importc: "src_cmap".}: XcbColormap

  XcbInstallColormapRequest* {.importc: "xcb_install_colormap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap

  XcbUninstallColormapRequest* {.importc: "xcb_uninstall_colormap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap

  XcbListInstalledColormapsCookie* {.importc: "xcb_list_installed_colormaps_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListInstalledColormapsRequest* {.importc: "xcb_list_installed_colormaps_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow

  XcbListInstalledColormapsReply* {.importc: "xcb_list_installed_colormaps_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    cmapsLen* {.importc: "cmaps_len".}: uint16
    pad1: array[22, uint8]

  XcbAllocColorCookie* {.importc: "xcb_alloc_color_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbAllocColorRequest* {.importc: "xcb_alloc_color_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap
    red*: uint16
    green*: uint16
    blue*: uint16
    pad1: array[2, uint8]

  XcbAllocColorReply* {.importc: "xcb_alloc_color_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    red*: uint16
    green*: uint16
    blue*: uint16
    pad1: array[2, uint8]
    pixel*: uint32

  XcbAllocNamedColorCookie* {.importc: "xcb_alloc_named_color_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbAllocNamedColorRequest* {.importc: "xcb_alloc_named_color_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap
    nameLen* {.importc: "name_len".}: uint16
    pad1: array[2, uint8]

  XcbAllocNamedColorReply* {.importc: "xcb_alloc_named_color_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pixel*: uint32
    exactRed* {.importc: "exact_red".}: uint16
    exactGreen* {.importc: "exact_green".}: uint16
    exactBlue* {.importc: "exact_blue".}: uint16
    visualRed* {.importc: "visual_red".}: uint16
    visualGreen* {.importc: "visual_green".}: uint16
    visualBlue* {.importc: "visual_blue".}: uint16

  XcbAllocColorCellsCookie* {.importc: "xcb_alloc_color_cells_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbAllocColorCellsRequest* {.importc: "xcb_alloc_color_cells_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    contiguous*: uint8
    length*: uint16
    cmap*: XcbColormap
    colors*: uint16
    planes*: uint16

  XcbAllocColorCellsReply* {.importc: "xcb_alloc_color_cells_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pixelsLen* {.importc: "pixels_len".}: uint16
    masksLen* {.importc: "masks_len".}: uint16
    pad1: array[20, uint8]

  XcbAllocColorPlanesCookie* {.importc: "xcb_alloc_color_planes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbAllocColorPlanesRequest* {.importc: "xcb_alloc_color_planes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    contiguous*: uint8
    length*: uint16
    cmap*: XcbColormap
    colors*: uint16
    reds*: uint16
    greens*: uint16
    blues*: uint16

  XcbAllocColorPlanesReply* {.importc: "xcb_alloc_color_planes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pixelsLen* {.importc: "pixels_len".}: uint16
    pad1: array[2, uint8]
    redMask* {.importc: "red_mask".}: uint32
    greenMask* {.importc: "green_mask".}: uint32
    blueMask* {.importc: "blue_mask".}: uint32
    pad2: array[8, uint8]

  XcbFreeColorsRequest* {.importc: "xcb_free_colors_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap
    planeMask* {.importc: "plane_mask".}: uint32

  XcbColorFlag* {.importc: "xcb_color_flag_t".} = enum
    xcbColorFlagRed = 1, xcbColorFlagGreen = 2, xcbColorFlagBlue = 4
  XcbColoritem* {.importc: "xcb_coloritem_t", bycopy.} = object
    pixel*: uint32
    red*: uint16
    green*: uint16
    blue*: uint16
    flags*: uint8
    pad0: uint8

  XcbColoritemIterator* {.importc: "xcb_coloritem_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbColoritem]
    rem*: cint
    index*: cint

  XcbStoreColorsRequest* {.importc: "xcb_store_colors_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap

  XcbStoreNamedColorRequest* {.importc: "xcb_store_named_color_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    flags*: uint8
    length*: uint16
    cmap*: XcbColormap
    pixel*: uint32
    nameLen* {.importc: "name_len".}: uint16
    pad0: array[2, uint8]

  XcbRgb* {.importc: "xcb_rgb_t", bycopy.} = object
    red*: uint16
    green*: uint16
    blue*: uint16
    pad0: array[2, uint8]

  XcbRgbIterator* {.importc: "xcb_rgb_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRgb]
    rem*: cint
    index*: cint

  XcbQueryColorsCookie* {.importc: "xcb_query_colors_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryColorsRequest* {.importc: "xcb_query_colors_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap

  XcbQueryColorsReply* {.importc: "xcb_query_colors_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    colorsLen* {.importc: "colors_len".}: uint16
    pad1: array[22, uint8]

  XcbLookupColorCookie* {.importc: "xcb_lookup_color_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbLookupColorRequest* {.importc: "xcb_lookup_color_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cmap*: XcbColormap
    nameLen* {.importc: "name_len".}: uint16
    pad1: array[2, uint8]

  XcbLookupColorReply* {.importc: "xcb_lookup_color_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    exactRed* {.importc: "exact_red".}: uint16
    exactGreen* {.importc: "exact_green".}: uint16
    exactBlue* {.importc: "exact_blue".}: uint16
    visualRed* {.importc: "visual_red".}: uint16
    visualGreen* {.importc: "visual_green".}: uint16
    visualBlue* {.importc: "visual_blue".}: uint16

  XcbPixmapEnum* {.importc: "xcb_pixmap_enum_t".} = enum
    xcbPixmapNone = 0

  XcbCreateCursorRequest* {.importc: "xcb_create_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cid*: XcbCursor
    source*: XcbPixmap
    mask*: XcbPixmap
    foreRed* {.importc: "fore_red".}: uint16
    foreGreen* {.importc: "fore_green".}: uint16
    foreBlue* {.importc: "fore_blue".}: uint16
    backRed* {.importc: "back_red".}: uint16
    backGreen* {.importc: "back_green".}: uint16
    backBlue* {.importc: "back_blue".}: uint16
    x*: uint16
    y*: uint16

  XcbFontEnum* {.importc: "xcb_font_enum_t".} = enum
    xcbFontNone = 0

  XcbCreateGlyphCursorRequest* {.importc: "xcb_create_glyph_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cid*: XcbCursor
    sourceFont* {.importc: "source_font".}: XcbFont
    maskFont* {.importc: "mask_font".}: XcbFont
    sourceChar* {.importc: "source_char".}: uint16
    maskChar* {.importc: "mask_char".}: uint16
    foreRed* {.importc: "fore_red".}: uint16
    foreGreen* {.importc: "fore_green".}: uint16
    foreBlue* {.importc: "fore_blue".}: uint16
    backRed* {.importc: "back_red".}: uint16
    backGreen* {.importc: "back_green".}: uint16
    backBlue* {.importc: "back_blue".}: uint16

  XcbFreeCursorRequest* {.importc: "xcb_free_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cursor*: XcbCursor

  XcbRecolorCursorRequest* {.importc: "xcb_recolor_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    cursor*: XcbCursor
    foreRed* {.importc: "fore_red".}: uint16
    foreGreen* {.importc: "fore_green".}: uint16
    foreBlue* {.importc: "fore_blue".}: uint16
    backRed* {.importc: "back_red".}: uint16
    backGreen* {.importc: "back_green".}: uint16
    backBlue* {.importc: "back_blue".}: uint16

  XcbQueryShapeOf* {.importc: "xcb_query_shape_of_t".} = enum
    xcbQueryShapeOfLargestCursor = 0, xcbQueryShapeOfFastestTile = 1,
    xcbQueryShapeOfFastestStipple = 2
  XcbQueryBestSizeCookie* {.importc: "xcb_query_best_size_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryBestSizeRequest* {.importc: "xcb_query_best_size_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    class*: uint8
    length*: uint16
    drawable*: XcbDrawable
    width*: uint16
    height*: uint16

  XcbQueryBestSizeReply* {.importc: "xcb_query_best_size_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    width*: uint16
    height*: uint16

  XcbQueryExtensionCookie* {.importc: "xcb_query_extension_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbQueryExtensionRequest* {.importc: "xcb_query_extension_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    nameLen* {.importc: "name_len".}: uint16
    pad1: array[2, uint8]

  XcbQueryExtensionReply* {.importc: "xcb_query_extension_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    present*: uint8
    majorOpcode* {.importc: "major_opcode".}: uint8
    firstEvent* {.importc: "first_event".}: uint8
    firstError* {.importc: "first_error".}: uint8

  XcbListExtensionsCookie* {.importc: "xcb_list_extensions_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListExtensionsRequest* {.importc: "xcb_list_extensions_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbListExtensionsReply* {.importc: "xcb_list_extensions_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    namesLen* {.importc: "names_len".}: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbChangeKeyboardMappingRequest* {.importc: "xcb_change_keyboard_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    keycodeCount* {.importc: "keycode_count".}: uint8
    length*: uint16
    firstKeycode* {.importc: "first_keycode".}: XcbKeycode
    keysymsPerKeycode* {.importc: "keysyms_per_keycode".}: uint8
    pad0: array[2, uint8]

  XcbGetKeyboardMappingCookie* {.importc: "xcb_get_keyboard_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetKeyboardMappingRequest* {.importc: "xcb_get_keyboard_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    firstKeycode* {.importc: "first_keycode".}: XcbKeycode
    count*: uint8

  XcbGetKeyboardMappingReply* {.importc: "xcb_get_keyboard_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    keysymsPerKeycode* {.importc: "keysyms_per_keycode".}: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbKb* {.importc: "xcb_kb_t".} = enum
    xcbKbKeyClickPercent = 1, xcbKbBellPercent = 2, xcbKbBellPitch = 4,
    xcbKbBellDuration = 8, xcbKbLed = 16, xcbKbLedMode = 32, xcbKbKey = 64,
    xcbKbAutoRepeatMode = 128
  XcbLedMode* {.importc: "xcb_led_mode_t".} = enum
    xcbLedModeOff = 0, xcbLedModeOn = 1
  XcbAutoRepeatMode* {.importc: "xcb_auto_repeat_mode_t".} = enum
    xcbAutoRepeatModeOff = 0, xcbAutoRepeatModeOn = 1,
    xcbAutoRepeatModeDefault = 2
  XcbChangeKeyboardControlValueList* {.importc: "xcb_change_keyboard_control_value_list_t", bycopy.} = object
    keyClickPercent* {.importc: "key_click_percent".}: int32
    bellPercent* {.importc: "bell_percent".}: int32
    bellPitch* {.importc: "bell_pitch".}: int32
    bellDuration* {.importc: "bell_duration".}: int32
    led*: uint32
    ledMode* {.importc: "led_mode".}: uint32
    key*: XcbKeycode32
    autoRepeatMode* {.importc: "auto_repeat_mode".}: uint32

  XcbChangeKeyboardControlRequest* {.importc: "xcb_change_keyboard_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    valueMask* {.importc: "value_mask".}: uint32

  XcbGetKeyboardControlCookie* {.importc: "xcb_get_keyboard_control_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetKeyboardControlRequest* {.importc: "xcb_get_keyboard_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetKeyboardControlReply* {.importc: "xcb_get_keyboard_control_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    globalAutoRepeat* {.importc: "global_auto_repeat".}: uint8
    sequence*: uint16
    length*: uint32
    ledMask* {.importc: "led_mask".}: uint32
    keyClickPercent* {.importc: "key_click_percent".}: uint8
    bellPercent* {.importc: "bell_percent".}: uint8
    bellPitch* {.importc: "bell_pitch".}: uint16
    bellDuration* {.importc: "bell_duration".}: uint16
    pad0: array[2, uint8]
    autoRepeats* {.importc: "auto_repeats".}: array[32, uint8]

  XcbBellRequest* {.importc: "xcb_bell_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    percent*: int8
    length*: uint16

  XcbChangePointerControlRequest* {.importc: "xcb_change_pointer_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    accelerationNumerator* {.importc: "acceleration_numerator".}: int16
    accelerationDenominator* {.importc: "acceleration_denominator".}: int16
    threshold*: int16
    doAcceleration* {.importc: "do_acceleration".}: uint8
    doThreshold* {.importc: "do_threshold".}: uint8

  XcbGetPointerControlCookie* {.importc: "xcb_get_pointer_control_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetPointerControlRequest* {.importc: "xcb_get_pointer_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetPointerControlReply* {.importc: "xcb_get_pointer_control_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    accelerationNumerator* {.importc: "acceleration_numerator".}: uint16
    accelerationDenominator* {.importc: "acceleration_denominator".}: uint16
    threshold*: uint16
    pad1: array[18, uint8]

  XcbBlanking* {.importc: "xcb_blanking_t".} = enum
    xcbBlankingNotPreferred = 0, xcbBlankingPreferred = 1,
    xcbBlankingDefault = 2

  XcbExposures* {.importc: "xcb_exposures_t".} = enum
    xcbExposuresNotAllowed = 0, xcbExposuresAllowed = 1,
    xcbExposuresDefault = 2

  XcbSetScreenSaverRequest* {.importc: "xcb_set_screen_saver_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    timeout*: int16
    interval*: int16
    preferBlanking* {.importc: "prefer_blanking".}: uint8
    allowExposures* {.importc: "allow_exposures".}: uint8

  XcbGetScreenSaverCookie* {.importc: "xcb_get_screen_saver_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetScreenSaverRequest* {.importc: "xcb_get_screen_saver_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetScreenSaverReply* {.importc: "xcb_get_screen_saver_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    timeout*: uint16
    interval*: uint16
    preferBlanking* {.importc: "prefer_blanking".}: uint8
    allowExposures* {.importc: "allow_exposures".}: uint8
    pad1: array[18, uint8]

  XcbHostMode* {.importc: "xcb_host_mode_t".} = enum
    xcbHostModeInsert = 0, xcbHostModeDelete = 1

  XcbFamily* {.importc: "xcb_family_t".} = enum
    xcbFamilyInternet = 0, xcbFamilyDecnet = 1, xcbFamilyChaos = 2,
    xcbFamilyServerInterpreted = 5, xcbFamilyInternet6 = 6

  XcbChangeHostsRequest* {.importc: "xcb_change_hosts_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16
    family*: uint8
    pad0: uint8
    addressLen* {.importc: "address_len".}: uint16

  XcbHost* {.importc: "xcb_host_t", bycopy.} = object
    family*: uint8
    pad0: uint8
    addressLen* {.importc: "address_len".}: uint16

  XcbHostIterator* {.importc: "xcb_host_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbHost]
    rem*: cint
    index*: cint

  XcbListHostsCookie* {.importc: "xcb_list_hosts_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbListHostsRequest* {.importc: "xcb_list_hosts_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbListHostsReply* {.importc: "xcb_list_hosts_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    mode*: uint8
    sequence*: uint16
    length*: uint32
    hostsLen* {.importc: "hosts_len".}: uint16
    pad0: array[22, uint8]

  XcbAccessControl* {.importc: "xcb_access_control_t".} = enum
    xcbAccessControlDisable = 0, xcbAccessControlEnable = 1

  XcbSetAccessControlRequest* {.importc: "xcb_set_access_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16

  XcbCloseDown* {.importc: "xcb_close_down_t".} = enum
    xcbCloseDownDestroyAll = 0, xcbCloseDownRetainPermanent = 1,
    xcbCloseDownRetainTemporary = 2

  XcbSetCloseDownModeRequest* {.importc: "xcb_set_close_down_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16

  XcbKill* {.importc: "xcb_kill_t".} = enum
    xcbKillAllTemporary = 0

  XcbKillClientRequest* {.importc: "xcb_kill_client_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    resource*: uint32

  XcbRotatePropertiesRequest* {.importc: "xcb_rotate_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16
    window*: XcbWindow
    atomsLen* {.importc: "atoms_len".}: uint16
    delta*: int16

  XcbScreenSaver* {.importc: "xcb_screen_saver_t".} = enum
    xcbScreenSaverReset = 0, xcbScreenSaverActive = 1

  XcbForceScreenSaverRequest* {.importc: "xcb_force_screen_saver_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mode*: uint8
    length*: uint16

  XcbMappingStatus* {.importc: "xcb_mapping_status_t".} = enum
    xcbMappingStatusSuccess = 0, xcbMappingStatusBusy = 1,
    xcbMappingStatusFailure = 2

  XcbSetPointerMappingCookie* {.importc: "xcb_set_pointer_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSetPointerMappingRequest* {.importc: "xcb_set_pointer_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    mapLen* {.importc: "map_len".}: uint8
    length*: uint16

  XcbSetPointerMappingReply* {.importc: "xcb_set_pointer_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32

  XcbGetPointerMappingCookie* {.importc: "xcb_get_pointer_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetPointerMappingRequest* {.importc: "xcb_get_pointer_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetPointerMappingReply* {.importc: "xcb_get_pointer_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    mapLen* {.importc: "map_len".}: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbMapIndex* {.importc: "xcb_map_index_t".} = enum
    xcbMapIndexShift = 0, xcbMapIndexLock = 1, xcbMapIndexControl = 2,
    xcbMapIndex1 = 3, xcbMapIndex2 = 4, xcbMapIndex3 = 5, xcbMapIndex4 = 6,
    xcbMapIndex5 = 7

  XcbSetModifierMappingCookie* {.importc: "xcb_set_modifier_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSetModifierMappingRequest* {.importc: "xcb_set_modifier_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    keycodesPerModifier* {.importc: "keycodes_per_modifier".}: uint8
    length*: uint16

  XcbSetModifierMappingReply* {.importc: "xcb_set_modifier_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32

  XcbGetModifierMappingCookie* {.importc: "xcb_get_modifier_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGetModifierMappingRequest* {.importc: "xcb_get_modifier_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

  XcbGetModifierMappingReply* {.importc: "xcb_get_modifier_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    keycodesPerModifier* {.importc: "keycodes_per_modifier".}: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[24, uint8]

  XcbNoOperationRequest* {.importc: "xcb_no_operation_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: uint8
    length*: uint16

{.pop.}

const
  xcbAtomAny* = xcbAtomNone
  xcbGravityWinUnmap* = xcbGravityBitForget

{.push cdecl, header: "xcb/xproto.h".}

proc next*(i: ptr XcbChar2bIterator) {.importc: "xcb_char2b_next".}
proc iterEnd*(i: XcbChar2bIterator): XcbGenericIterator {.importc: "xcb_char2b_end".}
proc next*(i: ptr XcbWindowIterator) {.importc: "xcb_window_next".}
proc iterEnd*(i: XcbWindowIterator): XcbGenericIterator {.importc: "xcb_window_end".}
proc next*(i: ptr XcbPixmapIterator) {.importc: "xcb_pixmap_next".}
proc iterEnd*(i: XcbPixmapIterator): XcbGenericIterator {.importc: "xcb_pixmap_end".}
proc next*(i: ptr XcbCursorIterator) {.importc: "xcb_cursor_next".}
proc iterEnd*(i: XcbCursorIterator): XcbGenericIterator {.importc: "xcb_cursor_end".}
proc next*(i: ptr XcbFontIterator) {.importc: "xcb_font_next".}
proc iterEnd*(i: XcbFontIterator): XcbGenericIterator {.importc: "xcb_font_end".}
proc next*(i: ptr XcbGcontextIterator) {.importc: "xcb_gcontext_next".}
proc iterEnd*(i: XcbGcontextIterator): XcbGenericIterator {.importc: "xcb_gcontext_end".}
proc next*(i: ptr XcbColormapIterator) {.importc: "xcb_colormap_next".}
proc iterEnd*(i: XcbColormapIterator): XcbGenericIterator {.importc: "xcb_colormap_end".}
proc next*(i: ptr XcbAtomIterator) {.importc: "xcb_atom_next".}
proc iterEnd*(i: XcbAtomIterator): XcbGenericIterator {.importc: "xcb_atom_end".}
proc next*(i: ptr XcbDrawableIterator) {.importc: "xcb_drawable_next".}
proc iterEnd*(i: XcbDrawableIterator): XcbGenericIterator {.importc: "xcb_drawable_end".}
proc next*(i: ptr XcbFontableIterator) {.importc: "xcb_fontable_next".}
proc iterEnd*(i: XcbFontableIterator): XcbGenericIterator {.importc: "xcb_fontable_end".}
proc next*(i: ptr XcbBool32Iterator) {.importc: "xcb_bool32_next".}
proc iterEnd*(i: XcbBool32Iterator): XcbGenericIterator {.importc: "xcb_bool32_end".}
proc next*(i: ptr XcbVisualidIterator) {.importc: "xcb_visualid_next".}
proc iterEnd*(i: XcbVisualidIterator): XcbGenericIterator {.importc: "xcb_visualid_end".}
proc next*(i: ptr XcbTimestampIterator) {.importc: "xcb_timestamp_next".}
proc iterEnd*(i: XcbTimestampIterator): XcbGenericIterator {.importc: "xcb_timestamp_end".}
proc next*(i: ptr XcbKeysymIterator) {.importc: "xcb_keysym_next".}
proc iterEnd*(i: XcbKeysymIterator): XcbGenericIterator {.importc: "xcb_keysym_end".}
proc next*(i: ptr XcbKeycodeIterator) {.importc: "xcb_keycode_next".}
proc iterEnd*(i: XcbKeycodeIterator): XcbGenericIterator {.importc: "xcb_keycode_end".}
proc next*(i: ptr XcbKeycode32Iterator) {.importc: "xcb_keycode32_next".}
proc iterEnd*(i: XcbKeycode32Iterator): XcbGenericIterator {.importc: "xcb_keycode32_end".}
proc next*(i: ptr XcbButtonIterator) {.importc: "xcb_button_next".}
proc iterEnd*(i: XcbButtonIterator): XcbGenericIterator {.importc: "xcb_button_end".}
proc next*(i: ptr XcbPointIterator) {.importc: "xcb_point_next".}
proc iterEnd*(i: XcbPointIterator): XcbGenericIterator {.importc: "xcb_point_end".}
proc next*(i: ptr XcbRectangleIterator) {.importc: "xcb_rectangle_next".}
proc iterEnd*(i: XcbRectangleIterator): XcbGenericIterator {.importc: "xcb_rectangle_end".}
proc next*(i: ptr XcbArcIterator) {.importc: "xcb_arc_next".}
proc iterEnd*(i: XcbArcIterator): XcbGenericIterator {.importc: "xcb_arc_end".}
proc next*(i: ptr XcbFormatIterator) {.importc: "xcb_format_next".}
proc iterEnd*(i: XcbFormatIterator): XcbGenericIterator {.importc: "xcb_format_end".}
proc next*(i: ptr XcbVisualtypeIterator) {.importc: "xcb_visualtype_next".}
proc iterEnd*(i: XcbVisualtypeIterator): XcbGenericIterator {.importc: "xcb_visualtype_end".}
proc depthSizeof*(buffer: pointer): cint {.importc: "xcb_depth_sizeof".}
proc depthVisuals*(R: ptr XcbDepth): ptr UncheckedArray[XcbVisualtype] {.importc: "xcb_depth_visuals".}
proc depthVisualsLength*(R: ptr XcbDepth): cint {.importc: "xcb_depth_visuals_length".}
proc depthVisualsIterator*(R: ptr XcbDepth): XcbVisualtypeIterator {.importc: "xcb_depth_visuals_iterator".}
proc next*(i: ptr XcbDepthIterator) {.importc: "xcb_depth_next".}
proc iterEnd*(i: XcbDepthIterator): XcbGenericIterator {.importc: "xcb_depth_end".}
proc screenSizeof*(buffer: pointer): cint {.importc: "xcb_screen_sizeof".}
proc allowedDepthsLength*(R: ptr XcbScreen): cint {.importc: "xcb_screen_allowed_depths_length".}
proc allowedDepthsIterator*(R: ptr XcbScreen): XcbDepthIterator {.importc: "xcb_screen_allowed_depths_iterator".}
proc next*(i: ptr XcbScreenIterator) {.importc: "xcb_screen_next".}
proc iterEnd*(i: XcbScreenIterator): XcbGenericIterator {.importc: "xcb_screen_end".}
proc setupRequestSizeof*(buffer: pointer): cint {.importc: "xcb_setup_request_sizeof".}
proc authorizationProtocolName*(R: ptr XcbSetupRequest): ptr UncheckedArray[char] {.importc: "xcb_setup_request_authorization_protocol_name".}
proc authorizationProtocolNameLength*(R: ptr XcbSetupRequest): cint {.importc: "xcb_setup_request_authorization_protocol_name_length".}
proc authorizationProtocolNameEnd*(R: ptr XcbSetupRequest): XcbGenericIterator {.importc: "xcb_setup_request_authorization_protocol_name_end".}
proc tAuthorizationProtocolData*(R: ptr XcbSetupRequest): ptr UncheckedArray[char] {.importc: "xcb_setup_request_authorization_protocol_data".}
proc tAuthorizationProtocolDataLength*(R: ptr XcbSetupRequest): cint {.importc: "xcb_setup_request_authorization_protocol_data_length".}
proc tAuthorizationProtocolDataEnd*(R: ptr XcbSetupRequest): XcbGenericIterator {.importc: "xcb_setup_request_authorization_protocol_data_end".}
proc next*(i: ptr XcbSetupRequestIterator) {.importc: "xcb_setup_request_next".}
proc iterEnd*(i: XcbSetupRequestIterator): XcbGenericIterator {.importc: "xcb_setup_request_end".}
proc setupFailedSizeof*(buffer: pointer): cint {.importc: "xcb_setup_failed_sizeof".}
proc reason*(R: ptr XcbSetupFailed): ptr UncheckedArray[char] {.importc: "xcb_setup_failed_reason".}
proc reasonLength*(R: ptr XcbSetupFailed): cint {.importc: "xcb_setup_failed_reason_length".}
proc reasonEnd*(R: ptr XcbSetupFailed): XcbGenericIterator {.importc: "xcb_setup_failed_reason_end".}
proc next*(i: ptr XcbSetupFailedIterator) {.importc: "xcb_setup_failed_next".}
proc iterEnd*(i: XcbSetupFailedIterator): XcbGenericIterator {.importc: "xcb_setup_failed_end".}
proc setupAuthenticateSizeof*(buffer: pointer): cint {.importc: "xcb_setup_authenticate_sizeof".}
proc reason*(R: ptr XcbSetupAuthenticate): ptr UncheckedArray[char] {.importc: "xcb_setup_authenticate_reason".}
proc reasonLength*(R: ptr XcbSetupAuthenticate): cint {.importc: "xcb_setup_authenticate_reason_length".}
proc reasonEnd*(R: ptr XcbSetupAuthenticate): XcbGenericIterator {.importc: "xcb_setup_authenticate_reason_end".}
proc next*(i: ptr XcbSetupAuthenticateIterator) {.importc: "xcb_setup_authenticate_next".}
proc iterEnd*(i: XcbSetupAuthenticateIterator): XcbGenericIterator {.importc: "xcb_setup_authenticate_end".}
proc setupSizeof*(buffer: pointer): cint {.importc: "xcb_setup_sizeof".}
proc vendor*(R: ptr XcbSetup): ptr UncheckedArray[char] {.importc: "xcb_setup_vendor".}
proc vendorLength*(R: ptr XcbSetup): cint {.importc: "xcb_setup_vendor_length".}
proc vendorEnd*(R: ptr XcbSetup): XcbGenericIterator {.importc: "xcb_setup_vendor_end".}
proc pixmapFormats*(R: ptr XcbSetup): ptr UncheckedArray[XcbFormat] {.importc: "xcb_setup_pixmap_formats".}
proc pixmapFormatsLength*(R: ptr XcbSetup): cint {.importc: "xcb_setup_pixmap_formats_length".}
proc pixmapFormatsIterator*(R: ptr XcbSetup): XcbFormatIterator {.importc: "xcb_setup_pixmap_formats_iterator".}
proc rootsLength*(R: ptr XcbSetup): cint {.importc: "xcb_setup_roots_length".}
proc rootsIterator*(R: ptr XcbSetup): XcbScreenIterator {.importc: "xcb_setup_roots_iterator".}
proc next*(i: ptr XcbSetupIterator) {.importc: "xcb_setup_next".}
proc iterEnd*(i: XcbSetupIterator): XcbGenericIterator {.importc: "xcb_setup_end".}
proc next*(i: ptr XcbClientMessageDataIterator) {.importc: "xcb_client_message_data_next".}
proc iterEnd*(i: XcbClientMessageDataIterator): XcbGenericIterator {.importc: "xcb_client_message_data_end".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbCreateWindowValueList): cint {.importc: "xcb_create_window_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbCreateWindowValueList): cint {.importc: "xcb_create_window_value_list_unpack".}
proc createWindowValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_create_window_value_list_sizeof".}
proc createWindowSizeof*(buffer: pointer): cint {.importc: "xcb_create_window_sizeof".}
proc createWindowChecked*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x: int16; y: int16; width: uint16; height: uint16; borderWidth: uint16; class: uint16; visual: XcbVisualid; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_create_window_checked".}
proc createWindow*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x: int16; y: int16; width: uint16; height: uint16; borderWidth: uint16; class: uint16; visual: XcbVisualid; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_create_window".}
proc createWindowAuxChecked*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x: int16; y: int16; width: uint16; height: uint16; borderWidth: uint16; class: uint16; visual: XcbVisualid; valueMask: uint32; valueList: ptr XcbCreateWindowValueList): XcbVoidCookie {.discardable, importc: "xcb_create_window_aux_checked".}
proc createWindowAux*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x: int16; y: int16; width: uint16; height: uint16; borderWidth: uint16; class: uint16; visual: XcbVisualid; valueMask: uint32; valueList: ptr XcbCreateWindowValueList): XcbVoidCookie {.discardable, importc: "xcb_create_window_aux".}
proc valueList*(R: ptr XcbCreateWindowRequest): pointer {.importc: "xcb_create_window_value_list".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbChangeWindowAttributesValueList): cint {.importc: "xcb_change_window_attributes_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbChangeWindowAttributesValueList): cint {.importc: "xcb_change_window_attributes_value_list_unpack".}
proc changeWindowAttributesValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_change_window_attributes_value_list_sizeof".}
proc changeWindowAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_change_window_attributes_sizeof".}
proc changeAttributesChecked*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_window_attributes_checked".}
proc changeAttributes*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_window_attributes".}
proc changeAttributesAuxChecked*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint32; valueList: ptr XcbChangeWindowAttributesValueList): XcbVoidCookie {.discardable, importc: "xcb_change_window_attributes_aux_checked".}
proc changeAttributesAux*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint32; valueList: ptr XcbChangeWindowAttributesValueList): XcbVoidCookie {.discardable, importc: "xcb_change_window_attributes_aux".}
proc valueList*(R: ptr XcbChangeWindowAttributesRequest): pointer {.importc: "xcb_change_window_attributes_value_list".}
proc getAttributes*(c: ptr XcbConnection; window: XcbWindow): XcbGetWindowAttributesCookie {.importc: "xcb_get_window_attributes".}
proc getAttributesUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetWindowAttributesCookie {.importc: "xcb_get_window_attributes_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetWindowAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbGetWindowAttributesReply {.importc: "xcb_get_window_attributes_reply".}
proc destroyChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_destroy_window_checked".}
proc destroy*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_destroy_window".}
proc destroySubwindowsChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_destroy_subwindows_checked".}
proc destroySubwindows*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_destroy_subwindows".}
proc changeSaveSetChecked*(c: ptr XcbConnection; mode: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_change_save_set_checked".}
proc changeSaveSet*(c: ptr XcbConnection; mode: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_change_save_set".}
proc reparentChecked*(c: ptr XcbConnection; window: XcbWindow; parent: XcbWindow; x: int16; y: int16): XcbVoidCookie {.discardable, importc: "xcb_reparent_window_checked".}
proc reparent*(c: ptr XcbConnection; window: XcbWindow; parent: XcbWindow; x: int16; y: int16): XcbVoidCookie {.discardable, importc: "xcb_reparent_window".}
proc mapChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_map_window_checked".}
proc map*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_map_window".}
proc mapSubwindowsChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_map_subwindows_checked".}
proc mapSubwindows*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_map_subwindows".}
proc unmapChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_unmap_window_checked".}
proc unmap*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_unmap_window".}
proc unmapSubwindowsChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_unmap_subwindows_checked".}
proc unmapSubwindows*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_unmap_subwindows".}
proc serialize*(buffer: ptr pointer; valueMask: uint16; aux: ptr XcbConfigureWindowValueList): cint {.importc: "xcb_configure_window_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint16; aux: ptr XcbConfigureWindowValueList): cint {.importc: "xcb_configure_window_value_list_unpack".}
proc configureWindowValueListSizeof*(buffer: pointer; valueMask: uint16): cint {.importc: "xcb_configure_window_value_list_sizeof".}
proc configureWindowSizeof*(buffer: pointer): cint {.importc: "xcb_configure_window_sizeof".}
proc configureChecked*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint16; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_configure_window_checked".}
proc configure*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint16; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_configure_window".}
proc configureAuxChecked*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint16; valueList: ptr XcbConfigureWindowValueList): XcbVoidCookie {.discardable, importc: "xcb_configure_window_aux_checked".}
proc configureAux*(c: ptr XcbConnection; window: XcbWindow; valueMask: uint16; valueList: ptr XcbConfigureWindowValueList): XcbVoidCookie {.discardable, importc: "xcb_configure_window_aux".}
proc valueList*(R: ptr XcbConfigureWindowRequest): pointer {.importc: "xcb_configure_window_value_list".}
proc circulateChecked*(c: ptr XcbConnection; direction: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_circulate_window_checked".}
proc circulate*(c: ptr XcbConnection; direction: uint8; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_circulate_window".}
proc getGeometry*(c: ptr XcbConnection; drawable: XcbDrawable): XcbGetGeometryCookie {.importc: "xcb_get_geometry".}
proc getGeometryUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbGetGeometryCookie {.importc: "xcb_get_geometry_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetGeometryCookie; e: ptr ptr XcbGenericError): ptr XcbGetGeometryReply {.importc: "xcb_get_geometry_reply".}
proc queryTreeSizeof*(buffer: pointer): cint {.importc: "xcb_query_tree_sizeof".}
proc queryTree*(c: ptr XcbConnection; window: XcbWindow): XcbQueryTreeCookie {.importc: "xcb_query_tree".}
proc queryTreeUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbQueryTreeCookie {.importc: "xcb_query_tree_unchecked".}
proc children*(R: ptr XcbQueryTreeReply): ptr UncheckedArray[XcbWindow] {.importc: "xcb_query_tree_children".}
proc childrenLength*(R: ptr XcbQueryTreeReply): cint {.importc: "xcb_query_tree_children_length".}
proc childrenEnd*(R: ptr XcbQueryTreeReply): XcbGenericIterator {.importc: "xcb_query_tree_children_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryTreeCookie; e: ptr ptr XcbGenericError): ptr XcbQueryTreeReply {.importc: "xcb_query_tree_reply".}
proc internAtomSizeof*(buffer: pointer): cint {.importc: "xcb_intern_atom_sizeof".}
proc internAtom*(c: ptr XcbConnection; onlyIfExists: bool; nameLen: uint16; name: cstring): XcbInternAtomCookie {.importc: "xcb_intern_atom".}
proc internAtomUnchecked*(c: ptr XcbConnection; onlyIfExists: bool; nameLen: uint16; name: cstring): XcbInternAtomCookie {.importc: "xcb_intern_atom_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInternAtomCookie; e: ptr ptr XcbGenericError): ptr XcbInternAtomReply {.importc: "xcb_intern_atom_reply".}
proc getAtomNameSizeof*(buffer: pointer): cint {.importc: "xcb_get_atom_name_sizeof".}
proc getName*(c: ptr XcbConnection; atom: XcbAtom): XcbGetAtomNameCookie {.importc: "xcb_get_atom_name".}
proc getNameUnchecked*(c: ptr XcbConnection; atom: XcbAtom): XcbGetAtomNameCookie {.importc: "xcb_get_atom_name_unchecked".}
proc name*(R: ptr XcbGetAtomNameReply): ptr UncheckedArray[char] {.importc: "xcb_get_atom_name_name".}
proc nameLength*(R: ptr XcbGetAtomNameReply): cint {.importc: "xcb_get_atom_name_name_length".}
proc nameEnd*(R: ptr XcbGetAtomNameReply): XcbGenericIterator {.importc: "xcb_get_atom_name_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetAtomNameCookie; e: ptr ptr XcbGenericError): ptr XcbGetAtomNameReply {.importc: "xcb_get_atom_name_reply".}
proc changePropertySizeof*(buffer: pointer): cint {.importc: "xcb_change_property_sizeof".}
proc changePropertyChecked*(c: ptr XcbConnection; mode: XcbPropMode; window: XcbWindow; property: XcbAtom; `type`: XcbAtom; format: uint8; dataLen: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_property_checked".}
proc changeProperty*(c: ptr XcbConnection; mode: XcbPropMode; window: XcbWindow; property: XcbAtom; `type`: XcbAtom; format: uint8; dataLen: uint32; data: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_property".}
proc data*(R: ptr XcbChangePropertyRequest): pointer {.importc: "xcb_change_property_data".}
proc dataLength*(R: ptr XcbChangePropertyRequest): cint {.importc: "xcb_change_property_data_length".}
proc dataEnd*(R: ptr XcbChangePropertyRequest): XcbGenericIterator {.importc: "xcb_change_property_data_end".}
proc deletePropertyChecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_delete_property_checked".}
proc deleteProperty*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_delete_property".}
proc getPropertySizeof*(buffer: pointer): cint {.importc: "xcb_get_property_sizeof".}
proc getProperty*(c: ptr XcbConnection; delete: uint8; window: XcbWindow; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32): XcbGetPropertyCookie {.importc: "xcb_get_property".}
proc getPropertyUnchecked*(c: ptr XcbConnection; delete: uint8; window: XcbWindow; property: XcbAtom; `type`: XcbAtom; longOffset: uint32; longLength: uint32): XcbGetPropertyCookie {.importc: "xcb_get_property_unchecked".}
proc value*(R: ptr XcbGetPropertyReply): pointer {.importc: "xcb_get_property_value".}
proc valueLength*(R: ptr XcbGetPropertyReply): cint {.importc: "xcb_get_property_value_length".}
proc valueEnd*(R: ptr XcbGetPropertyReply): XcbGenericIterator {.importc: "xcb_get_property_value_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbGetPropertyReply {.importc: "xcb_get_property_reply".}
proc listPropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_list_properties_sizeof".}
proc listProperties*(c: ptr XcbConnection; window: XcbWindow): XcbListPropertiesCookie {.importc: "xcb_list_properties".}
proc listPropertiesUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbListPropertiesCookie {.importc: "xcb_list_properties_unchecked".}
proc atoms*(R: ptr XcbListPropertiesReply): ptr UncheckedArray[XcbAtom] {.importc: "xcb_list_properties_atoms".}
proc atomsLength*(R: ptr XcbListPropertiesReply): cint {.importc: "xcb_list_properties_atoms_length".}
proc atomsEnd*(R: ptr XcbListPropertiesReply): XcbGenericIterator {.importc: "xcb_list_properties_atoms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbListPropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbListPropertiesReply {.importc: "xcb_list_properties_reply".}
proc setSelectionOwnerChecked*(c: ptr XcbConnection; owner: XcbWindow; selection: XcbAtom; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_set_selection_owner_checked".}
proc setSelectionOwner*(c: ptr XcbConnection; owner: XcbWindow; selection: XcbAtom; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_set_selection_owner".}
proc getSelectionOwner*(c: ptr XcbConnection; selection: XcbAtom): XcbGetSelectionOwnerCookie {.importc: "xcb_get_selection_owner".}
proc getSelectionOwnerUnchecked*(c: ptr XcbConnection; selection: XcbAtom): XcbGetSelectionOwnerCookie {.importc: "xcb_get_selection_owner_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetSelectionOwnerCookie; e: ptr ptr XcbGenericError): ptr XcbGetSelectionOwnerReply {.importc: "xcb_get_selection_owner_reply".}
proc convertSelectionChecked*(c: ptr XcbConnection; requestor: XcbWindow; selection: XcbAtom; target: XcbAtom; property: XcbAtom; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_convert_selection_checked".}
proc convertSelection*(c: ptr XcbConnection; requestor: XcbWindow; selection: XcbAtom; target: XcbAtom; property: XcbAtom; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_convert_selection".}
proc sendEventChecked*(c: ptr XcbConnection; propagate: uint8; destination: XcbWindow; eventMask: uint32; event: cstring): XcbVoidCookie {.discardable, importc: "xcb_send_event_checked".}
proc sendEvent*(c: ptr XcbConnection; propagate: uint8; destination: XcbWindow; eventMask: uint32; event: cstring): XcbVoidCookie {.discardable, importc: "xcb_send_event".}
proc grabPointer*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; eventMask: uint16; pointerMode: uint8; keyboardMode: uint8; confineTo: XcbWindow; cursor: XcbCursor; time: XcbTimestamp): XcbGrabPointerCookie {.importc: "xcb_grab_pointer".}
proc grabPointerUnchecked*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; eventMask: uint16; pointerMode: uint8; keyboardMode: uint8; confineTo: XcbWindow; cursor: XcbCursor; time: XcbTimestamp): XcbGrabPointerCookie {.importc: "xcb_grab_pointer_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGrabPointerCookie; e: ptr ptr XcbGenericError): ptr XcbGrabPointerReply {.importc: "xcb_grab_pointer_reply".}
proc ungrabPointerChecked*(c: ptr XcbConnection; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ungrab_pointer_checked".}
proc ungrabPointer*(c: ptr XcbConnection; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ungrab_pointer".}
proc grabButtonChecked*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; eventMask: uint16; pointerMode: uint8; keyboardMode: uint8; confineTo: XcbWindow; cursor: XcbCursor; button: uint8; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_grab_button_checked".}
proc grabButton*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; eventMask: uint16; pointerMode: uint8; keyboardMode: uint8; confineTo: XcbWindow; cursor: XcbCursor; button: uint8; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_grab_button".}
proc ungrabButtonChecked*(c: ptr XcbConnection; button: uint8; grabWindow: XcbWindow; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_ungrab_button_checked".}
proc ungrabButton*(c: ptr XcbConnection; button: uint8; grabWindow: XcbWindow; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_ungrab_button".}
proc changeActivePointerGrabChecked*(c: ptr XcbConnection; cursor: XcbCursor; time: XcbTimestamp; eventMask: uint16): XcbVoidCookie {.discardable, importc: "xcb_change_active_pointer_grab_checked".}
proc changeActivePointerGrab*(c: ptr XcbConnection; cursor: XcbCursor; time: XcbTimestamp; eventMask: uint16): XcbVoidCookie {.discardable, importc: "xcb_change_active_pointer_grab".}
proc grabKeyboard*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; time: XcbTimestamp; pointerMode: uint8; keyboardMode: uint8): XcbGrabKeyboardCookie {.importc: "xcb_grab_keyboard".}
proc grabKeyboardUnchecked*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; time: XcbTimestamp; pointerMode: uint8; keyboardMode: uint8): XcbGrabKeyboardCookie {.importc: "xcb_grab_keyboard_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGrabKeyboardCookie; e: ptr ptr XcbGenericError): ptr XcbGrabKeyboardReply {.importc: "xcb_grab_keyboard_reply".}
proc ungrabKeyboardChecked*(c: ptr XcbConnection; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ungrab_keyboard_checked".}
proc ungrabKeyboard*(c: ptr XcbConnection; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ungrab_keyboard".}
proc grabKeyChecked*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; modifiers: uint16; key: XcbKeycode; pointerMode: uint8; keyboardMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_grab_key_checked".}
proc grabKey*(c: ptr XcbConnection; ownerEvents: uint8; grabWindow: XcbWindow; modifiers: uint16; key: XcbKeycode; pointerMode: uint8; keyboardMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_grab_key".}
proc ungrabKeyChecked*(c: ptr XcbConnection; key: XcbKeycode; grabWindow: XcbWindow; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_ungrab_key_checked".}
proc ungrabKey*(c: ptr XcbConnection; key: XcbKeycode; grabWindow: XcbWindow; modifiers: uint16): XcbVoidCookie {.discardable, importc: "xcb_ungrab_key".}
proc allowEventsChecked*(c: ptr XcbConnection; mode: uint8; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_allow_events_checked".}
proc allowEvents*(c: ptr XcbConnection; mode: uint8; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_allow_events".}
proc grabServerChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_grab_server_checked".}
proc grabServer*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_grab_server".}
proc ungrabServerChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_ungrab_server_checked".}
proc ungrabServer*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_ungrab_server".}
proc queryPointer*(c: ptr XcbConnection; window: XcbWindow): XcbQueryPointerCookie {.importc: "xcb_query_pointer".}
proc queryPointerUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbQueryPointerCookie {.importc: "xcb_query_pointer_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryPointerCookie; e: ptr ptr XcbGenericError): ptr XcbQueryPointerReply {.importc: "xcb_query_pointer_reply".}
proc next*(i: ptr XcbTimecoordIterator) {.importc: "xcb_timecoord_next".}
proc iterEnd*(i: XcbTimecoordIterator): XcbGenericIterator {.importc: "xcb_timecoord_end".}
proc getMotionEventsSizeof*(buffer: pointer): cint {.importc: "xcb_get_motion_events_sizeof".}
proc getMotionEvents*(c: ptr XcbConnection; window: XcbWindow; start: XcbTimestamp; stop: XcbTimestamp): XcbGetMotionEventsCookie {.importc: "xcb_get_motion_events".}
proc getMotionEventsUnchecked*(c: ptr XcbConnection; window: XcbWindow; start: XcbTimestamp; stop: XcbTimestamp): XcbGetMotionEventsCookie {.importc: "xcb_get_motion_events_unchecked".}
proc events*(R: ptr XcbGetMotionEventsReply): ptr UncheckedArray[XcbTimecoord] {.importc: "xcb_get_motion_events_events".}
proc eventsLength*(R: ptr XcbGetMotionEventsReply): cint {.importc: "xcb_get_motion_events_events_length".}
proc eventsIterator*(R: ptr XcbGetMotionEventsReply): XcbTimecoordIterator {.importc: "xcb_get_motion_events_events_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetMotionEventsCookie; e: ptr ptr XcbGenericError): ptr XcbGetMotionEventsReply {.importc: "xcb_get_motion_events_reply".}
proc translateCoordinates*(c: ptr XcbConnection; srcWindow: XcbWindow; dstWindow: XcbWindow; srcX: int16; srcY: int16): XcbTranslateCoordinatesCookie {.importc: "xcb_translate_coordinates".}
proc translateCoordinatesUnchecked*(c: ptr XcbConnection; srcWindow: XcbWindow; dstWindow: XcbWindow; srcX: int16; srcY: int16): XcbTranslateCoordinatesCookie {.importc: "xcb_translate_coordinates_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbTranslateCoordinatesCookie; e: ptr ptr XcbGenericError): ptr XcbTranslateCoordinatesReply {.importc: "xcb_translate_coordinates_reply".}
proc warpPointerChecked*(c: ptr XcbConnection; srcWindow: XcbWindow; dstWindow: XcbWindow; srcX: int16; srcY: int16; srcWidth: uint16; srcHeight: uint16; dstX: int16; dstY: int16): XcbVoidCookie {.discardable, importc: "xcb_warp_pointer_checked".}
proc warpPointer*(c: ptr XcbConnection; srcWindow: XcbWindow; dstWindow: XcbWindow; srcX: int16; srcY: int16; srcWidth: uint16; srcHeight: uint16; dstX: int16; dstY: int16): XcbVoidCookie {.discardable, importc: "xcb_warp_pointer".}
proc setInputFocusChecked*(c: ptr XcbConnection; revertTo: uint8; focus: XcbWindow; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_set_input_focus_checked".}
proc setInputFocus*(c: ptr XcbConnection; revertTo: uint8; focus: XcbWindow; time: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_set_input_focus".}
proc getInputFocus*(c: ptr XcbConnection): XcbGetInputFocusCookie {.importc: "xcb_get_input_focus".}
proc getInputFocusUnchecked*(c: ptr XcbConnection): XcbGetInputFocusCookie {.importc: "xcb_get_input_focus_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetInputFocusCookie; e: ptr ptr XcbGenericError): ptr XcbGetInputFocusReply {.importc: "xcb_get_input_focus_reply".}
proc queryKeymap*(c: ptr XcbConnection): XcbQueryKeymapCookie {.importc: "xcb_query_keymap".}
proc queryKeymapUnchecked*(c: ptr XcbConnection): XcbQueryKeymapCookie {.importc: "xcb_query_keymap_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryKeymapCookie; e: ptr ptr XcbGenericError): ptr XcbQueryKeymapReply {.importc: "xcb_query_keymap_reply".}
proc openFontSizeof*(buffer: pointer): cint {.importc: "xcb_open_font_sizeof".}
proc openChecked*(c: ptr XcbConnection; fid: XcbFont; nameLen: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_open_font_checked".}
proc open*(c: ptr XcbConnection; fid: XcbFont; nameLen: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_open_font".}
proc name*(R: ptr XcbOpenFontRequest): ptr UncheckedArray[char] {.importc: "xcb_open_font_name".}
proc nameLength*(R: ptr XcbOpenFontRequest): cint {.importc: "xcb_open_font_name_length".}
proc nameEnd*(R: ptr XcbOpenFontRequest): XcbGenericIterator {.importc: "xcb_open_font_name_end".}
proc closeChecked*(c: ptr XcbConnection; font: XcbFont): XcbVoidCookie {.discardable, importc: "xcb_close_font_checked".}
proc close*(c: ptr XcbConnection; font: XcbFont): XcbVoidCookie {.discardable, importc: "xcb_close_font".}
proc next*(i: ptr XcbFontpropIterator) {.importc: "xcb_fontprop_next".}
proc iterEnd*(i: XcbFontpropIterator): XcbGenericIterator {.importc: "xcb_fontprop_end".}
proc next*(i: ptr XcbCharinfoIterator) {.importc: "xcb_charinfo_next".}
proc iterEnd*(i: XcbCharinfoIterator): XcbGenericIterator {.importc: "xcb_charinfo_end".}
proc queryFontSizeof*(buffer: pointer): cint {.importc: "xcb_query_font_sizeof".}
proc query*(c: ptr XcbConnection; font: XcbFontable): XcbQueryFontCookie {.importc: "xcb_query_font".}
proc queryUnchecked*(c: ptr XcbConnection; font: XcbFontable): XcbQueryFontCookie {.importc: "xcb_query_font_unchecked".}
proc properties*(R: ptr XcbQueryFontReply): ptr UncheckedArray[XcbFontprop] {.importc: "xcb_query_font_properties".}
proc propertiesLength*(R: ptr XcbQueryFontReply): cint {.importc: "xcb_query_font_properties_length".}
proc propertiesIterator*(R: ptr XcbQueryFontReply): XcbFontpropIterator {.importc: "xcb_query_font_properties_iterator".}
proc charInfos*(R: ptr XcbQueryFontReply): ptr UncheckedArray[XcbCharinfo] {.importc: "xcb_query_font_char_infos".}
proc charInfosLength*(R: ptr XcbQueryFontReply): cint {.importc: "xcb_query_font_char_infos_length".}
proc charInfosIterator*(R: ptr XcbQueryFontReply): XcbCharinfoIterator {.importc: "xcb_query_font_char_infos_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryFontCookie; e: ptr ptr XcbGenericError): ptr XcbQueryFontReply {.importc: "xcb_query_font_reply".}
proc queryTextExtentsSizeof*(buffer: pointer; stringLen: uint32): cint {.importc: "xcb_query_text_extents_sizeof".}
proc queryTextExtents*(c: ptr XcbConnection; font: XcbFontable; stringLen: uint32; string: ptr XcbChar2b): XcbQueryTextExtentsCookie {.importc: "xcb_query_text_extents".}
proc queryTextExtentsUnchecked*(c: ptr XcbConnection; font: XcbFontable; stringLen: uint32; string: ptr XcbChar2b): XcbQueryTextExtentsCookie {.importc: "xcb_query_text_extents_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryTextExtentsCookie; e: ptr ptr XcbGenericError): ptr XcbQueryTextExtentsReply {.importc: "xcb_query_text_extents_reply".}
proc strSizeof*(buffer: pointer): cint {.importc: "xcb_str_sizeof".}
proc name*(R: ptr XcbStr): ptr UncheckedArray[char] {.importc: "xcb_str_name".}
proc nameLength*(R: ptr XcbStr): cint {.importc: "xcb_str_name_length".}
proc nameEnd*(R: ptr XcbStr): XcbGenericIterator {.importc: "xcb_str_name_end".}
proc next*(i: ptr XcbStrIterator) {.importc: "xcb_str_next".}
proc iterEnd*(i: XcbStrIterator): XcbGenericIterator {.importc: "xcb_str_end".}
proc listFontsSizeof*(buffer: pointer): cint {.importc: "xcb_list_fonts_sizeof".}
proc listFonts*(c: ptr XcbConnection; maxNames: uint16; patternLen: uint16; pattern: cstring): XcbListFontsCookie {.importc: "xcb_list_fonts".}
proc listFontsUnchecked*(c: ptr XcbConnection; maxNames: uint16; patternLen: uint16; pattern: cstring): XcbListFontsCookie {.importc: "xcb_list_fonts_unchecked".}
proc namesLength*(R: ptr XcbListFontsReply): cint {.importc: "xcb_list_fonts_names_length".}
proc namesIterator*(R: ptr XcbListFontsReply): XcbStrIterator {.importc: "xcb_list_fonts_names_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbListFontsCookie; e: ptr ptr XcbGenericError): ptr XcbListFontsReply {.importc: "xcb_list_fonts_reply".}
proc listFontsWithInfoSizeof*(buffer: pointer): cint {.importc: "xcb_list_fonts_with_info_sizeof".}
proc listFontsWithInfo*(c: ptr XcbConnection; maxNames: uint16; patternLen: uint16; pattern: cstring): XcbListFontsWithInfoCookie {.importc: "xcb_list_fonts_with_info".}
proc listFontsWithInfoUnchecked*(c: ptr XcbConnection; maxNames: uint16; patternLen: uint16; pattern: cstring): XcbListFontsWithInfoCookie {.importc: "xcb_list_fonts_with_info_unchecked".}
proc properties*(R: ptr XcbListFontsWithInfoReply): ptr UncheckedArray[XcbFontprop] {.importc: "xcb_list_fonts_with_info_properties".}
proc propertiesLength*(R: ptr XcbListFontsWithInfoReply): cint {.importc: "xcb_list_fonts_with_info_properties_length".}
proc propertiesIterator*(R: ptr XcbListFontsWithInfoReply): XcbFontpropIterator {.importc: "xcb_list_fonts_with_info_properties_iterator".}
proc name*(R: ptr XcbListFontsWithInfoReply): ptr UncheckedArray[char] {.importc: "xcb_list_fonts_with_info_name".}
proc nameLength*(R: ptr XcbListFontsWithInfoReply): cint {.importc: "xcb_list_fonts_with_info_name_length".}
proc nameEnd*(R: ptr XcbListFontsWithInfoReply): XcbGenericIterator {.importc: "xcb_list_fonts_with_info_name_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbListFontsWithInfoCookie; e: ptr ptr XcbGenericError): ptr XcbListFontsWithInfoReply {.importc: "xcb_list_fonts_with_info_reply".}
proc setFontPathSizeof*(buffer: pointer): cint {.importc: "xcb_set_font_path_sizeof".}
proc setFontPathChecked*(c: ptr XcbConnection; fontQty: uint16; font: ptr XcbStr): XcbVoidCookie {.discardable, importc: "xcb_set_font_path_checked".}
proc setFontPath*(c: ptr XcbConnection; fontQty: uint16; font: ptr XcbStr): XcbVoidCookie {.discardable, importc: "xcb_set_font_path".}
proc fontLength*(R: ptr XcbSetFontPathRequest): cint {.importc: "xcb_set_font_path_font_length".}
proc fontIterator*(R: ptr XcbSetFontPathRequest): XcbStrIterator {.importc: "xcb_set_font_path_font_iterator".}
proc getFontPathSizeof*(buffer: pointer): cint {.importc: "xcb_get_font_path_sizeof".}
proc getFontPath*(c: ptr XcbConnection): XcbGetFontPathCookie {.importc: "xcb_get_font_path".}
proc getFontPathUnchecked*(c: ptr XcbConnection): XcbGetFontPathCookie {.importc: "xcb_get_font_path_unchecked".}
proc pathLength*(R: ptr XcbGetFontPathReply): cint {.importc: "xcb_get_font_path_path_length".}
proc pathIterator*(R: ptr XcbGetFontPathReply): XcbStrIterator {.importc: "xcb_get_font_path_path_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetFontPathCookie; e: ptr ptr XcbGenericError): ptr XcbGetFontPathReply {.importc: "xcb_get_font_path_reply".}
proc createPixmapChecked*(c: ptr XcbConnection; depth: uint8; pid: XcbPixmap; drawable: XcbDrawable; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_pixmap_checked".}
proc createPixmap*(c: ptr XcbConnection; depth: uint8; pid: XcbPixmap; drawable: XcbDrawable; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_pixmap".}
proc freeChecked*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_free_pixmap_checked".}
proc free*(c: ptr XcbConnection; pixmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_free_pixmap".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbCreateGcValueList): cint {.importc: "xcb_create_gc_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbCreateGcValueList): cint {.importc: "xcb_create_gc_value_list_unpack".}
proc createGcValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_create_gc_value_list_sizeof".}
proc createGcSizeof*(buffer: pointer): cint {.importc: "xcb_create_gc_sizeof".}
proc createGcChecked*(c: ptr XcbConnection; cid: XcbGcontext; drawable: XcbDrawable; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_create_gc_checked".}
proc createGc*(c: ptr XcbConnection; cid: XcbGcontext; drawable: XcbDrawable; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_create_gc".}
proc createGcAuxChecked*(c: ptr XcbConnection; cid: XcbGcontext; drawable: XcbDrawable; valueMask: uint32; valueList: ptr XcbCreateGcValueList): XcbVoidCookie {.discardable, importc: "xcb_create_gc_aux_checked".}
proc createGcAux*(c: ptr XcbConnection; cid: XcbGcontext; drawable: XcbDrawable; valueMask: uint32; valueList: ptr XcbCreateGcValueList): XcbVoidCookie {.discardable, importc: "xcb_create_gc_aux".}
proc valueList*(R: ptr XcbCreateGcRequest): pointer {.importc: "xcb_create_gc_value_list".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbChangeGcValueList): cint {.importc: "xcb_change_gc_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbChangeGcValueList): cint {.importc: "xcb_change_gc_value_list_unpack".}
proc changeGcValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_change_gc_value_list_sizeof".}
proc changeGcSizeof*(buffer: pointer): cint {.importc: "xcb_change_gc_sizeof".}
proc changeChecked*(c: ptr XcbConnection; gc: XcbGcontext; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_gc_checked".}
proc change*(c: ptr XcbConnection; gc: XcbGcontext; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_gc".}
proc changeAuxChecked*(c: ptr XcbConnection; gc: XcbGcontext; valueMask: uint32; valueList: ptr XcbChangeGcValueList): XcbVoidCookie {.discardable, importc: "xcb_change_gc_aux_checked".}
proc changeAux*(c: ptr XcbConnection; gc: XcbGcontext; valueMask: uint32; valueList: ptr XcbChangeGcValueList): XcbVoidCookie {.discardable, importc: "xcb_change_gc_aux".}
proc valueList*(R: ptr XcbChangeGcRequest): pointer {.importc: "xcb_change_gc_value_list".}
proc copyChecked*(c: ptr XcbConnection; srcGc: XcbGcontext; dstGc: XcbGcontext; valueMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_copy_gc_checked".}
proc copy*(c: ptr XcbConnection; srcGc: XcbGcontext; dstGc: XcbGcontext; valueMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_copy_gc".}
proc setDashesSizeof*(buffer: pointer): cint {.importc: "xcb_set_dashes_sizeof".}
proc setDashesChecked*(c: ptr XcbConnection; gc: XcbGcontext; dashOffset: uint16; dashesLen: uint16; dashes: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_set_dashes_checked".}
proc setDashes*(c: ptr XcbConnection; gc: XcbGcontext; dashOffset: uint16; dashesLen: uint16; dashes: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_set_dashes".}
proc dashes*(R: ptr XcbSetDashesRequest): ptr UncheckedArray[uint8] {.importc: "xcb_set_dashes_dashes".}
proc dashesLength*(R: ptr XcbSetDashesRequest): cint {.importc: "xcb_set_dashes_dashes_length".}
proc dashesEnd*(R: ptr XcbSetDashesRequest): XcbGenericIterator {.importc: "xcb_set_dashes_dashes_end".}
proc setClipRectanglesSizeof*(buffer: pointer; rectanglesLen: uint32): cint {.importc: "xcb_set_clip_rectangles_sizeof".}
proc setClipRectanglesChecked*(c: ptr XcbConnection; ordering: uint8; gc: XcbGcontext; clipXOrigin: int16; clipYOrigin: int16; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_set_clip_rectangles_checked".}
proc setClipRectangles*(c: ptr XcbConnection; ordering: uint8; gc: XcbGcontext; clipXOrigin: int16; clipYOrigin: int16; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_set_clip_rectangles".}
proc rectangles*(R: ptr XcbSetClipRectanglesRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_set_clip_rectangles_rectangles".}
proc rectanglesLength*(R: ptr XcbSetClipRectanglesRequest): cint {.importc: "xcb_set_clip_rectangles_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbSetClipRectanglesRequest): XcbRectangleIterator {.importc: "xcb_set_clip_rectangles_rectangles_iterator".}
proc freeChecked*(c: ptr XcbConnection; gc: XcbGcontext): XcbVoidCookie {.discardable, importc: "xcb_free_gc_checked".}
proc free*(c: ptr XcbConnection; gc: XcbGcontext): XcbVoidCookie {.discardable, importc: "xcb_free_gc".}
proc clearAreaChecked*(c: ptr XcbConnection; exposures: uint8; window: XcbWindow; x: int16; y: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_clear_area_checked".}
proc clearArea*(c: ptr XcbConnection; exposures: uint8; window: XcbWindow; x: int16; y: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_clear_area".}
proc copyAreaChecked*(c: ptr XcbConnection; srcDrawable: XcbDrawable; dstDrawable: XcbDrawable; gc: XcbGcontext; srcX: int16; srcY: int16; dstX: int16; dstY: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_copy_area_checked".}
proc copyArea*(c: ptr XcbConnection; srcDrawable: XcbDrawable; dstDrawable: XcbDrawable; gc: XcbGcontext; srcX: int16; srcY: int16; dstX: int16; dstY: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_copy_area".}
proc copyPlaneChecked*(c: ptr XcbConnection; srcDrawable: XcbDrawable; dstDrawable: XcbDrawable; gc: XcbGcontext; srcX: int16; srcY: int16; dstX: int16; dstY: int16; width: uint16; height: uint16; bitPlane: uint32): XcbVoidCookie {.discardable, importc: "xcb_copy_plane_checked".}
proc copyPlane*(c: ptr XcbConnection; srcDrawable: XcbDrawable; dstDrawable: XcbDrawable; gc: XcbGcontext; srcX: int16; srcY: int16; dstX: int16; dstY: int16; width: uint16; height: uint16; bitPlane: uint32): XcbVoidCookie {.discardable, importc: "xcb_copy_plane".}
proc polyPointSizeof*(buffer: pointer; pointsLen: uint32): cint {.importc: "xcb_poly_point_sizeof".}
proc polyPointChecked*(c: ptr XcbConnection; coordinateMode: XcbCoordMode; drawable: XcbDrawable; gc: XcbGcontext; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_poly_point_checked".}
proc polyPoint*(c: ptr XcbConnection; coordinateMode: XcbCoordMode; drawable: XcbDrawable; gc: XcbGcontext; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_poly_point".}
proc points*(R: ptr XcbPolyPointRequest): ptr UncheckedArray[XcbPoint] {.importc: "xcb_poly_point_points".}
proc pointsLength*(R: ptr XcbPolyPointRequest): cint {.importc: "xcb_poly_point_points_length".}
proc pointsIterator*(R: ptr XcbPolyPointRequest): XcbPointIterator {.importc: "xcb_poly_point_points_iterator".}
proc polyLineSizeof*(buffer: pointer; pointsLen: uint32): cint {.importc: "xcb_poly_line_sizeof".}
proc polyLineChecked*(c: ptr XcbConnection; coordinateMode: XcbCoordMode; drawable: XcbDrawable; gc: XcbGcontext; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_poly_line_checked".}
proc polyLine*(c: ptr XcbConnection; coordinateMode: XcbCoordMode; drawable: XcbDrawable; gc: XcbGcontext; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_poly_line".}
proc points*(R: ptr XcbPolyLineRequest): ptr UncheckedArray[XcbPoint] {.importc: "xcb_poly_line_points".}
proc pointsLength*(R: ptr XcbPolyLineRequest): cint {.importc: "xcb_poly_line_points_length".}
proc pointsIterator*(R: ptr XcbPolyLineRequest): XcbPointIterator {.importc: "xcb_poly_line_points_iterator".}
proc next*(i: ptr XcbSegmentIterator) {.importc: "xcb_segment_next".}
proc iterEnd*(i: XcbSegmentIterator): XcbGenericIterator {.importc: "xcb_segment_end".}
proc polySegmentSizeof*(buffer: pointer; segmentsLen: uint32): cint {.importc: "xcb_poly_segment_sizeof".}
proc polySegmentChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; segmentsLen: uint32; segments: ptr XcbSegment): XcbVoidCookie {.discardable, importc: "xcb_poly_segment_checked".}
proc polySegment*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; segmentsLen: uint32; segments: ptr XcbSegment): XcbVoidCookie {.discardable, importc: "xcb_poly_segment".}
proc segments*(R: ptr XcbPolySegmentRequest): ptr UncheckedArray[XcbSegment] {.importc: "xcb_poly_segment_segments".}
proc segmentsLength*(R: ptr XcbPolySegmentRequest): cint {.importc: "xcb_poly_segment_segments_length".}
proc segmentsIterator*(R: ptr XcbPolySegmentRequest): XcbSegmentIterator {.importc: "xcb_poly_segment_segments_iterator".}
proc polyRectangleSizeof*(buffer: pointer; rectanglesLen: uint32): cint {.importc: "xcb_poly_rectangle_sizeof".}
proc polyRectangleChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_poly_rectangle_checked".}
proc polyRectangle*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_poly_rectangle".}
proc rectangles*(R: ptr XcbPolyRectangleRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_poly_rectangle_rectangles".}
proc rectanglesLength*(R: ptr XcbPolyRectangleRequest): cint {.importc: "xcb_poly_rectangle_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbPolyRectangleRequest): XcbRectangleIterator {.importc: "xcb_poly_rectangle_rectangles_iterator".}
proc polyArcSizeof*(buffer: pointer; arcsLen: uint32): cint {.importc: "xcb_poly_arc_sizeof".}
proc polyArcChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; arcsLen: uint32; arcs: ptr XcbArc): XcbVoidCookie {.discardable, importc: "xcb_poly_arc_checked".}
proc polyArc*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; arcsLen: uint32; arcs: ptr XcbArc): XcbVoidCookie {.discardable, importc: "xcb_poly_arc".}
proc arcs*(R: ptr XcbPolyArcRequest): ptr UncheckedArray[XcbArc] {.importc: "xcb_poly_arc_arcs".}
proc arcsLength*(R: ptr XcbPolyArcRequest): cint {.importc: "xcb_poly_arc_arcs_length".}
proc arcsIterator*(R: ptr XcbPolyArcRequest): XcbArcIterator {.importc: "xcb_poly_arc_arcs_iterator".}
proc fillPolySizeof*(buffer: pointer; pointsLen: uint32): cint {.importc: "xcb_fill_poly_sizeof".}
proc fillPolyChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; shape: uint8; coordinateMode: XcbCoordMode; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_fill_poly_checked".}
proc fillPoly*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; shape: uint8; coordinateMode: XcbCoordMode; pointsLen: uint32; points: ptr XcbPoint): XcbVoidCookie {.discardable, importc: "xcb_fill_poly".}
proc points*(R: ptr XcbFillPolyRequest): ptr UncheckedArray[XcbPoint] {.importc: "xcb_fill_poly_points".}
proc pointsLength*(R: ptr XcbFillPolyRequest): cint {.importc: "xcb_fill_poly_points_length".}
proc pointsIterator*(R: ptr XcbFillPolyRequest): XcbPointIterator {.importc: "xcb_fill_poly_points_iterator".}
proc polyFillRectangleSizeof*(buffer: pointer; rectanglesLen: uint32): cint {.importc: "xcb_poly_fill_rectangle_sizeof".}
proc polyFillRectangleChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_poly_fill_rectangle_checked".}
proc polyFillRectangle*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; rectanglesLen: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_poly_fill_rectangle".}
proc rectangles*(R: ptr XcbPolyFillRectangleRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_poly_fill_rectangle_rectangles".}
proc rectanglesLength*(R: ptr XcbPolyFillRectangleRequest): cint {.importc: "xcb_poly_fill_rectangle_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbPolyFillRectangleRequest): XcbRectangleIterator {.importc: "xcb_poly_fill_rectangle_rectangles_iterator".}
proc polyFillArcSizeof*(buffer: pointer; arcsLen: uint32): cint {.importc: "xcb_poly_fill_arc_sizeof".}
proc polyFillArcChecked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; arcsLen: uint32; arcs: ptr XcbArc): XcbVoidCookie {.discardable, importc: "xcb_poly_fill_arc_checked".}
proc polyFillArc*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; arcsLen: uint32; arcs: ptr XcbArc): XcbVoidCookie {.discardable, importc: "xcb_poly_fill_arc".}
proc arcs*(R: ptr XcbPolyFillArcRequest): ptr UncheckedArray[XcbArc] {.importc: "xcb_poly_fill_arc_arcs".}
proc arcsLength*(R: ptr XcbPolyFillArcRequest): cint {.importc: "xcb_poly_fill_arc_arcs_length".}
proc arcsIterator*(R: ptr XcbPolyFillArcRequest): XcbArcIterator {.importc: "xcb_poly_fill_arc_arcs_iterator".}
proc putImageSizeof*(buffer: pointer; dataLen: uint32): cint {.importc: "xcb_put_image_sizeof".}
proc putImageChecked*(c: ptr XcbConnection; format: uint8; drawable: XcbDrawable; gc: XcbGcontext; width: uint16; height: uint16; dstX: int16; dstY: int16; leftPad: uint8; depth: uint8; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_put_image_checked".}
proc putImage*(c: ptr XcbConnection; format: uint8; drawable: XcbDrawable; gc: XcbGcontext; width: uint16; height: uint16; dstX: int16; dstY: int16; leftPad: uint8; depth: uint8; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_put_image".}
proc data*(R: ptr XcbPutImageRequest): ptr UncheckedArray[uint8] {.importc: "xcb_put_image_data".}
proc dataLength*(R: ptr XcbPutImageRequest): cint {.importc: "xcb_put_image_data_length".}
proc dataEnd*(R: ptr XcbPutImageRequest): XcbGenericIterator {.importc: "xcb_put_image_data_end".}
proc getImageSizeof*(buffer: pointer): cint {.importc: "xcb_get_image_sizeof".}
proc getImage*(c: ptr XcbConnection; format: uint8; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; planeMask: uint32): XcbGetImageCookie {.importc: "xcb_get_image".}
proc getImageUnchecked*(c: ptr XcbConnection; format: uint8; drawable: XcbDrawable; x: int16; y: int16; width: uint16; height: uint16; planeMask: uint32): XcbGetImageCookie {.importc: "xcb_get_image_unchecked".}
proc data*(R: ptr XcbGetImageReply): ptr UncheckedArray[uint8] {.importc: "xcb_get_image_data".}
proc dataLength*(R: ptr XcbGetImageReply): cint {.importc: "xcb_get_image_data_length".}
proc dataEnd*(R: ptr XcbGetImageReply): XcbGenericIterator {.importc: "xcb_get_image_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetImageCookie; e: ptr ptr XcbGenericError): ptr XcbGetImageReply {.importc: "xcb_get_image_reply".}
proc polyText8Sizeof*(buffer: pointer; itemsLen: uint32): cint {.importc: "xcb_poly_text_8_sizeof".}
proc polyText8Checked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; itemsLen: uint32; items: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_poly_text_8_checked".}
proc polyText8*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; itemsLen: uint32; items: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_poly_text_8".}
proc items*(R: ptr XcbPolyText8Request): ptr UncheckedArray[uint8] {.importc: "xcb_poly_text_8_items".}
proc itemsLength*(R: ptr XcbPolyText8Request): cint {.importc: "xcb_poly_text_8_items_length".}
proc itemsEnd*(R: ptr XcbPolyText8Request): XcbGenericIterator {.importc: "xcb_poly_text_8_items_end".}
proc polyText16Sizeof*(buffer: pointer; itemsLen: uint32): cint {.importc: "xcb_poly_text_16_sizeof".}
proc polyText16Checked*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; itemsLen: uint32; items: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_poly_text_16_checked".}
proc polyText16*(c: ptr XcbConnection; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; itemsLen: uint32; items: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_poly_text_16".}
proc items*(R: ptr XcbPolyText16Request): ptr UncheckedArray[uint8] {.importc: "xcb_poly_text_16_items".}
proc itemsLength*(R: ptr XcbPolyText16Request): cint {.importc: "xcb_poly_text_16_items_length".}
proc itemsEnd*(R: ptr XcbPolyText16Request): XcbGenericIterator {.importc: "xcb_poly_text_16_items_end".}
proc imageText8Sizeof*(buffer: pointer): cint {.importc: "xcb_image_text_8_sizeof".}
proc imageText8Checked*(c: ptr XcbConnection; stringLen: uint8; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; string: cstring): XcbVoidCookie {.discardable, importc: "xcb_image_text_8_checked".}
proc imageText8*(c: ptr XcbConnection; stringLen: uint8; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; string: cstring): XcbVoidCookie {.discardable, importc: "xcb_image_text_8".}
proc string*(R: ptr XcbImageText8Request): ptr UncheckedArray[char] {.importc: "xcb_image_text_8_string".}
proc stringLength*(R: ptr XcbImageText8Request): cint {.importc: "xcb_image_text_8_string_length".}
proc stringEnd*(R: ptr XcbImageText8Request): XcbGenericIterator {.importc: "xcb_image_text_8_string_end".}
proc imageText16Sizeof*(buffer: pointer): cint {.importc: "xcb_image_text_16_sizeof".}
proc imageText16Checked*(c: ptr XcbConnection; stringLen: uint8; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; string: ptr XcbChar2b): XcbVoidCookie {.discardable, importc: "xcb_image_text_16_checked".}
proc imageText16*(c: ptr XcbConnection; stringLen: uint8; drawable: XcbDrawable; gc: XcbGcontext; x: int16; y: int16; string: ptr XcbChar2b): XcbVoidCookie {.discardable, importc: "xcb_image_text_16".}
proc string*(R: ptr XcbImageText16Request): ptr UncheckedArray[XcbChar2b] {.importc: "xcb_image_text_16_string".}
proc stringLength*(R: ptr XcbImageText16Request): cint {.importc: "xcb_image_text_16_string_length".}
proc stringIterator*(R: ptr XcbImageText16Request): XcbChar2bIterator {.importc: "xcb_image_text_16_string_iterator".}
proc createColormapChecked*(c: ptr XcbConnection; alloc: uint8; mid: XcbColormap; window: XcbWindow; visual: XcbVisualid): XcbVoidCookie {.discardable, importc: "xcb_create_colormap_checked".}
proc createColormap*(c: ptr XcbConnection; alloc: uint8; mid: XcbColormap; window: XcbWindow; visual: XcbVisualid): XcbVoidCookie {.discardable, importc: "xcb_create_colormap".}
proc freeChecked*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_free_colormap_checked".}
proc free*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_free_colormap".}
proc copyAndFreeChecked*(c: ptr XcbConnection; mid: XcbColormap; srcCmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_copy_colormap_and_free_checked".}
proc copyAndFree*(c: ptr XcbConnection; mid: XcbColormap; srcCmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_copy_colormap_and_free".}
proc installChecked*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_install_colormap_checked".}
proc install*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_install_colormap".}
proc uninstallChecked*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_uninstall_colormap_checked".}
proc uninstall*(c: ptr XcbConnection; cmap: XcbColormap): XcbVoidCookie {.discardable, importc: "xcb_uninstall_colormap".}
proc listInstalledColormapsSizeof*(buffer: pointer): cint {.importc: "xcb_list_installed_colormaps_sizeof".}
proc listInstalledColormaps*(c: ptr XcbConnection; window: XcbWindow): XcbListInstalledColormapsCookie {.importc: "xcb_list_installed_colormaps".}
proc listInstalledColormapsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbListInstalledColormapsCookie {.importc: "xcb_list_installed_colormaps_unchecked".}
proc cmaps*(R: ptr XcbListInstalledColormapsReply): ptr UncheckedArray[XcbColormap] {.importc: "xcb_list_installed_colormaps_cmaps".}
proc cmapsLength*(R: ptr XcbListInstalledColormapsReply): cint {.importc: "xcb_list_installed_colormaps_cmaps_length".}
proc cmapsEnd*(R: ptr XcbListInstalledColormapsReply): XcbGenericIterator {.importc: "xcb_list_installed_colormaps_cmaps_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbListInstalledColormapsCookie; e: ptr ptr XcbGenericError): ptr XcbListInstalledColormapsReply {.importc: "xcb_list_installed_colormaps_reply".}
proc allocColor*(c: ptr XcbConnection; cmap: XcbColormap; red: uint16; green: uint16; blue: uint16): XcbAllocColorCookie {.importc: "xcb_alloc_color".}
proc allocColorUnchecked*(c: ptr XcbConnection; cmap: XcbColormap; red: uint16; green: uint16; blue: uint16): XcbAllocColorCookie {.importc: "xcb_alloc_color_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbAllocColorCookie; e: ptr ptr XcbGenericError): ptr XcbAllocColorReply {.importc: "xcb_alloc_color_reply".}
proc allocNamedColorSizeof*(buffer: pointer): cint {.importc: "xcb_alloc_named_color_sizeof".}
proc allocNamedColor*(c: ptr XcbConnection; cmap: XcbColormap; nameLen: uint16; name: cstring): XcbAllocNamedColorCookie {.importc: "xcb_alloc_named_color".}
proc allocNamedColorUnchecked*(c: ptr XcbConnection; cmap: XcbColormap; nameLen: uint16; name: cstring): XcbAllocNamedColorCookie {.importc: "xcb_alloc_named_color_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbAllocNamedColorCookie; e: ptr ptr XcbGenericError): ptr XcbAllocNamedColorReply {.importc: "xcb_alloc_named_color_reply".}
proc allocColorCellsSizeof*(buffer: pointer): cint {.importc: "xcb_alloc_color_cells_sizeof".}
proc allocColorCells*(c: ptr XcbConnection; contiguous: uint8; cmap: XcbColormap; colors: uint16; planes: uint16): XcbAllocColorCellsCookie {.importc: "xcb_alloc_color_cells".}
proc allocColorCellsUnchecked*(c: ptr XcbConnection; contiguous: uint8; cmap: XcbColormap; colors: uint16; planes: uint16): XcbAllocColorCellsCookie {.importc: "xcb_alloc_color_cells_unchecked".}
proc pixels*(R: ptr XcbAllocColorCellsReply): ptr UncheckedArray[uint32] {.importc: "xcb_alloc_color_cells_pixels".}
proc pixelsLength*(R: ptr XcbAllocColorCellsReply): cint {.importc: "xcb_alloc_color_cells_pixels_length".}
proc pixelsEnd*(R: ptr XcbAllocColorCellsReply): XcbGenericIterator {.importc: "xcb_alloc_color_cells_pixels_end".}
proc masks*(R: ptr XcbAllocColorCellsReply): ptr UncheckedArray[uint32] {.importc: "xcb_alloc_color_cells_masks".}
proc masksLength*(R: ptr XcbAllocColorCellsReply): cint {.importc: "xcb_alloc_color_cells_masks_length".}
proc masksEnd*(R: ptr XcbAllocColorCellsReply): XcbGenericIterator {.importc: "xcb_alloc_color_cells_masks_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbAllocColorCellsCookie; e: ptr ptr XcbGenericError): ptr XcbAllocColorCellsReply {.importc: "xcb_alloc_color_cells_reply".}
proc allocColorPlanesSizeof*(buffer: pointer): cint {.importc: "xcb_alloc_color_planes_sizeof".}
proc allocColorPlanes*(c: ptr XcbConnection; contiguous: uint8; cmap: XcbColormap; colors: uint16; reds: uint16; greens: uint16; blues: uint16): XcbAllocColorPlanesCookie {.importc: "xcb_alloc_color_planes".}
proc allocColorPlanesUnchecked*(c: ptr XcbConnection; contiguous: uint8; cmap: XcbColormap; colors: uint16; reds: uint16; greens: uint16; blues: uint16): XcbAllocColorPlanesCookie {.importc: "xcb_alloc_color_planes_unchecked".}
proc pixels*(R: ptr XcbAllocColorPlanesReply): ptr UncheckedArray[uint32] {.importc: "xcb_alloc_color_planes_pixels".}
proc pixelsLength*(R: ptr XcbAllocColorPlanesReply): cint {.importc: "xcb_alloc_color_planes_pixels_length".}
proc pixelsEnd*(R: ptr XcbAllocColorPlanesReply): XcbGenericIterator {.importc: "xcb_alloc_color_planes_pixels_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbAllocColorPlanesCookie; e: ptr ptr XcbGenericError): ptr XcbAllocColorPlanesReply {.importc: "xcb_alloc_color_planes_reply".}
proc freeColorsSizeof*(buffer: pointer; pixelsLen: uint32): cint {.importc: "xcb_free_colors_sizeof".}
proc freeChecked*(c: ptr XcbConnection; cmap: XcbColormap; planeMask: uint32; pixelsLen: uint32; pixels: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_free_colors_checked".}
proc free*(c: ptr XcbConnection; cmap: XcbColormap; planeMask: uint32; pixelsLen: uint32; pixels: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_free_colors".}
proc pixels*(R: ptr XcbFreeColorsRequest): ptr UncheckedArray[uint32] {.importc: "xcb_free_colors_pixels".}
proc pixelsLength*(R: ptr XcbFreeColorsRequest): cint {.importc: "xcb_free_colors_pixels_length".}
proc pixelsEnd*(R: ptr XcbFreeColorsRequest): XcbGenericIterator {.importc: "xcb_free_colors_pixels_end".}
proc next*(i: ptr XcbColoritemIterator) {.importc: "xcb_coloritem_next".}
proc iterEnd*(i: XcbColoritemIterator): XcbGenericIterator {.importc: "xcb_coloritem_end".}
proc storeColorsSizeof*(buffer: pointer; itemsLen: uint32): cint {.importc: "xcb_store_colors_sizeof".}
proc storeChecked*(c: ptr XcbConnection; cmap: XcbColormap; itemsLen: uint32; items: ptr XcbColoritem): XcbVoidCookie {.discardable, importc: "xcb_store_colors_checked".}
proc store*(c: ptr XcbConnection; cmap: XcbColormap; itemsLen: uint32; items: ptr XcbColoritem): XcbVoidCookie {.discardable, importc: "xcb_store_colors".}
proc items*(R: ptr XcbStoreColorsRequest): ptr UncheckedArray[XcbColoritem] {.importc: "xcb_store_colors_items".}
proc itemsLength*(R: ptr XcbStoreColorsRequest): cint {.importc: "xcb_store_colors_items_length".}
proc itemsIterator*(R: ptr XcbStoreColorsRequest): XcbColoritemIterator {.importc: "xcb_store_colors_items_iterator".}
proc storeNamedColorSizeof*(buffer: pointer): cint {.importc: "xcb_store_named_color_sizeof".}
proc storeNamedColorChecked*(c: ptr XcbConnection; flags: uint8; cmap: XcbColormap; pixel: uint32; nameLen: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_store_named_color_checked".}
proc storeNamedColor*(c: ptr XcbConnection; flags: uint8; cmap: XcbColormap; pixel: uint32; nameLen: uint16; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_store_named_color".}
proc colorName*(R: ptr XcbStoreNamedColorRequest): ptr UncheckedArray[char] {.importc: "xcb_store_named_color_name".}
proc colorNameLength*(R: ptr XcbStoreNamedColorRequest): cint {.importc: "xcb_store_named_color_name_length".}
proc colorNameEnd*(R: ptr XcbStoreNamedColorRequest): XcbGenericIterator {.importc: "xcb_store_named_color_name_end".}
proc next*(i: ptr XcbRgbIterator) {.importc: "xcb_rgb_next".}
proc iterEnd*(i: XcbRgbIterator): XcbGenericIterator {.importc: "xcb_rgb_end".}
proc queryColorsSizeof*(buffer: pointer; pixelsLen: uint32): cint {.importc: "xcb_query_colors_sizeof".}
proc query*(c: ptr XcbConnection; cmap: XcbColormap; pixelsLen: uint32; pixels: ptr uint32): XcbQueryColorsCookie {.importc: "xcb_query_colors".}
proc queryUnchecked*(c: ptr XcbConnection; cmap: XcbColormap; pixelsLen: uint32; pixels: ptr uint32): XcbQueryColorsCookie {.importc: "xcb_query_colors_unchecked".}
proc colors*(R: ptr XcbQueryColorsReply): ptr UncheckedArray[XcbRgb] {.importc: "xcb_query_colors_colors".}
proc colorsLength*(R: ptr XcbQueryColorsReply): cint {.importc: "xcb_query_colors_colors_length".}
proc colorsIterator*(R: ptr XcbQueryColorsReply): XcbRgbIterator {.importc: "xcb_query_colors_colors_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryColorsCookie; e: ptr ptr XcbGenericError): ptr XcbQueryColorsReply {.importc: "xcb_query_colors_reply".}
proc lookupColorSizeof*(buffer: pointer): cint {.importc: "xcb_lookup_color_sizeof".}
proc lookupColor*(c: ptr XcbConnection; cmap: XcbColormap; nameLen: uint16; name: cstring): XcbLookupColorCookie {.importc: "xcb_lookup_color".}
proc lookupColorUnchecked*(c: ptr XcbConnection; cmap: XcbColormap; nameLen: uint16; name: cstring): XcbLookupColorCookie {.importc: "xcb_lookup_color_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbLookupColorCookie; e: ptr ptr XcbGenericError): ptr XcbLookupColorReply {.importc: "xcb_lookup_color_reply".}
proc createCursorChecked*(c: ptr XcbConnection; cid: XcbCursor; source: XcbPixmap; mask: XcbPixmap; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16; x: uint16; y: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_cursor_checked".}
proc createCursor*(c: ptr XcbConnection; cid: XcbCursor; source: XcbPixmap; mask: XcbPixmap; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16; x: uint16; y: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_cursor".}
proc createGlyphCursorChecked*(c: ptr XcbConnection; cid: XcbCursor; sourceFont: XcbFont; maskFont: XcbFont; sourceChar: uint16; maskChar: uint16; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_glyph_cursor_checked".}
proc createGlyphCursor*(c: ptr XcbConnection; cid: XcbCursor; sourceFont: XcbFont; maskFont: XcbFont; sourceChar: uint16; maskChar: uint16; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16): XcbVoidCookie {.discardable, importc: "xcb_create_glyph_cursor".}
proc freeChecked*(c: ptr XcbConnection; cursor: XcbCursor): XcbVoidCookie {.discardable, importc: "xcb_free_cursor_checked".}
proc free*(c: ptr XcbConnection; cursor: XcbCursor): XcbVoidCookie {.discardable, importc: "xcb_free_cursor".}
proc recolorChecked*(c: ptr XcbConnection; cursor: XcbCursor; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16): XcbVoidCookie {.discardable, importc: "xcb_recolor_cursor_checked".}
proc recolor*(c: ptr XcbConnection; cursor: XcbCursor; foreRed: uint16; foreGreen: uint16; foreBlue: uint16; backRed: uint16; backGreen: uint16; backBlue: uint16): XcbVoidCookie {.discardable, importc: "xcb_recolor_cursor".}
proc queryBestSize*(c: ptr XcbConnection; class: uint8; drawable: XcbDrawable; width: uint16; height: uint16): XcbQueryBestSizeCookie {.importc: "xcb_query_best_size".}
proc queryBestSizeUnchecked*(c: ptr XcbConnection; class: uint8; drawable: XcbDrawable; width: uint16; height: uint16): XcbQueryBestSizeCookie {.importc: "xcb_query_best_size_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryBestSizeCookie; e: ptr ptr XcbGenericError): ptr XcbQueryBestSizeReply {.importc: "xcb_query_best_size_reply".}
proc queryExtensionSizeof*(buffer: pointer): cint {.importc: "xcb_query_extension_sizeof".}
proc queryExtension*(c: ptr XcbConnection; nameLen: uint16; name: cstring): XcbQueryExtensionCookie {.importc: "xcb_query_extension".}
proc queryExtensionUnchecked*(c: ptr XcbConnection; nameLen: uint16; name: cstring): XcbQueryExtensionCookie {.importc: "xcb_query_extension_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbQueryExtensionCookie; e: ptr ptr XcbGenericError): ptr XcbQueryExtensionReply {.importc: "xcb_query_extension_reply".}
proc listExtensionsSizeof*(buffer: pointer): cint {.importc: "xcb_list_extensions_sizeof".}
proc listExtensions*(c: ptr XcbConnection): XcbListExtensionsCookie {.importc: "xcb_list_extensions".}
proc listExtensionsUnchecked*(c: ptr XcbConnection): XcbListExtensionsCookie {.importc: "xcb_list_extensions_unchecked".}
proc namesLength*(R: ptr XcbListExtensionsReply): cint {.importc: "xcb_list_extensions_names_length".}
proc namesIterator*(R: ptr XcbListExtensionsReply): XcbStrIterator {.importc: "xcb_list_extensions_names_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbListExtensionsCookie; e: ptr ptr XcbGenericError): ptr XcbListExtensionsReply {.importc: "xcb_list_extensions_reply".}
proc changeKeyboardMappingSizeof*(buffer: pointer): cint {.importc: "xcb_change_keyboard_mapping_sizeof".}
proc changeKeyboardMappingChecked*(c: ptr XcbConnection; keycodeCount: uint8; firstKeycode: XcbKeycode; keysymsPerKeycode: uint8; keysyms: ptr XcbKeysym): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_mapping_checked".}
proc changeKeyboardMapping*(c: ptr XcbConnection; keycodeCount: uint8; firstKeycode: XcbKeycode; keysymsPerKeycode: uint8; keysyms: ptr XcbKeysym): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_mapping".}
proc keysyms*(R: ptr XcbChangeKeyboardMappingRequest): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_change_keyboard_mapping_keysyms".}
proc keysymsLength*(R: ptr XcbChangeKeyboardMappingRequest): cint {.importc: "xcb_change_keyboard_mapping_keysyms_length".}
proc keysymsEnd*(R: ptr XcbChangeKeyboardMappingRequest): XcbGenericIterator {.importc: "xcb_change_keyboard_mapping_keysyms_end".}
proc getKeyboardMappingSizeof*(buffer: pointer): cint {.importc: "xcb_get_keyboard_mapping_sizeof".}
proc getKeyboardMapping*(c: ptr XcbConnection; firstKeycode: XcbKeycode; count: uint8): XcbGetKeyboardMappingCookie {.importc: "xcb_get_keyboard_mapping".}
proc getKeyboardMappingUnchecked*(c: ptr XcbConnection; firstKeycode: XcbKeycode; count: uint8): XcbGetKeyboardMappingCookie {.importc: "xcb_get_keyboard_mapping_unchecked".}
proc keysyms*(R: ptr XcbGetKeyboardMappingReply): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_get_keyboard_mapping_keysyms".}
proc keysymsLength*(R: ptr XcbGetKeyboardMappingReply): cint {.importc: "xcb_get_keyboard_mapping_keysyms_length".}
proc keysymsEnd*(R: ptr XcbGetKeyboardMappingReply): XcbGenericIterator {.importc: "xcb_get_keyboard_mapping_keysyms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetKeyboardMappingCookie; e: ptr ptr XcbGenericError): ptr XcbGetKeyboardMappingReply {.importc: "xcb_get_keyboard_mapping_reply".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbChangeKeyboardControlValueList): cint {.importc: "xcb_change_keyboard_control_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbChangeKeyboardControlValueList): cint {.importc: "xcb_change_keyboard_control_value_list_unpack".}
proc changeKeyboardControlValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_change_keyboard_control_value_list_sizeof".}
proc changeKeyboardControlSizeof*(buffer: pointer): cint {.importc: "xcb_change_keyboard_control_sizeof".}
proc changeKeyboardControlChecked*(c: ptr XcbConnection; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_control_checked".}
proc changeKeyboardControl*(c: ptr XcbConnection; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_control".}
proc changeKeyboardControlAuxChecked*(c: ptr XcbConnection; valueMask: uint32; valueList: ptr XcbChangeKeyboardControlValueList): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_control_aux_checked".}
proc changeKeyboardControlAux*(c: ptr XcbConnection; valueMask: uint32; valueList: ptr XcbChangeKeyboardControlValueList): XcbVoidCookie {.discardable, importc: "xcb_change_keyboard_control_aux".}
proc valueList*(R: ptr XcbChangeKeyboardControlRequest): pointer {.importc: "xcb_change_keyboard_control_value_list".}
proc getKeyboardControl*(c: ptr XcbConnection): XcbGetKeyboardControlCookie {.importc: "xcb_get_keyboard_control".}
proc getKeyboardControlUnchecked*(c: ptr XcbConnection): XcbGetKeyboardControlCookie {.importc: "xcb_get_keyboard_control_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetKeyboardControlCookie; e: ptr ptr XcbGenericError): ptr XcbGetKeyboardControlReply {.importc: "xcb_get_keyboard_control_reply".}
proc bellChecked*(c: ptr XcbConnection; percent: int8): XcbVoidCookie {.discardable, importc: "xcb_bell_checked".}
proc bell*(c: ptr XcbConnection; percent: int8): XcbVoidCookie {.discardable, importc: "xcb_bell".}
proc changePointerControlChecked*(c: ptr XcbConnection; accelerationNumerator: int16; accelerationDenominator: int16; threshold: int16; doAcceleration: uint8; doThreshold: uint8): XcbVoidCookie {.discardable, importc: "xcb_change_pointer_control_checked".}
proc changePointerControl*(c: ptr XcbConnection; accelerationNumerator: int16; accelerationDenominator: int16; threshold: int16; doAcceleration: uint8; doThreshold: uint8): XcbVoidCookie {.discardable, importc: "xcb_change_pointer_control".}
proc getPointerControl*(c: ptr XcbConnection): XcbGetPointerControlCookie {.importc: "xcb_get_pointer_control".}
proc getPointerControlUnchecked*(c: ptr XcbConnection): XcbGetPointerControlCookie {.importc: "xcb_get_pointer_control_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetPointerControlCookie; e: ptr ptr XcbGenericError): ptr XcbGetPointerControlReply {.importc: "xcb_get_pointer_control_reply".}
proc setScreenSaverChecked*(c: ptr XcbConnection; timeout: int16; interval: int16; preferBlanking: uint8; allowExposures: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_screen_saver_checked".}
proc setScreenSaver*(c: ptr XcbConnection; timeout: int16; interval: int16; preferBlanking: uint8; allowExposures: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_screen_saver".}
proc getScreenSaver*(c: ptr XcbConnection): XcbGetScreenSaverCookie {.importc: "xcb_get_screen_saver".}
proc getScreenSaverUnchecked*(c: ptr XcbConnection): XcbGetScreenSaverCookie {.importc: "xcb_get_screen_saver_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetScreenSaverCookie; e: ptr ptr XcbGenericError): ptr XcbGetScreenSaverReply {.importc: "xcb_get_screen_saver_reply".}
proc changeHostsSizeof*(buffer: pointer): cint {.importc: "xcb_change_hosts_sizeof".}
proc changeHostsChecked*(c: ptr XcbConnection; mode: uint8; family: uint8; addressLen: uint16; address: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_change_hosts_checked".}
proc changeHosts*(c: ptr XcbConnection; mode: uint8; family: uint8; addressLen: uint16; address: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_change_hosts".}
proc address*(R: ptr XcbChangeHostsRequest): ptr UncheckedArray[uint8] {.importc: "xcb_change_hosts_address".}
proc addressLength*(R: ptr XcbChangeHostsRequest): cint {.importc: "xcb_change_hosts_address_length".}
proc addressEnd*(R: ptr XcbChangeHostsRequest): XcbGenericIterator {.importc: "xcb_change_hosts_address_end".}
proc hostSizeof*(buffer: pointer): cint {.importc: "xcb_host_sizeof".}
proc address*(R: ptr XcbHost): ptr UncheckedArray[uint8] {.importc: "xcb_host_address".}
proc addressLength*(R: ptr XcbHost): cint {.importc: "xcb_host_address_length".}
proc addressEnd*(R: ptr XcbHost): XcbGenericIterator {.importc: "xcb_host_address_end".}
proc next*(i: ptr XcbHostIterator) {.importc: "xcb_host_next".}
proc iterEnd*(i: XcbHostIterator): XcbGenericIterator {.importc: "xcb_host_end".}
proc listHostsSizeof*(buffer: pointer): cint {.importc: "xcb_list_hosts_sizeof".}
proc listHosts*(c: ptr XcbConnection): XcbListHostsCookie {.importc: "xcb_list_hosts".}
proc listHostsUnchecked*(c: ptr XcbConnection): XcbListHostsCookie {.importc: "xcb_list_hosts_unchecked".}
proc hostsLength*(R: ptr XcbListHostsReply): cint {.importc: "xcb_list_hosts_hosts_length".}
proc hostsIterator*(R: ptr XcbListHostsReply): XcbHostIterator {.importc: "xcb_list_hosts_hosts_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbListHostsCookie; e: ptr ptr XcbGenericError): ptr XcbListHostsReply {.importc: "xcb_list_hosts_reply".}
proc setAccessControlChecked*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_access_control_checked".}
proc setAccessControl*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_access_control".}
proc setCloseDownModeChecked*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_close_down_mode_checked".}
proc setCloseDownMode*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_set_close_down_mode".}
proc killClientChecked*(c: ptr XcbConnection; resource: uint32): XcbVoidCookie {.discardable, importc: "xcb_kill_client_checked".}
proc killClient*(c: ptr XcbConnection; resource: uint32): XcbVoidCookie {.discardable, importc: "xcb_kill_client".}
proc rotatePropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_rotate_properties_sizeof".}
proc rotatePropertiesChecked*(c: ptr XcbConnection; window: XcbWindow; atomsLen: uint16; delta: int16; atoms: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_rotate_properties_checked".}
proc rotateProperties*(c: ptr XcbConnection; window: XcbWindow; atomsLen: uint16; delta: int16; atoms: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_rotate_properties".}
proc atoms*(R: ptr XcbRotatePropertiesRequest): ptr UncheckedArray[XcbAtom] {.importc: "xcb_rotate_properties_atoms".}
proc atomsLength*(R: ptr XcbRotatePropertiesRequest): cint {.importc: "xcb_rotate_properties_atoms_length".}
proc atomsEnd*(R: ptr XcbRotatePropertiesRequest): XcbGenericIterator {.importc: "xcb_rotate_properties_atoms_end".}
proc forceScreenSaverChecked*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_force_screen_saver_checked".}
proc forceScreenSaver*(c: ptr XcbConnection; mode: uint8): XcbVoidCookie {.discardable, importc: "xcb_force_screen_saver".}
proc setPointerMappingSizeof*(buffer: pointer): cint {.importc: "xcb_set_pointer_mapping_sizeof".}
proc setPointerMapping*(c: ptr XcbConnection; mapLen: uint8; map: ptr uint8): XcbSetPointerMappingCookie {.importc: "xcb_set_pointer_mapping".}
proc setPointerMappingUnchecked*(c: ptr XcbConnection; mapLen: uint8; map: ptr uint8): XcbSetPointerMappingCookie {.importc: "xcb_set_pointer_mapping_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSetPointerMappingCookie; e: ptr ptr XcbGenericError): ptr XcbSetPointerMappingReply {.importc: "xcb_set_pointer_mapping_reply".}
proc getPointerMappingSizeof*(buffer: pointer): cint {.importc: "xcb_get_pointer_mapping_sizeof".}
proc getPointerMapping*(c: ptr XcbConnection): XcbGetPointerMappingCookie {.importc: "xcb_get_pointer_mapping".}
proc getPointerMappingUnchecked*(c: ptr XcbConnection): XcbGetPointerMappingCookie {.importc: "xcb_get_pointer_mapping_unchecked".}
proc map*(R: ptr XcbGetPointerMappingReply): ptr UncheckedArray[uint8] {.importc: "xcb_get_pointer_mapping_map".}
proc mapLength*(R: ptr XcbGetPointerMappingReply): cint {.importc: "xcb_get_pointer_mapping_map_length".}
proc mapEnd*(R: ptr XcbGetPointerMappingReply): XcbGenericIterator {.importc: "xcb_get_pointer_mapping_map_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetPointerMappingCookie; e: ptr ptr XcbGenericError): ptr XcbGetPointerMappingReply {.importc: "xcb_get_pointer_mapping_reply".}
proc setModifierMappingSizeof*(buffer: pointer): cint {.importc: "xcb_set_modifier_mapping_sizeof".}
proc setModifierMapping*(c: ptr XcbConnection; keycodesPerModifier: uint8; keycodes: ptr XcbKeycode): XcbSetModifierMappingCookie {.importc: "xcb_set_modifier_mapping".}
proc setModifierMappingUnchecked*(c: ptr XcbConnection; keycodesPerModifier: uint8; keycodes: ptr XcbKeycode): XcbSetModifierMappingCookie {.importc: "xcb_set_modifier_mapping_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSetModifierMappingCookie; e: ptr ptr XcbGenericError): ptr XcbSetModifierMappingReply {.importc: "xcb_set_modifier_mapping_reply".}
proc getModifierMappingSizeof*(buffer: pointer): cint {.importc: "xcb_get_modifier_mapping_sizeof".}
proc getModifierMapping*(c: ptr XcbConnection): XcbGetModifierMappingCookie {.importc: "xcb_get_modifier_mapping".}
proc getModifierMappingUnchecked*(c: ptr XcbConnection): XcbGetModifierMappingCookie {.importc: "xcb_get_modifier_mapping_unchecked".}
proc keycodes*(R: ptr XcbGetModifierMappingReply): ptr UncheckedArray[XcbKeycode] {.importc: "xcb_get_modifier_mapping_keycodes".}
proc keycodesLength*(R: ptr XcbGetModifierMappingReply): cint {.importc: "xcb_get_modifier_mapping_keycodes_length".}
proc keycodesEnd*(R: ptr XcbGetModifierMappingReply): XcbGenericIterator {.importc: "xcb_get_modifier_mapping_keycodes_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGetModifierMappingCookie; e: ptr ptr XcbGenericError): ptr XcbGetModifierMappingReply {.importc: "xcb_get_modifier_mapping_reply".}
proc noOperationChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_no_operation_checked".}
proc noOperation*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_no_operation".}

{.pop.}
