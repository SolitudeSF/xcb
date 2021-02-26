import ./xcb, ./xfixes

const
  xcbInputMajorVersion* = 2
  xcbInputMinorVersion* = 3
  xcbInputGetExtensionVersion* = 1
  xcbInputListInputDevices* = 2
  xcbInputOpenDevice* = 3
  xcbInputCloseDevice* = 4
  xcbInputSetDeviceMode* = 5
  xcbInputSelectExtensionEvent* = 6
  xcbInputGetSelectedExtensionEvents* = 7
  xcbInputChangeDeviceDontPropagateList* = 8
  xcbInputGetDeviceDontPropagateList* = 9
  xcbInputGetDeviceMotionEvents* = 10
  xcbInputChangeKeyboardDevice* = 11
  xcbInputChangePointerDevice* = 12
  xcbInputGrabDevice* = 13
  xcbInputUngrabDevice* = 14
  xcbInputGrabDeviceKey* = 15
  xcbInputUngrabDeviceKey* = 16
  xcbInputGrabDeviceButton* = 17
  xcbInputUngrabDeviceButton* = 18
  xcbInputAllowDeviceEvents* = 19
  xcbInputGetDeviceFocus* = 20
  xcbInputSetDeviceFocus* = 21
  xcbInputGetFeedbackControl* = 22
  xcbInputChangeFeedbackControl* = 23
  xcbInputGetDeviceKeyMapping* = 24
  xcbInputChangeDeviceKeyMapping* = 25
  xcbInputGetDeviceModifierMapping* = 26
  xcbInputSetDeviceModifierMapping* = 27
  xcbInputGetDeviceButtonMapping* = 28
  xcbInputSetDeviceButtonMapping* = 29
  xcbInputQueryDeviceState* = 30
  xcbInputDeviceBell* = 32
  xcbInputSetDeviceValuators* = 33
  xcbInputGetDeviceControl* = 34
  xcbInputChangeDeviceControl* = 35
  xcbInputListDeviceProperties* = 36
  xcbInputChangeDeviceProperty* = 37
  xcbInputDeleteDeviceProperty* = 38
  xcbInputGetDeviceProperty* = 39
  xcbInputXiQueryPointer* = 40
  xcbInputXiWarpPointer* = 41
  xcbInputXiChangeCursor* = 42
  xcbInputXiChangeHierarchy* = 43
  xcbInputXiSetClientPointer* = 44
  xcbInputXiGetClientPointer* = 45
  xcbInputXiSelectEvents* = 46
  xcbInputXiQueryVersion* = 47
  xcbInputXiQueryDevice* = 48
  xcbInputXiSetFocus* = 49
  xcbInputXiGetFocus* = 50
  xcbInputXiGrabDevice* = 51
  xcbInputXiUngrabDevice* = 52
  xcbInputXiAllowEvents* = 53
  xcbInputXiPassiveGrabDevice* = 54
  xcbInputXiPassiveUngrabDevice* = 55
  xcbInputXiListProperties* = 56
  xcbInputXiChangeProperty* = 57
  xcbInputXiDeleteProperty* = 58
  xcbInputXiGetProperty* = 59
  xcbInputXiGetSelectedEvents* = 60
  xcbInputXiBarrierReleasePointer* = 61
  xcbInputDeviceValuator* = 0
  xcbInputDeviceKeyPress* = 1
  xcbInputDeviceKeyRelease* = 2
  xcbInputDeviceButtonPress* = 3
  xcbInputDeviceButtonRelease* = 4
  xcbInputDeviceMotionNotify* = 5
  xcbInputDeviceFocusIn* = 6
  xcbInputDeviceFocusOut* = 7
  xcbInputProximityIn* = 8
  xcbInputProximityOut* = 9
  xcbInputDeviceStateNotify* = 10
  xcbInputDeviceMappingNotify* = 11
  xcbInputChangeDeviceNotify* = 12
  xcbInputDeviceKeyStateNotify* = 13
  xcbInputDeviceButtonStateNotify* = 14
  xcbInputDevicePresenceNotify* = 15
  xcbInputDevicePropertyNotify* = 16
  xcbInputDeviceChanged* = 1
  xcbInputKeyPress* = 2
  xcbInputKeyRelease* = 3
  xcbInputButtonPress* = 4
  xcbInputButtonRelease* = 5
  xcbInputMotion* = 6
  xcbInputEnter* = 7
  xcbInputLeave* = 8
  xcbInputFocusIn* = 9
  xcbInputFocusOut* = 10
  xcbInputHierarchy* = 11
  xcbInputProperty* = 12
  xcbInputRawKeyPress* = 13
  xcbInputRawKeyRelease* = 14
  xcbInputRawButtonPress* = 15
  xcbInputRawButtonRelease* = 16
  xcbInputRawMotion* = 17
  xcbInputTouchBegin* = 18
  xcbInputTouchUpdate* = 19
  xcbInputTouchEnd* = 20
  xcbInputTouchOwnership* = 21
  xcbInputRawTouchBegin* = 22
  xcbInputRawTouchUpdate* = 23
  xcbInputRawTouchEnd* = 24
  xcbInputBarrierHit* = 25
  xcbInputBarrierLeave* = 26
  xcbInputSendExtensionEvent* = 31
  xcbInputDevice* = 0
  xcbInputEvent* = 1
  xcbInputMode* = 2
  xcbInputDeviceBusy* = 3
  xcbInputClass* = 4

{.passl: "-lxcb-xinput".}
{.push header: "xcb/xinput.h".}

var xcbInputId* {.extern: "xcb_input_id".}: XcbExtension

type
  XcbInputEventClass* {.importc: "xcb_input_event_class_t".} = distinct uint32
  XcbInputKeyCode* {.importc: "xcb_input_key_code_t".} = distinct uint8
  XcbInputDeviceId* {.importc: "xcb_input_device_id_t".} = distinct uint16
  XcbInputEventTypeBase* {.importc: "xcb_input_event_type_base_t".} = distinct uint8
  XcbInputFp1616* {.importc: "xcb_input_fp1616_t".} = distinct int32

  XcbInputEventClassIterator* {.importc: "xcb_input_event_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputEventClass]
    rem*: cint
    index*: cint

  XcbInputKeyCodeIterator* {.importc: "xcb_input_key_code_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKeyCode]
    rem*: cint
    index*: cint

  XcbInputDeviceIdIterator* {.importc: "xcb_input_device_id_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceId]
    rem*: cint
    index*: cint

  XcbInputFp1616Iterator* {.importc: "xcb_input_fp1616_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputFp1616]
    rem*: cint
    index*: cint

  XcbInputFp3232* {.importc: "xcb_input_fp3232_t", bycopy.} = object
    integral*: int32
    frac*: uint32

  XcbInputFp3232Iterator* {.importc: "xcb_input_fp3232_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputFp3232]
    rem*: cint
    index*: cint

  XcbInputGetExtensionVersionCookie* {.importc: "xcb_input_get_extension_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetExtensionVersionRequest* {.importc: "xcb_input_get_extension_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    nameLen* {.importc: "name_len".}: uint16
    pad0: array[2, uint8]

  XcbInputGetExtensionVersionReply* {.importc: "xcb_input_get_extension_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    serverMajor* {.importc: "server_major".}: uint16
    serverMinor* {.importc: "server_minor".}: uint16
    present*: uint8
    pad0: array[19, uint8]

  XcbInputDeviceUse* {.importc: "xcb_input_device_use_t".} = enum
    xcbInputDeviceUseIsXPointer = 0, xcbInputDeviceUseIsXKeyboard = 1,
    xcbInputDeviceUseIsXExtensionDevice = 2,
    xcbInputDeviceUseIsXExtensionKeyboard = 3,
    xcbInputDeviceUseIsXExtensionPointer = 4

  XcbInputInputClass* {.importc: "xcb_input_input_class_t".} = enum
    xcbInputInputClassKey = 0, xcbInputInputClassButton = 1,
    xcbInputInputClassValuator = 2, xcbInputInputClassFeedback = 3,
    xcbInputInputClassProximity = 4, xcbInputInputClassFocus = 5,
    xcbInputInputClassOther = 6

  XcbInputValuatorMode* {.importc: "xcb_input_valuator_mode_t".} = enum
    xcbInputValuatorModeRelative = 0, xcbInputValuatorModeAbsolute = 1

  XcbInputDeviceInfo* {.importc: "xcb_input_device_info_t", bycopy.} = object
    deviceType* {.importc: "device_type".}: XcbAtom
    deviceId* {.importc: "device_id".}: uint8
    numClassInfo* {.importc: "num_class_info".}: uint8
    deviceUse* {.importc: "device_use".}: uint8
    pad0: uint8

  XcbInputDeviceInfoIterator* {.importc: "xcb_input_device_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceInfo]
    rem*: cint
    index*: cint

  XcbInputKeyInfo* {.importc: "xcb_input_key_info_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    minKeycode* {.importc: "min_keycode".}: XcbInputKeyCode
    maxKeycode* {.importc: "max_keycode".}: XcbInputKeyCode
    numKeys* {.importc: "num_keys".}: uint16
    pad0: array[2, uint8]

  XcbInputKeyInfoIterator* {.importc: "xcb_input_key_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKeyInfo]
    rem*: cint
    index*: cint

  XcbInputButtonInfo* {.importc: "xcb_input_button_info_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    numButtons* {.importc: "num_buttons".}: uint16

  XcbInputButtonInfoIterator* {.importc: "xcb_input_button_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputButtonInfo]
    rem*: cint
    index*: cint

  XcbInputAxisInfo* {.importc: "xcb_input_axis_info_t", bycopy.} = object
    resolution*: uint32
    minimum*: int32
    maximum*: int32

  XcbInputAxisInfoIterator* {.importc: "xcb_input_axis_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputAxisInfo]
    rem*: cint
    index*: cint

  XcbInputValuatorInfo* {.importc: "xcb_input_valuator_info_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    axesLen* {.importc: "axes_len".}: uint8
    mode*: uint8
    motionSize* {.importc: "motion_size".}: uint32

  XcbInputValuatorInfoIterator* {.importc: "xcb_input_valuator_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputValuatorInfo]
    rem*: cint
    index*: cint

{.pop.}

type
  XcbInputInputInfoKey* {.bycopy.} = object
    ## Inner
    minKeycode* {.importc: "min_keycode".}: XcbInputKeyCode
    maxKeycode* {.importc: "max_keycode".}: XcbInputKeyCode
    numKeys* {.importc: "num_keys".}: uint16
    pad0: array[2, uint8]
  XcbInputInputInfoButton* {.bycopy.} = object
    ## Inner
    numButtons* {.importc: "num_buttons".}: uint16
  XcbInputInputInfoValuator* {.bycopy.} = object
    ## Inner
    axesLen* {.importc: "axes_len".}: uint8
    mode*: uint8
    motionSize* {.importc: "motion_size".}: uint32
    axes*: ptr XcbInputAxisInfo

{.push header: "xcb/xinput.h".}

type
  XcbInputInputInfoInfo* {.importc: "xcb_input_input_info_info_t", bycopy.} = object
    key*: XcbInputInputInfoKey
    button*: XcbInputInputInfoButton
    valuator*: XcbInputInputInfoValuator

  XcbInputInputInfo* {.importc: "xcb_input_input_info_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8

  XcbInputInputInfoIterator* {.importc: "xcb_input_input_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputInputInfo]
    rem*: cint
    index*: cint

  XcbInputDeviceName* {.importc: "xcb_input_device_name_t", bycopy.} = object
    len*: uint8

  XcbInputDeviceNameIterator* {.importc: "xcb_input_device_name_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceName]
    rem*: cint
    index*: cint

  XcbInputListInputDevicesCookie* {.importc: "xcb_input_list_input_devices_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputListInputDevicesRequest* {.importc: "xcb_input_list_input_devices_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbInputListInputDevicesReply* {.importc: "xcb_input_list_input_devices_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    devicesLen* {.importc: "devices_len".}: uint8
    pad0: array[23, uint8]

  XcbInputEventTypeBaseIterator* {.importc: "xcb_input_event_type_base_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputEventTypeBase]
    rem*: cint
    index*: cint

  XcbInputInputClassInfo* {.importc: "xcb_input_input_class_info_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    eventTypeBase* {.importc: "event_type_base".}: XcbInputEventTypeBase

  XcbInputInputClassInfoIterator* {.importc: "xcb_input_input_class_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputInputClassInfo]
    rem*: cint
    index*: cint

  XcbInputOpenDeviceCookie* {.importc: "xcb_input_open_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputOpenDeviceRequest* {.importc: "xcb_input_open_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputOpenDeviceReply* {.importc: "xcb_input_open_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numClasses* {.importc: "num_classes".}: uint8
    pad0: array[23, uint8]

  XcbInputCloseDeviceRequest* {.importc: "xcb_input_close_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputSetDeviceModeCookie* {.importc: "xcb_input_set_device_mode_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputSetDeviceModeRequest* {.importc: "xcb_input_set_device_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    mode*: uint8
    pad0: array[2, uint8]

  XcbInputSetDeviceModeReply* {.importc: "xcb_input_set_device_mode_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputSelectExtensionEventRequest* {.importc: "xcb_input_select_extension_event_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    numClasses* {.importc: "num_classes".}: uint16
    pad0: array[2, uint8]

  XcbInputGetSelectedExtensionEventsCookie* {.importc: "xcb_input_get_selected_extension_events_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetSelectedExtensionEventsRequest* {.importc: "xcb_input_get_selected_extension_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbInputGetSelectedExtensionEventsReply* {.importc: "xcb_input_get_selected_extension_events_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numThisClasses* {.importc: "num_this_classes".}: uint16
    numAllClasses* {.importc: "num_all_classes".}: uint16
    pad0: array[20, uint8]

  XcbInputPropagateMode* {.importc: "xcb_input_propagate_mode_t".} = enum
    xcbInputPropagateModeAddToList = 0,
    xcbInputPropagateModeDeleteFromList = 1

  XcbInputChangeDeviceDontPropagateListRequest* {.importc: "xcb_input_change_device_dont_propagate_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    numClasses* {.importc: "num_classes".}: uint16
    mode*: uint8
    pad0: uint8

  XcbInputGetDeviceDontPropagateListCookie* {.importc: "xcb_input_get_device_dont_propagate_list_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceDontPropagateListRequest* {.importc: "xcb_input_get_device_dont_propagate_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbInputGetDeviceDontPropagateListReply* {.importc: "xcb_input_get_device_dont_propagate_list_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numClasses* {.importc: "num_classes".}: uint16
    pad0: array[22, uint8]

  XcbInputDeviceTimeCoord* {.importc: "xcb_input_device_time_coord_t", bycopy.} = object
    time*: XcbTimestamp

  XcbInputDeviceTimeCoordIterator* {.importc: "xcb_input_device_time_coord_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceTimeCoord]
    rem*: cint
    index*: cint
    numAxes* {.importc: "num_axes".}: uint8

  XcbInputGetDeviceMotionEventsCookie* {.importc: "xcb_input_get_device_motion_events_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceMotionEventsRequest* {.importc: "xcb_input_get_device_motion_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    start*: XcbTimestamp
    stop*: XcbTimestamp
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetDeviceMotionEventsReply* {.importc: "xcb_input_get_device_motion_events_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numEvents* {.importc: "num_events".}: uint32
    numAxes* {.importc: "num_axes".}: uint8
    deviceMode* {.importc: "device_mode".}: uint8
    pad0: array[18, uint8]

  XcbInputChangeKeyboardDeviceCookie* {.importc: "xcb_input_change_keyboard_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputChangeKeyboardDeviceRequest* {.importc: "xcb_input_change_keyboard_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputChangeKeyboardDeviceReply* {.importc: "xcb_input_change_keyboard_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputChangePointerDeviceCookie* {.importc: "xcb_input_change_pointer_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputChangePointerDeviceRequest* {.importc: "xcb_input_change_pointer_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    xAxis* {.importc: "x_axis".}: uint8
    yAxis* {.importc: "y_axis".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: uint8

  XcbInputChangePointerDeviceReply* {.importc: "xcb_input_change_pointer_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputGrabDeviceCookie* {.importc: "xcb_input_grab_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGrabDeviceRequest* {.importc: "xcb_input_grab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    time*: XcbTimestamp
    numClasses* {.importc: "num_classes".}: uint16
    thisDeviceMode* {.importc: "this_device_mode".}: uint8
    otherDeviceMode* {.importc: "other_device_mode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[2, uint8]

  XcbInputGrabDeviceReply* {.importc: "xcb_input_grab_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputUngrabDeviceRequest* {.importc: "xcb_input_ungrab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    time*: XcbTimestamp
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputModifierDevice* {.importc: "xcb_input_modifier_device_t".} = enum
    xcbInputModifierDeviceUseXKeyboard = 255

  XcbInputGrabDeviceKeyRequest* {.importc: "xcb_input_grab_device_key_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    numClasses* {.importc: "num_classes".}: uint16
    modifiers*: uint16
    modifierDevice* {.importc: "modifier_device".}: uint8
    grabbedDevice* {.importc: "grabbed_device".}: uint8
    key*: uint8
    thisDeviceMode* {.importc: "this_device_mode".}: uint8
    otherDeviceMode* {.importc: "other_device_mode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    pad0: array[2, uint8]

  XcbInputUngrabDeviceKeyRequest* {.importc: "xcb_input_ungrab_device_key_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow*: XcbWindow
    modifiers*: uint16
    modifierDevice* {.importc: "modifier_device".}: uint8
    key*: uint8
    grabbedDevice* {.importc: "grabbed_device".}: uint8

  XcbInputGrabDeviceButtonRequest* {.importc: "xcb_input_grab_device_button_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    grabbedDevice* {.importc: "grabbed_device".}: uint8
    modifierDevice* {.importc: "modifier_device".}: uint8
    numClasses* {.importc: "num_classes".}: uint16
    modifiers*: uint16
    thisDeviceMode* {.importc: "this_device_mode".}: uint8
    otherDeviceMode* {.importc: "other_device_mode".}: uint8
    button*: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    pad0: array[2, uint8]

  XcbInputUngrabDeviceButtonRequest* {.importc: "xcb_input_ungrab_device_button_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    modifiers*: uint16
    modifierDevice* {.importc: "modifier_device".}: uint8
    button*: uint8
    grabbedDevice* {.importc: "grabbed_device".}: uint8
    pad0: array[3, uint8]

  XcbInputDeviceInputMode* {.importc: "xcb_input_device_input_mode_t".} = enum
    xcbInputDeviceInputModeAsyncThisDevice = 0,
    xcbInputDeviceInputModeSyncThisDevice = 1,
    xcbInputDeviceInputModeReplayThisDevice = 2,
    xcbInputDeviceInputModeAsyncOtherDevices = 3,
    xcbInputDeviceInputModeAsyncAll = 4,
    xcbInputDeviceInputModeSyncAll = 5

  XcbInputAllowDeviceEventsRequest* {.importc: "xcb_input_allow_device_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    time*: XcbTimestamp
    mode*: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[2, uint8]

  XcbInputGetDeviceFocusCookie* {.importc: "xcb_input_get_device_focus_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceFocusRequest* {.importc: "xcb_input_get_device_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetDeviceFocusReply* {.importc: "xcb_input_get_device_focus_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    focus*: XcbWindow
    time*: XcbTimestamp
    revertTo* {.importc: "revert_to".}: uint8
    pad0: array[15, uint8]

  XcbInputSetDeviceFocusRequest* {.importc: "xcb_input_set_device_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    focus*: XcbWindow
    time*: XcbTimestamp
    revertTo* {.importc: "revert_to".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[2, uint8]

  XcbInputFeedbackClass* {.importc: "xcb_input_feedback_class_t".} = enum
    xcbInputFeedbackClassKeyboard = 0, xcbInputFeedbackClassPointer = 1,
    xcbInputFeedbackClassString = 2, xcbInputFeedbackClassInteger = 3,
    xcbInputFeedbackClassLed = 4, xcbInputFeedbackClassBell = 5

  XcbInputKbdFeedbackState* {.importc: "xcb_input_kbd_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    pitch*: uint16
    duration*: uint16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32
    globalAutoRepeat* {.importc: "global_auto_repeat".}: uint8
    click*: uint8
    percent*: uint8
    pad0: uint8
    autoRepeats* {.importc: "auto_repeats".}: array[32, uint8]

  XcbInputKbdFeedbackStateIterator* {.importc: "xcb_input_kbd_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKbdFeedbackState]
    rem*: cint
    index*: cint

  XcbInputPtrFeedbackState* {.importc: "xcb_input_ptr_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    pad0: array[2, uint8]
    accelNum* {.importc: "accel_num".}: uint16
    accelDenom* {.importc: "accel_denom".}: uint16
    threshold*: uint16

  XcbInputPtrFeedbackStateIterator* {.importc: "xcb_input_ptr_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputPtrFeedbackState]
    rem*: cint
    index*: cint

  XcbInputIntegerFeedbackState* {.importc: "xcb_input_integer_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    resolution*: uint32
    minValue* {.importc: "min_value".}: int32
    maxValue* {.importc: "max_value".}: int32

  XcbInputIntegerFeedbackStateIterator* {.importc: "xcb_input_integer_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputIntegerFeedbackState]
    rem*: cint
    index*: cint

  XcbInputStringFeedbackState* {.importc: "xcb_input_string_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    maxSymbols* {.importc: "max_symbols".}: uint16
    numKeysyms* {.importc: "num_keysyms".}: uint16

  XcbInputStringFeedbackStateIterator* {.importc: "xcb_input_string_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputStringFeedbackState]
    rem*: cint
    index*: cint

  XcbInputBellFeedbackState* {.importc: "xcb_input_bell_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    percent*: uint8
    pad0: array[3, uint8]
    pitch*: uint16
    duration*: uint16

  XcbInputBellFeedbackStateIterator* {.importc: "xcb_input_bell_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputBellFeedbackState]
    rem*: cint
    index*: cint

  XcbInputLedFeedbackState* {.importc: "xcb_input_led_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32

  XcbInputLedFeedbackStateIterator* {.importc: "xcb_input_led_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputLedFeedbackState]
    rem*: cint
    index*: cint

{.pop.}

type
  XcbInputFeedbackStateKeyboard* {.bycopy.} = object
    ## Inner
    pitch*: uint16
    duration*: uint16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32
    globalAutoRepeat* {.importc: "global_auto_repeat".}: uint8
    click*: uint8
    percent*: uint8
    pad0: uint8
    autoRepeats* {.importc: "auto_repeats".}: array[32, uint8]
  XcbInputFeedbackStatePointer* {.bycopy.} = object
    ## Inner
    pad1: array[2, uint8]
    accelNum* {.importc: "accel_num".}: uint16
    accelDenom* {.importc: "accel_denom".}: uint16
    threshold*: uint16
  XcbInputFeedbackStateString* {.bycopy.} = object
    ## Inner
    maxSymbols* {.importc: "max_symbols".}: uint16
    numKeysyms* {.importc: "num_keysyms".}: uint16
    keysyms*: ptr XcbKeysym
  XcbInputFeedbackStateInteger* {.bycopy.} = object
    ## Inner
    resolution*: uint32
    minValue* {.importc: "min_value".}: int32
    maxValue* {.importc: "max_value".}: int32
  XcbInputFeedbackStateLed* {.bycopy.} = object
    ## Inner
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32
  XcbInputFeedbackStateBell* {.bycopy.} = object
    ## Inner
    percent*: uint8
    pad2: array[3, uint8]
    pitch*: uint16
    duration*: uint16

{.push header: "xcb/xinput.h".}

type
  XcbInputFeedbackStateData* {.importc: "xcb_input_feedback_state_data_t", bycopy.} = object
    keyboard*: XcbInputFeedbackStateKeyboard
    pointer*: XcbInputFeedbackStatePointer
    string*: XcbInputFeedbackStateString
    integer*: XcbInputFeedbackStateInteger
    led*: XcbInputFeedbackStateLed
    bell*: XcbInputFeedbackStateBell

  XcbInputFeedbackState* {.importc: "xcb_input_feedback_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16

  XcbInputFeedbackStateIterator* {.importc: "xcb_input_feedback_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputFeedbackState]
    rem*: cint
    index*: cint

  XcbInputGetFeedbackControlCookie* {.importc: "xcb_input_get_feedback_control_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetFeedbackControlRequest* {.importc: "xcb_input_get_feedback_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetFeedbackControlReply* {.importc: "xcb_input_get_feedback_control_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numFeedbacks* {.importc: "num_feedbacks".}: uint16
    pad0: array[22, uint8]

  XcbInputKbdFeedbackCtl* {.importc: "xcb_input_kbd_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    key*: XcbInputKeyCode
    autoRepeatMode* {.importc: "auto_repeat_mode".}: uint8
    keyClickPercent* {.importc: "key_click_percent".}: int8
    bellPercent* {.importc: "bell_percent".}: int8
    bellPitch* {.importc: "bell_pitch".}: int16
    bellDuration* {.importc: "bell_duration".}: int16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32

  XcbInputKbdFeedbackCtlIterator* {.importc: "xcb_input_kbd_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKbdFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputPtrFeedbackCtl* {.importc: "xcb_input_ptr_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    pad0: array[2, uint8]
    num*: int16
    denom*: int16
    threshold*: int16

  XcbInputPtrFeedbackCtlIterator* {.importc: "xcb_input_ptr_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputPtrFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputIntegerFeedbackCtl* {.importc: "xcb_input_integer_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    intToDisplay* {.importc: "int_to_display".}: int32

  XcbInputIntegerFeedbackCtlIterator* {.importc: "xcb_input_integer_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputIntegerFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputStringFeedbackCtl* {.importc: "xcb_input_string_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    pad0: array[2, uint8]
    numKeysyms* {.importc: "num_keysyms".}: uint16

  XcbInputStringFeedbackCtlIterator* {.importc: "xcb_input_string_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputStringFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputBellFeedbackCtl* {.importc: "xcb_input_bell_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    percent*: int8
    pad0: array[3, uint8]
    pitch*: int16
    duration*: int16

  XcbInputBellFeedbackCtlIterator* {.importc: "xcb_input_bell_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputBellFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputLedFeedbackCtl* {.importc: "xcb_input_led_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32

  XcbInputLedFeedbackCtlIterator* {.importc: "xcb_input_led_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputLedFeedbackCtl]
    rem*: cint
    index*: cint

{.pop.}

type
  XcbInputFeedbackCtlKeyboard* {.bycopy.} = object
    ## Inner
    key*: XcbInputKeyCode
    autoRepeatMode* {.importc: "auto_repeat_mode".}: uint8
    keyClickPercent* {.importc: "key_click_percent".}: int8
    bellPercent* {.importc: "bell_percent".}: int8
    bellPitch* {.importc: "bell_pitch".}: int16
    bellDuration* {.importc: "bell_duration".}: int16
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32
  XcbInputFeedbackCtlPointer* {.bycopy.} = object
    ## Inner
    pad0: array[2, uint8]
    num*: int16
    denom*: int16
    threshold*: int16
  XcbInputFeedbackCtlString* {.bycopy.} = object
    ## Inner
    pad1: array[2, uint8]
    numKeysyms* {.importc: "num_keysyms".}: uint16
    keysyms*: ptr XcbKeysym
  XcbInputFeedbackCtlInteger* {.bycopy.} = object
    ## Inner
    intToDisplay* {.importc: "int_to_display".}: int32
  XcbInputFeedbackCtlLed* {.bycopy.} = object
    ## Inner
    ledMask* {.importc: "led_mask".}: uint32
    ledValues* {.importc: "led_values".}: uint32
  XcbInputFeedbackCtlBell* {.bycopy.} = object
    ## Inner
    percent*: int8
    pad2: array[3, uint8]
    pitch*: int16
    duration*: int16

{.push header: "xcb/xinput.h".}

type
  XcbInputFeedbackCtlData* {.importc: "xcb_input_feedback_ctl_data_t", bycopy.} = object
    keyboard*: XcbInputFeedbackCtlKeyboard
    pointer*: XcbInputFeedbackCtlPointer
    string*: XcbInputFeedbackCtlString
    integer*: XcbInputFeedbackCtlInteger
    led*: XcbInputFeedbackCtlLed
    bell*: XcbInputFeedbackCtlBell

  XcbInputFeedbackCtl* {.importc: "xcb_input_feedback_ctl_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    len*: uint16

  XcbInputFeedbackCtlIterator* {.importc: "xcb_input_feedback_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputFeedbackCtl]
    rem*: cint
    index*: cint

  XcbInputChangeFeedbackControlMask* {.importc: "xcb_input_change_feedback_control_mask_t".} = enum
    xcbInputChangeFeedbackControlMaskKeyClickPercent = 1,
    xcbInputChangeFeedbackControlMaskPercent = 2,
    xcbInputChangeFeedbackControlMaskPitch = 4,
    xcbInputChangeFeedbackControlMaskDuration = 8,
    xcbInputChangeFeedbackControlMaskLed = 16,
    xcbInputChangeFeedbackControlMaskLedMode = 32,
    xcbInputChangeFeedbackControlMaskKey = 64,
    xcbInputChangeFeedbackControlMaskAutoRepeatMode = 128

  XcbInputChangeFeedbackControlRequest* {.importc: "xcb_input_change_feedback_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    mask*: uint32
    deviceId* {.importc: "device_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    pad0: array[2, uint8]

  XcbInputGetDeviceKeyMappingCookie* {.importc: "xcb_input_get_device_key_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceKeyMappingRequest* {.importc: "xcb_input_get_device_key_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    firstKeycode* {.importc: "first_keycode".}: XcbInputKeyCode
    count*: uint8
    pad0: uint8

  XcbInputGetDeviceKeyMappingReply* {.importc: "xcb_input_get_device_key_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    keysymsPerKeycode* {.importc: "keysyms_per_keycode".}: uint8
    pad0: array[23, uint8]

  XcbInputChangeDeviceKeyMappingRequest* {.importc: "xcb_input_change_device_key_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    firstKeycode* {.importc: "first_keycode".}: XcbInputKeyCode
    keysymsPerKeycode* {.importc: "keysyms_per_keycode".}: uint8
    keycodeCount* {.importc: "keycode_count".}: uint8

  XcbInputGetDeviceModifierMappingCookie* {.importc: "xcb_input_get_device_modifier_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceModifierMappingRequest* {.importc: "xcb_input_get_device_modifier_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetDeviceModifierMappingReply* {.importc: "xcb_input_get_device_modifier_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    keycodesPerModifier* {.importc: "keycodes_per_modifier".}: uint8
    pad0: array[23, uint8]

  XcbInputSetDeviceModifierMappingCookie* {.importc: "xcb_input_set_device_modifier_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputSetDeviceModifierMappingRequest* {.importc: "xcb_input_set_device_modifier_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    keycodesPerModifier* {.importc: "keycodes_per_modifier".}: uint8
    pad0: array[2, uint8]

  XcbInputSetDeviceModifierMappingReply* {.importc: "xcb_input_set_device_modifier_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputGetDeviceButtonMappingCookie* {.importc: "xcb_input_get_device_button_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceButtonMappingRequest* {.importc: "xcb_input_get_device_button_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetDeviceButtonMappingReply* {.importc: "xcb_input_get_device_button_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    mapSize* {.importc: "map_size".}: uint8
    pad0: array[23, uint8]

  XcbInputSetDeviceButtonMappingCookie* {.importc: "xcb_input_set_device_button_mapping_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputSetDeviceButtonMappingRequest* {.importc: "xcb_input_set_device_button_mapping_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    mapSize* {.importc: "map_size".}: uint8
    pad0: array[2, uint8]

  XcbInputSetDeviceButtonMappingReply* {.importc: "xcb_input_set_device_button_mapping_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputKeyState* {.importc: "xcb_input_key_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    numKeys* {.importc: "num_keys".}: uint8
    pad0: uint8
    keys*: array[32, uint8]

  XcbInputKeyStateIterator* {.importc: "xcb_input_key_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKeyState]
    rem*: cint
    index*: cint

  XcbInputButtonState* {.importc: "xcb_input_button_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    numButtons* {.importc: "num_buttons".}: uint8
    pad0: uint8
    buttons*: array[32, uint8]

  XcbInputButtonStateIterator* {.importc: "xcb_input_button_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputButtonState]
    rem*: cint
    index*: cint

  XcbInputValuatorStateModeMask* {.importc: "xcb_input_valuator_state_mode_mask_t".} = enum
    xcbInputValuatorStateModeMaskDeviceModeAbsolute = 1,
    xcbInputValuatorStateModeMaskOutOfProximity = 2

  XcbInputValuatorState* {.importc: "xcb_input_valuator_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8
    numValuators* {.importc: "num_valuators".}: uint8
    mode*: uint8

  XcbInputValuatorStateIterator* {.importc: "xcb_input_valuator_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputValuatorState]
    rem*: cint
    index*: cint

{.pop.}

type
  XcbInputInputStateKey* {.bycopy.} = object
    ## Inner
    numKeys* {.importc: "num_keys".}: uint8
    pad0: uint8
    keys*: array[32, uint8]
  XcbInputInputStateButton* {.bycopy.} = object
    ## Inner
    numButtons* {.importc: "num_buttons".}: uint8
    pad1: uint8
    buttons*: array[32, uint8]
  XcbInputInputStateValidator* {.bycopy.} = object
    ## Inner
    numValuators* {.importc: "num_valuators".}: uint8
    mode*: uint8
    valuators*: ptr int32

{.push header: "xcb/xinput.h".}

type
  XcbInputInputStateData* {.importc: "xcb_input_input_state_data_t", bycopy.} = object
    key*: XcbInputInputStateKey
    button*: XcbInputInputStateButton
    valuator*: XcbInputInputStateValidator

  XcbInputInputState* {.importc: "xcb_input_input_state_t", bycopy.} = object
    classId* {.importc: "class_id".}: uint8
    len*: uint8

  XcbInputInputStateIterator* {.importc: "xcb_input_input_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputInputState]
    rem*: cint
    index*: cint

  XcbInputQueryDeviceStateCookie* {.importc: "xcb_input_query_device_state_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputQueryDeviceStateRequest* {.importc: "xcb_input_query_device_state_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputQueryDeviceStateReply* {.importc: "xcb_input_query_device_state_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numClasses* {.importc: "num_classes".}: uint8
    pad0: array[23, uint8]

  XcbInputDeviceBellRequest* {.importc: "xcb_input_device_bell_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    feedbackId* {.importc: "feedback_id".}: uint8
    feedbackClass* {.importc: "feedback_class".}: uint8
    percent*: int8

  XcbInputSetDeviceValuatorsCookie* {.importc: "xcb_input_set_device_valuators_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputSetDeviceValuatorsRequest* {.importc: "xcb_input_set_device_valuators_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    firstValuator* {.importc: "first_valuator".}: uint8
    numValuators* {.importc: "num_valuators".}: uint8
    pad0: uint8

  XcbInputSetDeviceValuatorsReply* {.importc: "xcb_input_set_device_valuators_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputDeviceControl* {.importc: "xcb_input_device_control_t".} = enum
    xcbInputDeviceControlResolution = 1,
    xcbInputDeviceControlAbsCalib = 2, xcbInputDeviceControlCore = 3,
    xcbInputDeviceControlEnable = 4, xcbInputDeviceControlAbsArea = 5

  XcbInputDeviceResolutionState* {.importc: "xcb_input_device_resolution_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    numValuators* {.importc: "num_valuators".}: uint32

  XcbInputDeviceResolutionStateIterator* {.importc: "xcb_input_device_resolution_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceResolutionState]
    rem*: cint
    index*: cint

  XcbInputDeviceAbsCalibState* {.importc: "xcb_input_device_abs_calib_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    minX* {.importc: "min_x".}: int32
    maxX* {.importc: "max_x".}: int32
    minY* {.importc: "min_y".}: int32
    maxY* {.importc: "max_y".}: int32
    flipX* {.importc: "flip_x".}: uint32
    flipY* {.importc: "flip_y".}: uint32
    rotation*: uint32
    buttonThreshold* {.importc: "button_threshold".}: uint32

  XcbInputDeviceAbsCalibStateIterator* {.importc: "xcb_input_device_abs_calib_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceAbsCalibState]
    rem*: cint
    index*: cint

  XcbInputDeviceAbsAreaState* {.importc: "xcb_input_device_abs_area_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    offsetX* {.importc: "offset_x".}: uint32
    offsetY* {.importc: "offset_y".}: uint32
    width*: uint32
    height*: uint32
    screen*: uint32
    following*: uint32

  XcbInputDeviceAbsAreaStateIterator* {.importc: "xcb_input_device_abs_area_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceAbsAreaState]
    rem*: cint
    index*: cint

  XcbInputDeviceCoreState* {.importc: "xcb_input_device_core_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    status*: uint8
    iscore*: uint8
    pad0: array[2, uint8]

  XcbInputDeviceCoreStateIterator* {.importc: "xcb_input_device_core_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceCoreState]
    rem*: cint
    index*: cint

  XcbInputDeviceEnableState* {.importc: "xcb_input_device_enable_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    enable*: uint8
    pad0: array[3, uint8]

  XcbInputDeviceEnableStateIterator* {.importc: "xcb_input_device_enable_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceEnableState]
    rem*: cint
    index*: cint

  XcbInputDeviceStateResolution* {.bycopy.} = object
    numValuators* {.importc: "num_valuators".}: uint32
    resolutionValues* {.importc: "resolution_values".}: ptr uint32
    resolutionMin* {.importc: "resolution_min".}: ptr uint32
    resolutionMax* {.importc: "resolution_max".}: ptr uint32
  XcbInputDeviceStateCalib* {.bycopy.} = object
    minX* {.importc: "min_x".}: int32
    maxX* {.importc: "max_x".}: int32
    minY* {.importc: "min_y".}: int32
    maxY* {.importc: "max_y".}: int32
    flipX* {.importc: "flip_x".}: uint32
    flipY* {.importc: "flip_y".}: uint32
    rotation*: uint32
    buttonThreshold* {.importc: "button_threshold".}: uint32
  XcbInputDeviceStateCore* {.bycopy.} = object
    status*: uint8
    iscore*: uint8
    pad0: array[2, uint8]
  XcbInputDeviceStateEnable* {.bycopy.} = object
    enable*: uint8
    pad1: array[3, uint8]
  XcbInputDeviceStateArea* {.bycopy.} = object
    offsetX* {.importc: "offset_x".}: uint32
    offsetY* {.importc: "offset_y".}: uint32
    width*: uint32
    height*: uint32
    screen*: uint32
    following*: uint32

  XcbInputDeviceStateData* {.importc: "xcb_input_device_state_data_t", bycopy.} = object
    resolution*: XcbInputDeviceStateResolution
    absCalib* {.importc: "abs_calib".}: XcbInputDeviceStateCalib
    core*: XcbInputDeviceStateCore
    enable*: XcbInputDeviceStateEnable
    absArea* {.importc: "abs_area".}: XcbInputDeviceStateArea

  XcbInputDeviceState* {.importc: "xcb_input_device_state_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16

  XcbInputDeviceStateIterator* {.importc: "xcb_input_device_state_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceState]
    rem*: cint
    index*: cint

  XcbInputGetDeviceControlCookie* {.importc: "xcb_input_get_device_control_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDeviceControlRequest* {.importc: "xcb_input_get_device_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    controlId* {.importc: "control_id".}: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: uint8

  XcbInputGetDeviceControlReply* {.importc: "xcb_input_get_device_control_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputDeviceResolutionCtl* {.importc: "xcb_input_device_resolution_ctl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    firstValuator* {.importc: "first_valuator".}: uint8
    numValuators* {.importc: "num_valuators".}: uint8
    pad0: array[2, uint8]

  XcbInputDeviceResolutionCtlIterator* {.importc: "xcb_input_device_resolution_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceResolutionCtl]
    rem*: cint
    index*: cint

  XcbInputDeviceAbsCalibCtl* {.importc: "xcb_input_device_abs_calib_ctl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    minX* {.importc: "min_x".}: int32
    maxX* {.importc: "max_x".}: int32
    minY* {.importc: "min_y".}: int32
    maxY* {.importc: "max_y".}: int32
    flipX* {.importc: "flip_x".}: uint32
    flipY* {.importc: "flip_y".}: uint32
    rotation*: uint32
    buttonThreshold* {.importc: "button_threshold".}: uint32

  XcbInputDeviceAbsCalibCtlIterator* {.importc: "xcb_input_device_abs_calib_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceAbsCalibCtl]
    rem*: cint
    index*: cint

  XcbInputDeviceAbsAreaCtrl* {.importc: "xcb_input_device_abs_area_ctrl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    offsetX* {.importc: "offset_x".}: uint32
    offsetY* {.importc: "offset_y".}: uint32
    width*: int32
    height*: int32
    screen*: int32
    following*: uint32

  XcbInputDeviceAbsAreaCtrlIterator* {.importc: "xcb_input_device_abs_area_ctrl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceAbsAreaCtrl]
    rem*: cint
    index*: cint

  XcbInputDeviceCoreCtrl* {.importc: "xcb_input_device_core_ctrl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    status*: uint8
    pad0: array[3, uint8]

  XcbInputDeviceCoreCtrlIterator* {.importc: "xcb_input_device_core_ctrl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceCoreCtrl]
    rem*: cint
    index*: cint

  XcbInputDeviceEnableCtrl* {.importc: "xcb_input_device_enable_ctrl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16
    enable*: uint8
    pad0: array[3, uint8]

  XcbInputDeviceEnableCtrlIterator* {.importc: "xcb_input_device_enable_ctrl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceEnableCtrl]
    rem*: cint
    index*: cint

  XcbInputDeviceCtlResolution* {.bycopy.} = object
    firstValuator* {.importc: "first_valuator".}: uint8
    numValuators* {.importc: "num_valuators".}: uint8
    pad0: array[2, uint8]
    resolutionValues* {.importc: "resolution_values".}: ptr uint32
  XcbInputDeviceCtlCalib* {.bycopy.} = object
    minX* {.importc: "min_x".}: int32
    maxX* {.importc: "max_x".}: int32
    minY* {.importc: "min_y".}: int32
    maxY* {.importc: "max_y".}: int32
    flipX* {.importc: "flip_x".}: uint32
    flipY* {.importc: "flip_y".}: uint32
    rotation*: uint32
    buttonThreshold* {.importc: "button_threshold".}: uint32
  XcbInputDeviceCtlCore* {.bycopy.} = object
    status*: uint8
    pad1: array[3, uint8]
  XcbInputDeviceCtlEnable* {.bycopy.} = object
    enable*: uint8
    pad2: array[3, uint8]
  XcbInputDeviceCtlArea* {.bycopy.} = object
    offsetX* {.importc: "offset_x".}: uint32
    offsetY* {.importc: "offset_y".}: uint32
    width*: int32
    height*: int32
    screen*: int32
    following*: uint32

  XcbInputDeviceCtlData* {.importc: "xcb_input_device_ctl_data_t", bycopy.} = object
    resolution*: XcbInputDeviceCtlResolution
    absCalib* {.importc: "abs_calib".}: XcbInputDeviceCtlCalib
    core*: XcbInputDeviceCtlCore
    enable*: XcbInputDeviceCtlEnable
    absArea* {.importc: "abs_area".}: XcbInputDeviceCtlArea

  XcbInputDeviceCtl* {.importc: "xcb_input_device_ctl_t", bycopy.} = object
    controlId* {.importc: "control_id".}: uint16
    len*: uint16

  XcbInputDeviceCtlIterator* {.importc: "xcb_input_device_ctl_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceCtl]
    rem*: cint
    index*: cint

  XcbInputChangeDeviceControlCookie* {.importc: "xcb_input_change_device_control_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputChangeDeviceControlRequest* {.importc: "xcb_input_change_device_control_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    controlId* {.importc: "control_id".}: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: uint8

  XcbInputChangeDeviceControlReply* {.importc: "xcb_input_change_device_control_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad0: array[23, uint8]

  XcbInputListDevicePropertiesCookie* {.importc: "xcb_input_list_device_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputListDevicePropertiesRequest* {.importc: "xcb_input_list_device_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputListDevicePropertiesReply* {.importc: "xcb_input_list_device_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    numAtoms* {.importc: "num_atoms".}: uint16
    pad0: array[22, uint8]

  XcbInputPropertyFormat* {.importc: "xcb_input_property_format_t".} = enum
    xcbInputPropertyFormat8Bits = 8, xcbInputPropertyFormat16Bits = 16,
    xcbInputPropertyFormat32Bits = 32

  XcbInputChangeDevicePropertyItems* {.importc: "xcb_input_change_device_property_items_t", bycopy.} = object
    data8*: ptr uint8
    data16*: ptr uint16
    data32*: ptr uint32

  XcbInputChangeDevicePropertyRequest* {.importc: "xcb_input_change_device_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    property*: XcbAtom
    `type`*: XcbAtom
    deviceId* {.importc: "device_id".}: uint8
    format*: uint8
    mode*: uint8
    pad0: uint8
    numItems* {.importc: "num_items".}: uint32

  XcbInputDeleteDevicePropertyRequest* {.importc: "xcb_input_delete_device_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    property*: XcbAtom
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[3, uint8]

  XcbInputGetDevicePropertyCookie* {.importc: "xcb_input_get_device_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputGetDevicePropertyRequest* {.importc: "xcb_input_get_device_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    property*: XcbAtom
    `type`*: XcbAtom
    offset*: uint32
    len*: uint32
    deviceId* {.importc: "device_id".}: uint8
    delete*: uint8
    pad0: array[2, uint8]

  XcbInputGetDevicePropertyItems* {.importc: "xcb_input_get_device_property_items_t", bycopy.} = object
    data8*: ptr uint8
    data16*: ptr uint16
    data32*: ptr uint32

  XcbInputGetDevicePropertyReply* {.importc: "xcb_input_get_device_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xiReplyType* {.importc: "xi_reply_type".}: uint8
    sequence*: uint16
    length*: uint32
    `type`*: XcbAtom
    bytesAfter* {.importc: "bytes_after".}: uint32
    numItems* {.importc: "num_items".}: uint32
    format*: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[10, uint8]

  XcbInputDevice* {.importc: "xcb_input_device_t".} = enum
    xcbInputDeviceAll = 0, xcbInputDeviceAllMaster = 1

  XcbInputGroupInfo* {.importc: "xcb_input_group_info_t", bycopy.} = object
    base*: uint8
    latched*: uint8
    locked*: uint8
    effective*: uint8

  XcbInputGroupInfoIterator* {.importc: "xcb_input_group_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputGroupInfo]
    rem*: cint
    index*: cint

  XcbInputModifierInfo* {.importc: "xcb_input_modifier_info_t", bycopy.} = object
    base*: uint32
    latched*: uint32
    locked*: uint32
    effective*: uint32

  XcbInputModifierInfoIterator* {.importc: "xcb_input_modifier_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputModifierInfo]
    rem*: cint
    index*: cint

  XcbInputXiQueryPointerCookie* {.importc: "xcb_input_xi_query_pointer_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiQueryPointerRequest* {.importc: "xcb_input_xi_query_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiQueryPointerReply* {.importc: "xcb_input_xi_query_pointer_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow
    child*: XcbWindow
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    winX* {.importc: "win_x".}: XcbInputFp1616
    winY* {.importc: "win_y".}: XcbInputFp1616
    sameScreen* {.importc: "same_screen".}: uint8
    pad1: uint8
    buttonsLen* {.importc: "buttons_len".}: uint16
    mods*: XcbInputModifierInfo
    group*: XcbInputGroupInfo

  XcbInputXiWarpPointerRequest* {.importc: "xcb_input_xi_warp_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    srcWin* {.importc: "src_win".}: XcbWindow
    dstWin* {.importc: "dst_win".}: XcbWindow
    srcX* {.importc: "src_x".}: XcbInputFp1616
    srcY* {.importc: "src_y".}: XcbInputFp1616
    srcWidth* {.importc: "src_width".}: uint16
    srcHeight* {.importc: "src_height".}: uint16
    dstX* {.importc: "dst_x".}: XcbInputFp1616
    dstY* {.importc: "dst_y".}: XcbInputFp1616
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiChangeCursorRequest* {.importc: "xcb_input_xi_change_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    cursor*: XcbCursor
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputHierarchyChangeType* {.importc: "xcb_input_hierarchy_change_type_t".} = enum
    xcbInputHierarchyChangeTypeAddMaster = 1,
    xcbInputHierarchyChangeTypeRemoveMaster = 2,
    xcbInputHierarchyChangeTypeAttachSlave = 3,
    xcbInputHierarchyChangeTypeDetachSlave = 4

  XcbInputChangeMode* {.importc: "xcb_input_change_mode_t".} = enum
    xcbInputChangeModeAttach = 1, xcbInputChangeModeFloat = 2

  XcbInputAddMaster* {.importc: "xcb_input_add_master_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    nameLen* {.importc: "name_len".}: uint16
    sendCore* {.importc: "send_core".}: uint8
    enable*: uint8

  XcbInputAddMasterIterator* {.importc: "xcb_input_add_master_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputAddMaster]
    rem*: cint
    index*: cint

  XcbInputRemoveMaster* {.importc: "xcb_input_remove_master_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    deviceid*: XcbInputDeviceId
    returnMode* {.importc: "return_mode".}: uint8
    pad0: uint8
    returnPointer* {.importc: "return_pointer".}: XcbInputDeviceId
    returnKeyboard* {.importc: "return_keyboard".}: XcbInputDeviceId

  XcbInputRemoveMasterIterator* {.importc: "xcb_input_remove_master_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputRemoveMaster]
    rem*: cint
    index*: cint

  XcbInputAttachSlave* {.importc: "xcb_input_attach_slave_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    deviceid*: XcbInputDeviceId
    master*: XcbInputDeviceId

  XcbInputAttachSlaveIterator* {.importc: "xcb_input_attach_slave_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputAttachSlave]
    rem*: cint
    index*: cint

  XcbInputDetachSlave* {.importc: "xcb_input_detach_slave_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputDetachSlaveIterator* {.importc: "xcb_input_detach_slave_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDetachSlave]
    rem*: cint
    index*: cint

  XcbInputHierarchyChangeAdd* {.bycopy.} = object
    nameLen* {.importc: "name_len".}: uint16
    sendCore* {.importc: "send_core".}: uint8
    enable*: uint8
    name*: cstring
  XcbInputHierarchyChangeRemove* {.bycopy.} = object
    deviceid*: XcbInputDeviceId
    returnMode* {.importc: "return_mode".}: uint8
    pad1: uint8
    returnPointer* {.importc: "return_pointer".}: XcbInputDeviceId
    returnKeyboard* {.importc: "return_keyboard".}: XcbInputDeviceId
  XcbInputHierarchyChangeAttach* {.bycopy.} = object
    deviceid*: XcbInputDeviceId
    master*: XcbInputDeviceId
  XcbInputHierarchyChangeDetach* {.bycopy.} = object
    deviceid*: XcbInputDeviceId
    pad2: array[2, uint8]

  XcbInputHierarchyChangeData* {.importc: "xcb_input_hierarchy_change_data_t", bycopy.} = object
    addMaster* {.importc: "add_master".}: XcbInputHierarchyChangeAdd
    removeMaster* {.importc: "remove_master".}: XcbInputHierarchyChangeRemove
    attachSlave* {.importc: "attach_slave".}: XcbInputHierarchyChangeAttach
    detachSlave* {.importc: "detach_slave".}: XcbInputHierarchyChangeDetach

  XcbInputHierarchyChange* {.importc: "xcb_input_hierarchy_change_t", bycopy.} = object
    `type`*: uint16
    len*: uint16

  XcbInputHierarchyChangeIterator* {.importc: "xcb_input_hierarchy_change_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputHierarchyChange]
    rem*: cint
    index*: cint

  XcbInputXiChangeHierarchyRequest* {.importc: "xcb_input_xi_change_hierarchy_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    numChanges* {.importc: "num_changes".}: uint8
    pad0: array[3, uint8]

  XcbInputXiSetClientPointerRequest* {.importc: "xcb_input_xi_set_client_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiGetClientPointerCookie* {.importc: "xcb_input_xi_get_client_pointer_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiGetClientPointerRequest* {.importc: "xcb_input_xi_get_client_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbInputXiGetClientPointerReply* {.importc: "xcb_input_xi_get_client_pointer_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    set*: uint8
    pad1: uint8
    deviceid*: XcbInputDeviceId
    pad2: array[20, uint8]

  XcbInputXiEventMask* {.importc: "xcb_input_xi_event_mask_t".} = enum
    xcbInputXiEventMaskDeviceChanged = 2,
    xcbInputXiEventMaskKeyPress = 4, xcbInputXiEventMaskKeyRelease = 8,
    xcbInputXiEventMaskButtonPress = 16,
    xcbInputXiEventMaskButtonRelease = 32,
    xcbInputXiEventMaskMotion = 64, xcbInputXiEventMaskEnter = 128,
    xcbInputXiEventMaskLeave = 256, xcbInputXiEventMaskFocusIn = 512,
    xcbInputXiEventMaskFocusOut = 1024,
    xcbInputXiEventMaskHierarchy = 2048,
    xcbInputXiEventMaskProperty = 4096,
    xcbInputXiEventMaskRawKeyPress = 8192,
    xcbInputXiEventMaskRawKeyRelease = 16384,
    xcbInputXiEventMaskRawButtonPress = 32768,
    xcbInputXiEventMaskRawButtonRelease = 65536,
    xcbInputXiEventMaskRawMotion = 131072,
    xcbInputXiEventMaskTouchBegin = 262144,
    xcbInputXiEventMaskTouchUpdate = 524288,
    xcbInputXiEventMaskTouchEnd = 1048576,
    xcbInputXiEventMaskTouchOwnership = 2097152,
    xcbInputXiEventMaskRawTouchBegin = 4194304,
    xcbInputXiEventMaskRawTouchUpdate = 8388608,
    xcbInputXiEventMaskRawTouchEnd = 16777216,
    xcbInputXiEventMaskBarrierHit = 33554432,
    xcbInputXiEventMaskBarrierLeave = 67108864

  XcbInputEventMask* {.importc: "xcb_input_event_mask_t", bycopy.} = object
    deviceid*: XcbInputDeviceId
    maskLen* {.importc: "mask_len".}: uint16

  XcbInputEventMaskIterator* {.importc: "xcb_input_event_mask_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputEventMask]
    rem*: cint
    index*: cint

  XcbInputXiSelectEventsRequest* {.importc: "xcb_input_xi_select_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    numMask* {.importc: "num_mask".}: uint16
    pad0: array[2, uint8]

  XcbInputXiQueryVersionCookie* {.importc: "xcb_input_xi_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiQueryVersionRequest* {.importc: "xcb_input_xi_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16

  XcbInputXiQueryVersionReply* {.importc: "xcb_input_xi_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16
    pad1: array[20, uint8]

  XcbInputDeviceClassType* {.importc: "xcb_input_device_class_type_t".} = enum
    xcbInputDeviceClassTypeKey = 0, xcbInputDeviceClassTypeButton = 1,
    xcbInputDeviceClassTypeValuator = 2,
    xcbInputDeviceClassTypeScroll = 3, xcbInputDeviceClassTypeTouch = 8

  XcbInputDeviceType* {.importc: "xcb_input_device_type_t".} = enum
    xcbInputDeviceTypeMasterPointer = 1,
    xcbInputDeviceTypeMasterKeyboard = 2,
    xcbInputDeviceTypeSlavePointer = 3,
    xcbInputDeviceTypeSlaveKeyboard = 4,
    xcbInputDeviceTypeFloatingSlave = 5

  XcbInputScrollFlags* {.importc: "xcb_input_scroll_flags_t".} = enum
    xcbInputScrollFlagsNoEmulation = 1, xcbInputScrollFlagsPreferred = 2

  XcbInputScrollType* {.importc: "xcb_input_scroll_type_t".} = enum
    xcbInputScrollTypeVertical = 1, xcbInputScrollTypeHorizontal = 2

  XcbInputTouchMode* {.importc: "xcb_input_touch_mode_t".} = enum
    xcbInputTouchModeDirect = 1, xcbInputTouchModeDependent = 2

  XcbInputButtonClass* {.importc: "xcb_input_button_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId
    numButtons* {.importc: "num_buttons".}: uint16

  XcbInputButtonClassIterator* {.importc: "xcb_input_button_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputButtonClass]
    rem*: cint
    index*: cint

  XcbInputKeyClass* {.importc: "xcb_input_key_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId
    numKeys* {.importc: "num_keys".}: uint16

  XcbInputKeyClassIterator* {.importc: "xcb_input_key_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputKeyClass]
    rem*: cint
    index*: cint

  XcbInputScrollClass* {.importc: "xcb_input_scroll_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId
    number*: uint16
    scrollType* {.importc: "scroll_type".}: uint16
    pad0: array[2, uint8]
    flags*: uint32
    increment*: XcbInputFp3232

  XcbInputScrollClassIterator* {.importc: "xcb_input_scroll_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputScrollClass]
    rem*: cint
    index*: cint

  XcbInputTouchClass* {.importc: "xcb_input_touch_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId
    mode*: uint8
    numTouches* {.importc: "num_touches".}: uint8

  XcbInputTouchClassIterator* {.importc: "xcb_input_touch_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputTouchClass]
    rem*: cint
    index*: cint

  XcbInputValuatorClass* {.importc: "xcb_input_valuator_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId
    number*: uint16
    label*: XcbAtom
    min*: XcbInputFp3232
    max*: XcbInputFp3232
    value*: XcbInputFp3232
    resolution*: uint32
    mode*: uint8
    pad0: array[3, uint8]

  XcbInputValuatorClassIterator* {.importc: "xcb_input_valuator_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputValuatorClass]
    rem*: cint
    index*: cint

{.pop.}

type
  XcbInputDeviceClassKey* {.bycopy.} = object
    ## Inner
    numKeys* {.importc: "num_keys".}: uint16
    keys*: ptr uint32
  XcbInputDeviceClassButton* {.bycopy.} = object
    ## Inner
    numButtons* {.importc: "num_buttons".}: uint16
    state*: ptr uint32
    labels*: ptr XcbAtom
  XcbInputDeviceClassValuator* {.bycopy.} = object
    ## Inner
    number*: uint16
    label*: XcbAtom
    min*: XcbInputFp3232
    max*: XcbInputFp3232
    value*: XcbInputFp3232
    resolution*: uint32
    mode*: uint8
    pad0: array[3, uint8]
  XcbInputDeviceClassScroll* {.bycopy.} = object
    ## Inner
    number*: uint16
    scrollType* {.importc: "scroll_type".}: uint16
    pad1: array[2, uint8]
    flags*: uint32
    increment*: XcbInputFp3232
  XcbInputDeviceClassTouch* {.bycopy.} = object
    ## Inner
    mode*: uint8
    numTouches* {.importc: "num_touches".}: uint8

{.push header: "xcb/xinput.h".}

type
  XcbInputDeviceClassData* {.importc: "xcb_input_device_class_data_t", bycopy.} = object
    key*: XcbInputDeviceClass
    button*: XcbInputDeviceClass
    valuator*: XcbInputDeviceClass
    scroll*: XcbInputDeviceClass
    touch*: XcbInputDeviceClass

  XcbInputDeviceClass* {.importc: "xcb_input_device_class_t", bycopy.} = object
    `type`*: uint16
    len*: uint16
    sourceid*: XcbInputDeviceId

  XcbInputDeviceClassIterator* {.importc: "xcb_input_device_class_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputDeviceClass]
    rem*: cint
    index*: cint

  XcbInputXiDeviceInfo* {.importc: "xcb_input_xi_device_info_t", bycopy.} = object
    deviceid*: XcbInputDeviceId
    `type`*: uint16
    attachment*: XcbInputDeviceId
    numClasses* {.importc: "num_classes".}: uint16
    nameLen* {.importc: "name_len".}: uint16
    enabled*: uint8
    pad0: uint8

  XcbInputXiDeviceInfoIterator* {.importc: "xcb_input_xi_device_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputXiDeviceInfo]
    rem*: cint
    index*: cint

  XcbInputXiQueryDeviceCookie* {.importc: "xcb_input_xi_query_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiQueryDeviceRequest* {.importc: "xcb_input_xi_query_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiQueryDeviceReply* {.importc: "xcb_input_xi_query_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numInfos* {.importc: "num_infos".}: uint16
    pad1: array[22, uint8]

  XcbInputXiSetFocusRequest* {.importc: "xcb_input_xi_set_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    time*: XcbTimestamp
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiGetFocusCookie* {.importc: "xcb_input_xi_get_focus_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiGetFocusRequest* {.importc: "xcb_input_xi_get_focus_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiGetFocusReply* {.importc: "xcb_input_xi_get_focus_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    focus*: XcbWindow
    pad1: array[20, uint8]

  XcbInputGrabOwner* {.importc: "xcb_input_grab_owner_t".} = enum
    xcbInputGrabOwnerNoOwner = 0, xcbInputGrabOwnerOwner = 1

  XcbInputXiGrabDeviceCookie* {.importc: "xcb_input_xi_grab_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiGrabDeviceRequest* {.importc: "xcb_input_xi_grab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    time*: XcbTimestamp
    cursor*: XcbCursor
    deviceid*: XcbInputDeviceId
    mode*: uint8
    pairedDeviceMode* {.importc: "paired_device_mode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    pad0: uint8
    maskLen* {.importc: "mask_len".}: uint16

  XcbInputXiGrabDeviceReply* {.importc: "xcb_input_xi_grab_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    status*: uint8
    pad1: array[23, uint8]

  XcbInputXiUngrabDeviceRequest* {.importc: "xcb_input_xi_ungrab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    time*: XcbTimestamp
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputEventMode* {.importc: "xcb_input_event_mode_t".} = enum
    xcbInputEventModeAsyncDevice = 0, xcbInputEventModeSyncDevice = 1,
    xcbInputEventModeReplayDevice = 2,
    xcbInputEventModeAsyncPairedDevice = 3,
    xcbInputEventModeAsyncPair = 4, xcbInputEventModeSyncPair = 5,
    xcbInputEventModeAcceptTouch = 6, xcbInputEventModeRejectTouch = 7

  XcbInputXiAllowEventsRequest* {.importc: "xcb_input_xi_allow_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    time*: XcbTimestamp
    deviceid*: XcbInputDeviceId
    eventMode* {.importc: "event_mode".}: uint8
    pad0: uint8
    touchid*: uint32
    grabWindow* {.importc: "grab_window".}: XcbWindow

  XcbInputGrabMode22* {.importc: "xcb_input_grab_mode22_t".} = enum
    xcbInputGrabMode22Sync = 0, xcbInputGrabMode22Async = 1,
    xcbInputGrabMode22Touch = 2

  XcbInputGrabType* {.importc: "xcb_input_grab_type_t".} = enum
    xcbInputGrabTypeButton = 0, xcbInputGrabTypeKeycode = 1,
    xcbInputGrabTypeEnter = 2, xcbInputGrabTypeFocusIn = 3,
    xcbInputGrabTypeTouchBegin = 4

  XcbInputModifierMask* {.importc: "xcb_input_modifier_mask_t".} = enum
    xcbInputModifierMaskAny = 2147483648'i64

  XcbInputGrabModifierInfo* {.importc: "xcb_input_grab_modifier_info_t", bycopy.} = object
    modifiers*: uint32
    status*: uint8
    pad0: array[3, uint8]

  XcbInputGrabModifierInfoIterator* {.importc: "xcb_input_grab_modifier_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputGrabModifierInfo]
    rem*: cint
    index*: cint

  XcbInputXiPassiveGrabDeviceCookie* {.importc: "xcb_input_xi_passive_grab_device_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiPassiveGrabDeviceRequest* {.importc: "xcb_input_xi_passive_grab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    time*: XcbTimestamp
    grabWindow* {.importc: "grab_window".}: XcbWindow
    cursor*: XcbCursor
    detail*: uint32
    deviceid*: XcbInputDeviceId
    numModifiers* {.importc: "num_modifiers".}: uint16
    maskLen* {.importc: "mask_len".}: uint16
    grabType* {.importc: "grab_type".}: uint8
    grabMode* {.importc: "grab_mode".}: uint8
    pairedDeviceMode* {.importc: "paired_device_mode".}: uint8
    ownerEvents* {.importc: "owner_events".}: uint8
    pad0: array[2, uint8]

  XcbInputXiPassiveGrabDeviceReply* {.importc: "xcb_input_xi_passive_grab_device_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numModifiers* {.importc: "num_modifiers".}: uint16
    pad1: array[22, uint8]

  XcbInputXiPassiveUngrabDeviceRequest* {.importc: "xcb_input_xi_passive_ungrab_device_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    grabWindow* {.importc: "grab_window".}: XcbWindow
    detail*: uint32
    deviceid*: XcbInputDeviceId
    numModifiers* {.importc: "num_modifiers".}: uint16
    grabType* {.importc: "grab_type".}: uint8
    pad0: array[3, uint8]

  XcbInputXiListPropertiesCookie* {.importc: "xcb_input_xi_list_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiListPropertiesRequest* {.importc: "xcb_input_xi_list_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]

  XcbInputXiListPropertiesReply* {.importc: "xcb_input_xi_list_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numProperties* {.importc: "num_properties".}: uint16
    pad1: array[22, uint8]

  XcbInputXiChangePropertyItems* {.importc: "xcb_input_xi_change_property_items_t", bycopy.} = object
    data8*: ptr uint8
    data16*: ptr uint16
    data32*: ptr uint32

  XcbInputXiChangePropertyRequest* {.importc: "xcb_input_xi_change_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    mode*: uint8
    format*: uint8
    property*: XcbAtom
    `type`*: XcbAtom
    numItems* {.importc: "num_items".}: uint32

  XcbInputXiDeletePropertyRequest* {.importc: "xcb_input_xi_delete_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    property*: XcbAtom

  XcbInputXiGetPropertyCookie* {.importc: "xcb_input_xi_get_property_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiGetPropertyRequest* {.importc: "xcb_input_xi_get_property_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceid*: XcbInputDeviceId
    delete*: uint8
    pad0: uint8
    property*: XcbAtom
    `type`*: XcbAtom
    offset*: uint32
    len*: uint32

  XcbInputXiGetPropertyItems* {.importc: "xcb_input_xi_get_property_items_t", bycopy.} = object
    data8*: ptr uint8
    data16*: ptr uint16
    data32*: ptr uint32

  XcbInputXiGetPropertyReply* {.importc: "xcb_input_xi_get_property_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    `type`*: XcbAtom
    bytesAfter* {.importc: "bytes_after".}: uint32
    numItems* {.importc: "num_items".}: uint32
    format*: uint8
    pad1: array[11, uint8]

  XcbInputXiGetSelectedEventsCookie* {.importc: "xcb_input_xi_get_selected_events_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbInputXiGetSelectedEventsRequest* {.importc: "xcb_input_xi_get_selected_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbInputXiGetSelectedEventsReply* {.importc: "xcb_input_xi_get_selected_events_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numMasks* {.importc: "num_masks".}: uint16
    pad1: array[22, uint8]

  XcbInputBarrierReleasePointerInfo* {.importc: "xcb_input_barrier_release_pointer_info_t", bycopy.} = object
    deviceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    barrier*: XcbXfixesBarrier
    eventid*: uint32

  XcbInputBarrierReleasePointerInfoIterator* {.importc: "xcb_input_barrier_release_pointer_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputBarrierReleasePointerInfo]
    rem*: cint
    index*: cint

  XcbInputXiBarrierReleasePointerRequest* {.importc: "xcb_input_xi_barrier_release_pointer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    numBarriers* {.importc: "num_barriers".}: uint32

  XcbInputDeviceValuatorEvent* {.importc: "xcb_input_device_valuator_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    deviceState* {.importc: "device_state".}: uint16
    numValuators* {.importc: "num_valuators".}: uint8
    firstValuator* {.importc: "first_valuator".}: uint8
    valuators*: array[6, int32]

  XcbInputMoreEventsMask* {.importc: "xcb_input_more_events_mask_t".} = enum
    xcbInputMoreEventsMaskMoreEvents = 128

  XcbInputDeviceKeyPressEvent* {.importc: "xcb_input_device_key_press_event_t", bycopy.} = object
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
    deviceId* {.importc: "device_id".}: uint8

  XcbInputDeviceFocusInEvent* {.importc: "xcb_input_device_focus_in_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    window*: XcbWindow
    mode*: uint8
    deviceId* {.importc: "device_id".}: uint8
    pad0: array[18, uint8]

  XcbInputClassesReportedMask* {.importc: "xcb_input_classes_reported_mask_t".} = enum
    xcbInputClassesReportedMaskReportingKeys = 1,
    xcbInputClassesReportedMaskReportingButtons = 2,
    xcbInputClassesReportedMaskReportingValuators = 4,
    xcbInputClassesReportedMaskDeviceModeAbsolute = 64,
    xcbInputClassesReportedMaskOutOfProximity = 128

  XcbInputDeviceStateNotifyEvent* {.importc: "xcb_input_device_state_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    time*: XcbTimestamp
    numKeys* {.importc: "num_keys".}: uint8
    numButtons* {.importc: "num_buttons".}: uint8
    numValuators* {.importc: "num_valuators".}: uint8
    classesReported* {.importc: "classes_reported".}: uint8
    buttons*: array[4, uint8]
    keys*: array[4, uint8]
    valuators*: array[3, uint32]

  XcbInputDeviceMappingNotifyEvent* {.importc: "xcb_input_device_mapping_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    request*: uint8
    firstKeycode* {.importc: "first_keycode".}: XcbInputKeyCode
    count*: uint8
    pad0: uint8
    time*: XcbTimestamp
    pad1: array[20, uint8]

  XcbInputChangeDevice* {.importc: "xcb_input_change_device_t".} = enum
    xcbInputChangeDeviceNewPointer = 0,
    xcbInputChangeDeviceNewKeyboard = 1

  XcbInputChangeDeviceNotifyEvent* {.importc: "xcb_input_change_device_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    time*: XcbTimestamp
    request*: uint8
    pad0: array[23, uint8]

  XcbInputDeviceKeyStateNotifyEvent* {.importc: "xcb_input_device_key_state_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    keys*: array[28, uint8]

  XcbInputDeviceButtonStateNotifyEvent* {.importc: "xcb_input_device_button_state_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceId* {.importc: "device_id".}: uint8
    sequence*: uint16
    buttons*: array[28, uint8]

  XcbInputDeviceChange* {.importc: "xcb_input_device_change_t".} = enum
    xcbInputDeviceChangeAdded = 0, xcbInputDeviceChangeRemoved = 1,
    xcbInputDeviceChangeEnabled = 2, xcbInputDeviceChangeDisabled = 3,
    xcbInputDeviceChangeUnrecoverable = 4,
    xcbInputDeviceChangeControlChanged = 5

  XcbInputDevicePresenceNotifyEvent* {.importc: "xcb_input_device_presence_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    time*: XcbTimestamp
    devchange*: uint8
    deviceId* {.importc: "device_id".}: uint8
    control*: uint16
    pad1: array[20, uint8]

  XcbInputDevicePropertyNotifyEvent* {.importc: "xcb_input_device_property_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    state*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    property*: XcbAtom
    pad0: array[19, uint8]
    deviceId* {.importc: "device_id".}: uint8

  XcbInputChangeReason* {.importc: "xcb_input_change_reason_t".} = enum
    xcbInputChangeReasonSlaveSwitch = 1,
    xcbInputChangeReasonDeviceChange = 2

  XcbInputDeviceChangedEvent* {.importc: "xcb_input_device_changed_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    numClasses* {.importc: "num_classes".}: uint16
    sourceid*: XcbInputDeviceId
    reason*: uint8
    pad0: array[11, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputKeyEventFlags* {.importc: "xcb_input_key_event_flags_t".} = enum
    xcbInputKeyEventFlagsKeyRepeat = 65536

  XcbInputKeyPressEvent* {.importc: "xcb_input_key_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    fullSequence* {.importc: "full_sequence".}: uint32
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    eventX* {.importc: "event_x".}: XcbInputFp1616
    eventY* {.importc: "event_y".}: XcbInputFp1616
    buttonsLen* {.importc: "buttons_len".}: uint16
    valuatorsLen* {.importc: "valuators_len".}: uint16
    sourceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    flags*: uint32
    mods*: XcbInputModifierInfo
    group*: XcbInputGroupInfo

  XcbInputPointerEventFlags* {.importc: "xcb_input_pointer_event_flags_t".} = enum
    xcbInputPointerEventFlagsPointerEmulated = 65536

  XcbInputButtonPressEvent* {.importc: "xcb_input_button_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    fullSequence* {.importc: "full_sequence".}: uint32
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    eventX* {.importc: "event_x".}: XcbInputFp1616
    eventY* {.importc: "event_y".}: XcbInputFp1616
    buttonsLen* {.importc: "buttons_len".}: uint16
    valuatorsLen* {.importc: "valuators_len".}: uint16
    sourceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    flags*: uint32
    mods*: XcbInputModifierInfo
    group*: XcbInputGroupInfo

  XcbInputNotifyMode* {.importc: "xcb_input_notify_mode_t".} = enum
    xcbInputNotifyModeNormal = 0, xcbInputNotifyModeGrab = 1,
    xcbInputNotifyModeUngrab = 2, xcbInputNotifyModeWhileGrabbed = 3,
    xcbInputNotifyModePassiveGrab = 4,
    xcbInputNotifyModePassiveUngrab = 5

  XcbInputNotifyDetail* {.importc: "xcb_input_notify_detail_t".} = enum
    xcbInputNotifyDetailAncestor = 0, xcbInputNotifyDetailVirtual = 1,
    xcbInputNotifyDetailInferior = 2, xcbInputNotifyDetailNonlinear = 3,
    xcbInputNotifyDetailNonlinearVirtual = 4,
    xcbInputNotifyDetailPointer = 5, xcbInputNotifyDetailPointerRoot = 6,
    xcbInputNotifyDetailNone = 7

  XcbInputEnterEvent* {.importc: "xcb_input_enter_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    sourceid*: XcbInputDeviceId
    mode*: uint8
    detail*: uint8
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    fullSequence* {.importc: "full_sequence".}: uint32
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    eventX* {.importc: "event_x".}: XcbInputFp1616
    eventY* {.importc: "event_y".}: XcbInputFp1616
    sameScreen* {.importc: "same_screen".}: uint8
    focus*: uint8
    buttonsLen* {.importc: "buttons_len".}: uint16
    mods*: XcbInputModifierInfo
    group*: XcbInputGroupInfo

  XcbInputHierarchyMask* {.importc: "xcb_input_hierarchy_mask_t".} = enum
    xcbInputHierarchyMaskMasterAdded = 1,
    xcbInputHierarchyMaskMasterRemoved = 2,
    xcbInputHierarchyMaskSlaveAdded = 4,
    xcbInputHierarchyMaskSlaveRemoved = 8,
    xcbInputHierarchyMaskSlaveAttached = 16,
    xcbInputHierarchyMaskSlaveDetached = 32,
    xcbInputHierarchyMaskDeviceEnabled = 64,
    xcbInputHierarchyMaskDeviceDisabled = 128

  XcbInputHierarchyInfo* {.importc: "xcb_input_hierarchy_info_t", bycopy.} = object
    deviceid*: XcbInputDeviceId
    attachment*: XcbInputDeviceId
    `type`*: uint8
    enabled*: uint8
    pad0: array[2, uint8]
    flags*: uint32

  XcbInputHierarchyInfoIterator* {.importc: "xcb_input_hierarchy_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputHierarchyInfo]
    rem*: cint
    index*: cint

  XcbInputHierarchyEvent* {.importc: "xcb_input_hierarchy_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    flags*: uint32
    numInfos* {.importc: "num_infos".}: uint16
    pad0: array[10, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputPropertyFlag* {.importc: "xcb_input_property_flag_t".} = enum
    xcbInputPropertyFlagDeleted = 0, xcbInputPropertyFlagCreated = 1,
    xcbInputPropertyFlagModified = 2

  XcbInputPropertyEvent* {.importc: "xcb_input_property_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    property*: XcbAtom
    what*: uint8
    pad0: array[11, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputRawKeyPressEvent* {.importc: "xcb_input_raw_key_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    sourceid*: XcbInputDeviceId
    valuatorsLen* {.importc: "valuators_len".}: uint16
    flags*: uint32
    pad0: array[4, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputRawButtonPressEvent* {.importc: "xcb_input_raw_button_press_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    sourceid*: XcbInputDeviceId
    valuatorsLen* {.importc: "valuators_len".}: uint16
    flags*: uint32
    pad0: array[4, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputTouchEventFlags* {.importc: "xcb_input_touch_event_flags_t".} = enum
    xcbInputTouchEventFlagsTouchPendingEnd = 65536,
    xcbInputTouchEventFlagsTouchEmulatingPointer = 131072

  XcbInputTouchBeginEvent* {.importc: "xcb_input_touch_begin_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    fullSequence* {.importc: "full_sequence".}: uint32
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    eventX* {.importc: "event_x".}: XcbInputFp1616
    eventY* {.importc: "event_y".}: XcbInputFp1616
    buttonsLen* {.importc: "buttons_len".}: uint16
    valuatorsLen* {.importc: "valuators_len".}: uint16
    sourceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    flags*: uint32
    mods*: XcbInputModifierInfo
    group*: XcbInputGroupInfo

  XcbInputTouchOwnershipFlags* {.importc: "xcb_input_touch_ownership_flags_t".} = enum
    xcbInputTouchOwnershipFlagsNone = 0

  XcbInputTouchOwnershipEvent* {.importc: "xcb_input_touch_ownership_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    touchid*: uint32
    root*: XcbWindow
    event*: XcbWindow
    child*: XcbWindow
    fullSequence* {.importc: "full_sequence".}: uint32
    sourceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    flags*: uint32
    pad1: array[8, uint8]

  XcbInputRawTouchBeginEvent* {.importc: "xcb_input_raw_touch_begin_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    detail*: uint32
    sourceid*: XcbInputDeviceId
    valuatorsLen* {.importc: "valuators_len".}: uint16
    flags*: uint32
    pad0: array[4, uint8]
    fullSequence* {.importc: "full_sequence".}: uint32

  XcbInputBarrierFlags* {.importc: "xcb_input_barrier_flags_t".} = enum
    xcbInputBarrierFlagsPointerReleased = 1,
    xcbInputBarrierFlagsDeviceIsGrabbed = 2

  XcbInputBarrierHitEvent* {.importc: "xcb_input_barrier_hit_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    extension*: uint8
    sequence*: uint16
    length*: uint32
    eventType* {.importc: "event_type".}: uint16
    deviceid*: XcbInputDeviceId
    time*: XcbTimestamp
    eventid*: uint32
    root*: XcbWindow
    event*: XcbWindow
    barrier*: XcbXfixesBarrier
    fullSequence* {.importc: "full_sequence".}: uint32
    dtime*: uint32
    flags*: uint32
    sourceid*: XcbInputDeviceId
    pad0: array[2, uint8]
    rootX* {.importc: "root_x".}: XcbInputFp1616
    rootY* {.importc: "root_y".}: XcbInputFp1616
    dx*: XcbInputFp3232
    dy*: XcbInputFp3232

  XcbInputEventForSend* {.importc: "xcb_input_event_for_send_t", bycopy, union.} = object
    deviceValuator* {.importc: "device_valuator".}: XcbInputDeviceValuatorEvent
    deviceKeyPress* {.importc: "device_key_press".}: XcbInputDeviceKeyPressEvent
    deviceKeyRelease* {.importc: "device_key_release".}: XcbInputDeviceKeyReleaseEvent
    deviceButtonPress* {.importc: "device_button_press".}: XcbInputDeviceButtonPressEvent
    deviceButtonRelease* {.importc: "device_button_release".}: XcbInputDeviceButtonReleaseEvent
    deviceMotionNotify* {.importc: "device_motion_notify".}: XcbInputDeviceMotionNotifyEvent
    deviceFocusIn* {.importc: "device_focus_in".}: XcbInputDeviceFocusInEvent
    deviceFocusOut* {.importc: "device_focus_out".}: XcbInputDeviceFocusOutEvent
    proximityIn* {.importc: "proximity_in".}: XcbInputProximityInEvent
    proximityOut* {.importc: "proximity_out".}: XcbInputProximityOutEvent
    deviceStateNotify* {.importc: "device_state_notify".}: XcbInputDeviceStateNotifyEvent
    deviceMappingNotify* {.importc: "device_mapping_notify".}: XcbInputDeviceMappingNotifyEvent
    changeDeviceNotify* {.importc: "change_device_notify".}: XcbInputChangeDeviceNotifyEvent
    deviceKeyStateNotify* {.importc: "device_key_state_notify".}: XcbInputDeviceKeyStateNotifyEvent
    deviceButtonStateNotify* {.importc: "device_button_state_notify".}: XcbInputDeviceButtonStateNotifyEvent
    devicePresenceNotify* {.importc: "device_presence_notify".}: XcbInputDevicePresenceNotifyEvent
    eventHeader* {.importc: "event_header".}: XcbRawGenericEvent

  XcbInputEventForSendIterator* {.importc: "xcb_input_event_for_send_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbInputEventForSend]
    rem*: cint
    index*: cint

  XcbInputSendExtensionEventRequest* {.importc: "xcb_input_send_extension_event_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    destination*: XcbWindow
    deviceId* {.importc: "device_id".}: uint8
    propagate*: uint8
    numClasses* {.importc: "num_classes".}: uint16
    numEvents* {.importc: "num_events".}: uint8
    pad0: array[3, uint8]

  XcbInputDeviceError* {.importc: "xcb_input_device_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbInputEventError* {.importc: "xcb_input_event_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbInputModeError* {.importc: "xcb_input_mode_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbInputDeviceBusyError* {.importc: "xcb_input_device_busy_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbInputClassError* {.importc: "xcb_input_class_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbInputDeviceKeyReleaseEvent* {.importc: "xcb_input_device_key_release_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputDeviceButtonPressEvent* {.importc: "xcb_input_device_button_press_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputDeviceButtonReleaseEvent* {.importc: "xcb_input_device_button_release_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputDeviceMotionNotifyEvent* {.importc: "xcb_input_device_motion_notify_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputDeviceFocusOutEvent* {.importc: "xcb_input_device_focus_out_event_t".} = distinct XcbInputDeviceFocusInEvent
  XcbInputProximityInEvent* {.importc: "xcb_input_proximity_in_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputProximityOutEvent* {.importc: "xcb_input_proximity_out_event_t".} = distinct XcbInputDeviceKeyPressEvent
  XcbInputKeyReleaseEvent* {.importc: "xcb_input_key_release_event_t".} = distinct XcbInputKeyPressEvent
  XcbInputButtonReleaseEvent* {.importc: "xcb_input_button_release_event_t".} = distinct XcbInputButtonPressEvent
  XcbInputMotionEvent* {.importc: "xcb_input_motion_event_t".} = distinct XcbInputButtonPressEvent
  XcbInputLeaveEvent* {.importc: "xcb_input_leave_event_t".} = distinct XcbInputEnterEvent
  XcbInputFocusInEvent* {.importc: "xcb_input_focus_in_event_t".} = distinct XcbInputEnterEvent
  XcbInputFocusOutEvent* {.importc: "xcb_input_focus_out_event_t".} = distinct XcbInputEnterEvent
  XcbInputRawKeyReleaseEvent* {.importc: "xcb_input_raw_key_release_event_t".} = distinct XcbInputRawKeyPressEvent
  XcbInputRawButtonReleaseEvent* {.importc: "xcb_input_raw_button_release_event_t".} = distinct XcbInputRawButtonPressEvent
  XcbInputRawMotionEvent* {.importc: "xcb_input_raw_motion_event_t".} = distinct XcbInputRawButtonPressEvent
  XcbInputTouchUpdateEvent* {.importc: "xcb_input_touch_update_event_t".} = distinct XcbInputTouchBeginEvent
  XcbInputTouchEndEvent* {.importc: "xcb_input_touch_end_event_t".} = distinct XcbInputTouchBeginEvent
  XcbInputRawTouchUpdateEvent* {.importc: "xcb_input_raw_touch_update_event_t".} = distinct XcbInputRawTouchBeginEvent
  XcbInputRawTouchEndEvent* {.importc: "xcb_input_raw_touch_end_event_t".} = distinct XcbInputRawTouchBeginEvent
  XcbInputBarrierLeaveEvent* {.importc: "xcb_input_barrier_leave_event_t".} = distinct XcbInputBarrierHitEvent

{.pop.}

const
  xcbInputChangeFeedbackControlMaskString* = xcbInputChangeFeedbackControlMaskKeyClickPercent
  xcbInputChangeFeedbackControlMaskInteger* = xcbInputChangeFeedbackControlMaskKeyClickPercent
  xcbInputChangeFeedbackControlMaskAccelNum* = xcbInputChangeFeedbackControlMaskKeyClickPercent
  xcbInputChangeFeedbackControlMaskAccelDenom* = xcbInputChangeFeedbackControlMaskPercent
  xcbInputChangeFeedbackControlMaskThreshold* = xcbInputChangeFeedbackControlMaskPitch

{.push cdecl, header: "xcb/xinput.h".}

proc info*(R: ptr XcbInputInputInfo): pointer {.importc: "xcb_input_input_info_info".}
proc data*(R: ptr XcbInputFeedbackState): pointer {.importc: "xcb_input_feedback_state_data".}
proc data*(R: ptr XcbInputFeedbackCtl): pointer {.importc: "xcb_input_feedback_ctl_data".}
proc data*(R: ptr XcbInputInputState): pointer {.importc: "xcb_input_input_state_data".}
proc data*(R: ptr XcbInputDeviceState): pointer {.importc: "xcb_input_device_state_data".}
proc data*(R: ptr XcbInputDeviceCtl): pointer {.importc: "xcb_input_device_ctl_data".}
proc data*(R: ptr XcbInputHierarchyChange): pointer {.importc: "xcb_input_hierarchy_change_data".}
proc data*(R: ptr XcbInputDeviceClass): pointer {.importc: "xcb_input_device_class_data".}
proc next*(i: ptr XcbInputEventClassIterator) {.importc: "xcb_input_event_class_next".}
proc iterEnd*(i: XcbInputEventClassIterator): XcbGenericIterator {.importc: "xcb_input_event_class_end".}
proc next*(i: ptr XcbInputKeyCodeIterator) {.importc: "xcb_input_key_code_next".}
proc iterEnd*(i: XcbInputKeyCodeIterator): XcbGenericIterator {.importc: "xcb_input_key_code_end".}
proc next*(i: ptr XcbInputDeviceIdIterator) {.importc: "xcb_input_device_id_next".}
proc iterEnd*(i: XcbInputDeviceIdIterator): XcbGenericIterator {.importc: "xcb_input_device_id_end".}
proc next*(i: ptr XcbInputFp1616Iterator) {.importc: "xcb_input_fp1616_next".}
proc iterEnd*(i: XcbInputFp1616Iterator): XcbGenericIterator {.importc: "xcb_input_fp1616_end".}
proc next*(i: ptr XcbInputFp3232Iterator) {.importc: "xcb_input_fp3232_next".}
proc iterEnd*(i: XcbInputFp3232Iterator): XcbGenericIterator {.importc: "xcb_input_fp3232_end".}
proc getExtensionVersionSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_extension_version_sizeof".}
proc inputGetExtensionVersion*(c: ptr XcbConnection; name_len: uint16; name: cstring): XcbInputGetExtensionVersionCookie {.importc: "xcb_input_get_extension_version".}
proc inputGetExtensionVersionUnchecked*(c: ptr XcbConnection; name_len: uint16; name: cstring): XcbInputGetExtensionVersionCookie {.importc: "xcb_input_get_extension_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetExtensionVersionCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetExtensionVersionReply {.importc: "xcb_input_get_extension_version_reply".}
proc next*(i: ptr XcbInputDeviceInfoIterator) {.importc: "xcb_input_device_info_next".}
proc iterEnd*(i: XcbInputDeviceInfoIterator): XcbGenericIterator {.importc: "xcb_input_device_info_end".}
proc next*(i: ptr XcbInputKeyInfoIterator) {.importc: "xcb_input_key_info_next".}
proc iterEnd*(i: XcbInputKeyInfoIterator): XcbGenericIterator {.importc: "xcb_input_key_info_end".}
proc next*(i: ptr XcbInputButtonInfoIterator) {.importc: "xcb_input_button_info_next".}
proc iterEnd*(i: XcbInputButtonInfoIterator): XcbGenericIterator {.importc: "xcb_input_button_info_end".}
proc next*(i: ptr XcbInputAxisInfoIterator) {.importc: "xcb_input_axis_info_next".}
proc iterEnd*(i: XcbInputAxisInfoIterator): XcbGenericIterator {.importc: "xcb_input_axis_info_end".}
proc valuatorInfoSizeof*(buffer: pointer): cint {.importc: "xcb_input_valuator_info_sizeof".}
proc axes*(R: ptr XcbInputValuatorInfo): ptr UncheckedArray[XcbInputAxisInfo] {.importc: "xcb_input_valuator_info_axes".}
proc axesLength*(R: ptr XcbInputValuatorInfo): cint {.importc: "xcb_input_valuator_info_axes_length".}
proc axesIterator*(R: ptr XcbInputValuatorInfo): XcbInputAxisInfoIterator {.importc: "xcb_input_valuator_info_axes_iterator".}
proc next*(i: ptr XcbInputValuatorInfoIterator) {.importc: "xcb_input_valuator_info_next".}
proc iterEnd*(i: XcbInputValuatorInfoIterator): XcbGenericIterator {.importc: "xcb_input_valuator_info_end".}
proc valuatorAxes*(S: ptr XcbInputInputInfoInfo): ptr UncheckedArray[XcbInputAxisInfo] {.importc: "xcb_input_input_info_info_valuator_axes".}
proc valuatorAxesLength*(R: ptr XcbInputInputInfo; S: ptr XcbInputInputInfoInfo): cint {.importc: "xcb_input_input_info_info_valuator_axes_length".}
proc valuatorAxesIterator*(R: ptr XcbInputInputInfo; S: ptr XcbInputInputInfoInfo): XcbInputAxisInfoIterator {.importc: "xcb_input_input_info_info_valuator_axes_iterator".}
proc serialize*(buffer: ptr pointer; class_id: uint8; aux: ptr XcbInputInputInfoInfo): cint {.importc: "xcb_input_input_info_info_serialize".}
proc unpack*(buffer: pointer; class_id: uint8; aux: ptr XcbInputInputInfoInfo): cint {.importc: "xcb_input_input_info_info_unpack".}
proc inputInfoInfoSizeof*(buffer: pointer; class_id: uint8): cint {.importc: "xcb_input_input_info_info_sizeof".}
proc inputInfoSizeof*(buffer: pointer): cint {.importc: "xcb_input_input_info_sizeof".}
proc next*(i: ptr XcbInputInputInfoIterator) {.importc: "xcb_input_input_info_next".}
proc iterEnd*(i: XcbInputInputInfoIterator): XcbGenericIterator {.importc: "xcb_input_input_info_end".}
proc deviceNameSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_name_sizeof".}
proc inputDeviceNameString*(R: ptr XcbInputDeviceName): ptr UncheckedArray[char] {.importc: "xcb_input_device_name_string".}
proc inputDeviceNameStringLength*(R: ptr XcbInputDeviceName): cint {.importc: "xcb_input_device_name_string_length".}
proc inputDeviceNameStringEnd*(R: ptr XcbInputDeviceName): XcbGenericIterator {.importc: "xcb_input_device_name_string_end".}
proc next*(i: ptr XcbInputDeviceNameIterator) {.importc: "xcb_input_device_name_next".}
proc iterEnd*(i: XcbInputDeviceNameIterator): XcbGenericIterator {.importc: "xcb_input_device_name_end".}
proc listInputDevicesSizeof*(buffer: pointer): cint {.importc: "xcb_input_list_input_devices_sizeof".}
proc listInputDevices*(c: ptr XcbConnection): XcbInputListInputDevicesCookie {.importc: "xcb_input_list_input_devices".}
proc listInputDevicesUnchecked*(c: ptr XcbConnection): XcbInputListInputDevicesCookie {.importc: "xcb_input_list_input_devices_unchecked".}
proc devices*(R: ptr XcbInputListInputDevicesReply): ptr UncheckedArray[XcbInputDeviceInfo] {.importc: "xcb_input_list_input_devices_devices".}
proc devicesLength*(R: ptr XcbInputListInputDevicesReply): cint {.importc: "xcb_input_list_input_devices_devices_length".}
proc devicesIterator*(R: ptr XcbInputListInputDevicesReply): XcbInputDeviceInfoIterator {.importc: "xcb_input_list_input_devices_devices_iterator".}
proc infosLength*(R: ptr XcbInputListInputDevicesReply): cint {.importc: "xcb_input_list_input_devices_infos_length".}
proc infosIterator*(R: ptr XcbInputListInputDevicesReply): XcbInputInputInfoIterator {.importc: "xcb_input_list_input_devices_infos_iterator".}
proc namesLength*(R: ptr XcbInputListInputDevicesReply): cint {.importc: "xcb_input_list_input_devices_names_length".}
proc namesIterator*(R: ptr XcbInputListInputDevicesReply): XcbStrIterator {.importc: "xcb_input_list_input_devices_names_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputListInputDevicesCookie; e: ptr ptr XcbGenericError): ptr XcbInputListInputDevicesReply {.importc: "xcb_input_list_input_devices_reply".}
proc next*(i: ptr XcbInputEventTypeBaseIterator) {.importc: "xcb_input_event_type_base_next".}
proc iterEnd*(i: XcbInputEventTypeBaseIterator): XcbGenericIterator {.importc: "xcb_input_event_type_base_end".}
proc next*(i: ptr XcbInputInputClassInfoIterator) {.importc: "xcb_input_input_class_info_next".}
proc iterEnd*(i: XcbInputInputClassInfoIterator): XcbGenericIterator {.importc: "xcb_input_input_class_info_end".}
proc openDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_open_device_sizeof".}
proc openDevice*(c: ptr XcbConnection; device_id: uint8): XcbInputOpenDeviceCookie {.importc: "xcb_input_open_device".}
proc openDeviceUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputOpenDeviceCookie {.importc: "xcb_input_open_device_unchecked".}
proc classInfo*(R: ptr XcbInputOpenDeviceReply): ptr UncheckedArray[XcbInputInputClassInfo] {.importc: "xcb_input_open_device_class_info".}
proc classInfoLength*(R: ptr XcbInputOpenDeviceReply): cint {.importc: "xcb_input_open_device_class_info_length".}
proc classInfoIterator*(R: ptr XcbInputOpenDeviceReply): XcbInputInputClassInfoIterator {.importc: "xcb_input_open_device_class_info_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputOpenDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputOpenDeviceReply {.importc: "xcb_input_open_device_reply".}
proc closeDeviceChecked*(c: ptr XcbConnection; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_close_device_checked".}
proc closeDevice*(c: ptr XcbConnection; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_close_device".}
proc setDeviceMode*(c: ptr XcbConnection; device_id: uint8; mode: uint8): XcbInputSetDeviceModeCookie {.importc: "xcb_input_set_device_mode".}
proc setDeviceModeUnchecked*(c: ptr XcbConnection; device_id: uint8; mode: uint8): XcbInputSetDeviceModeCookie {.importc: "xcb_input_set_device_mode_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputSetDeviceModeCookie; e: ptr ptr XcbGenericError): ptr XcbInputSetDeviceModeReply {.importc: "xcb_input_set_device_mode_reply".}
proc selectExtensionEventSizeof*(buffer: pointer): cint {.importc: "xcb_input_select_extension_event_sizeof".}
proc selectExtensionEventChecked*(c: ptr XcbConnection; window: XcbWindow; num_classes: uint16; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_select_extension_event_checked".}
proc selectExtensionEvent*(c: ptr XcbConnection; window: XcbWindow; num_classes: uint16; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_select_extension_event".}
proc classes*(R: ptr XcbInputSelectExtensionEventRequest): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_select_extension_event_classes".}
proc classesLength*(R: ptr XcbInputSelectExtensionEventRequest): cint {.importc: "xcb_input_select_extension_event_classes_length".}
proc classesEnd*(R: ptr XcbInputSelectExtensionEventRequest): XcbGenericIterator {.importc: "xcb_input_select_extension_event_classes_end".}
proc getSelectedExtensionEventsSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_selected_extension_events_sizeof".}
proc getSelectedExtensionEvents*(c: ptr XcbConnection; window: XcbWindow): XcbInputGetSelectedExtensionEventsCookie {.importc: "xcb_input_get_selected_extension_events".}
proc getSelectedExtensionEventsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbInputGetSelectedExtensionEventsCookie {.importc: "xcb_input_get_selected_extension_events_unchecked".}
proc thisClasses*(R: ptr XcbInputGetSelectedExtensionEventsReply): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_get_selected_extension_events_this_classes".}
proc thisClassesLength*(R: ptr XcbInputGetSelectedExtensionEventsReply): cint {.importc: "xcb_input_get_selected_extension_events_this_classes_length".}
proc thisClassesEnd*(R: ptr XcbInputGetSelectedExtensionEventsReply): XcbGenericIterator {.importc: "xcb_input_get_selected_extension_events_this_classes_end".}
proc allClasses*(R: ptr XcbInputGetSelectedExtensionEventsReply): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_get_selected_extension_events_all_classes".}
proc allClassesLength*(R: ptr XcbInputGetSelectedExtensionEventsReply): cint {.importc: "xcb_input_get_selected_extension_events_all_classes_length".}
proc allClassesEnd*(R: ptr XcbInputGetSelectedExtensionEventsReply): XcbGenericIterator {.importc: "xcb_input_get_selected_extension_events_all_classes_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetSelectedExtensionEventsCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetSelectedExtensionEventsReply {.importc: "xcb_input_get_selected_extension_events_reply".}
proc changeDeviceDontPropagateListSizeof*(buffer: pointer): cint {.importc: "xcb_input_change_device_dont_propagate_list_sizeof".}
proc changeDeviceDontPropagateListChecked*(c: ptr XcbConnection; window: XcbWindow; num_classes: uint16; mode: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_dont_propagate_list_checked".}
proc changeDeviceDontPropagateList*(c: ptr XcbConnection; window: XcbWindow; num_classes: uint16; mode: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_dont_propagate_list".}
proc classes*(R: ptr XcbInputChangeDeviceDontPropagateListRequest): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_change_device_dont_propagate_list_classes".}
proc classesLength*(R: ptr XcbInputChangeDeviceDontPropagateListRequest): cint {.importc: "xcb_input_change_device_dont_propagate_list_classes_length".}
proc classesEnd*(R: ptr XcbInputChangeDeviceDontPropagateListRequest): XcbGenericIterator {.importc: "xcb_input_change_device_dont_propagate_list_classes_end".}
proc getDeviceDontPropagateListSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_dont_propagate_list_sizeof".}
proc getDeviceDontPropagateList*(c: ptr XcbConnection; window: XcbWindow): XcbInputGetDeviceDontPropagateListCookie {.importc: "xcb_input_get_device_dont_propagate_list".}
proc getDeviceDontPropagateListUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbInputGetDeviceDontPropagateListCookie {.importc: "xcb_input_get_device_dont_propagate_list_unchecked".}
proc classes*(R: ptr XcbInputGetDeviceDontPropagateListReply): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_get_device_dont_propagate_list_classes".}
proc classesLength*(R: ptr XcbInputGetDeviceDontPropagateListReply): cint {.importc: "xcb_input_get_device_dont_propagate_list_classes_length".}
proc classesEnd*(R: ptr XcbInputGetDeviceDontPropagateListReply): XcbGenericIterator {.importc: "xcb_input_get_device_dont_propagate_list_classes_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceDontPropagateListCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceDontPropagateListReply {.importc: "xcb_input_get_device_dont_propagate_list_reply".}
proc deviceTimeCoordSizeof*(buffer: pointer; num_axes: uint8): cint {.importc: "xcb_input_device_time_coord_sizeof".}
proc axisValues*(R: ptr XcbInputDeviceTimeCoord): ptr UncheckedArray[int32] {.importc: "xcb_input_device_time_coord_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputDeviceTimeCoord; num_axes: uint8): cint {.importc: "xcb_input_device_time_coord_axisvalues_length".}
proc axisValuesEnd*(R: ptr XcbInputDeviceTimeCoord; num_axes: uint8): XcbGenericIterator {.importc: "xcb_input_device_time_coord_axisvalues_end".}
proc next*(i: ptr XcbInputDeviceTimeCoordIterator) {.importc: "xcb_input_device_time_coord_next".}
proc iterEnd*(i: XcbInputDeviceTimeCoordIterator): XcbGenericIterator {.importc: "xcb_input_device_time_coord_end".}
proc getDeviceMotionEventsSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_motion_events_sizeof".}
proc getDeviceMotionEvents*(c: ptr XcbConnection; start: XcbTimestamp; stop: XcbTimestamp; device_id: uint8): XcbInputGetDeviceMotionEventsCookie {.importc: "xcb_input_get_device_motion_events".}
proc getDeviceMotionEventsUnchecked*(c: ptr XcbConnection; start: XcbTimestamp; stop: XcbTimestamp; device_id: uint8): XcbInputGetDeviceMotionEventsCookie {.importc: "xcb_input_get_device_motion_events_unchecked".}
proc eventsLength*(R: ptr XcbInputGetDeviceMotionEventsReply): cint {.importc: "xcb_input_get_device_motion_events_events_length".}
proc eventsIterator*(R: ptr XcbInputGetDeviceMotionEventsReply): XcbInputDeviceTimeCoordIterator {.importc: "xcb_input_get_device_motion_events_events_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceMotionEventsCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceMotionEventsReply {.importc: "xcb_input_get_device_motion_events_reply".}
proc changeKeyboardDevice*(c: ptr XcbConnection; device_id: uint8): XcbInputChangeKeyboardDeviceCookie {.importc: "xcb_input_change_keyboard_device".}
proc changeKeyboardDeviceUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputChangeKeyboardDeviceCookie {.importc: "xcb_input_change_keyboard_device_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputChangeKeyboardDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputChangeKeyboardDeviceReply {.importc: "xcb_input_change_keyboard_device_reply".}
proc changePointerDevice*(c: ptr XcbConnection; x_axis: uint8; y_axis: uint8; device_id: uint8): XcbInputChangePointerDeviceCookie {.importc: "xcb_input_change_pointer_device".}
proc changePointerDeviceUnchecked*(c: ptr XcbConnection; x_axis: uint8; y_axis: uint8; device_id: uint8): XcbInputChangePointerDeviceCookie {.importc: "xcb_input_change_pointer_device_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputChangePointerDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputChangePointerDeviceReply {.importc: "xcb_input_change_pointer_device_reply".}
proc grabDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_grab_device_sizeof".}
proc grabDevice*(c: ptr XcbConnection; grab_window: XcbWindow; time: XcbTimestamp; num_classes: uint16; this_device_mode: uint8; other_device_mode: uint8; owner_events: uint8; device_id: uint8; classes: ptr XcbInputEventClass): XcbInputGrabDeviceCookie {.importc: "xcb_input_grab_device".}
proc grabDeviceUnchecked*(c: ptr XcbConnection; grab_window: XcbWindow; time: XcbTimestamp; num_classes: uint16; this_device_mode: uint8; other_device_mode: uint8; owner_events: uint8; device_id: uint8; classes: ptr XcbInputEventClass): XcbInputGrabDeviceCookie {.importc: "xcb_input_grab_device_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGrabDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputGrabDeviceReply {.importc: "xcb_input_grab_device_reply".}
proc ungrabDeviceChecked*(c: ptr XcbConnection; time: XcbTimestamp; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device_checked".}
proc ungrabDevice*(c: ptr XcbConnection; time: XcbTimestamp; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device".}
proc grabDeviceKeySizeof*(buffer: pointer): cint {.importc: "xcb_input_grab_device_key_sizeof".}
proc grabDeviceKeyChecked*(c: ptr XcbConnection; grab_window: XcbWindow; num_classes: uint16; modifiers: uint16; modifier_device: uint8; grabbed_device: uint8; key: uint8; this_device_mode: uint8; other_device_mode: uint8; owner_events: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_grab_device_key_checked".}
proc grabDeviceKey*(c: ptr XcbConnection; grab_window: XcbWindow; num_classes: uint16; modifiers: uint16; modifier_device: uint8; grabbed_device: uint8; key: uint8; this_device_mode: uint8; other_device_mode: uint8; owner_events: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_grab_device_key".}
proc classes*(R: ptr XcbInputGrabDeviceKeyRequest): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_grab_device_key_classes".}
proc classesLength*(R: ptr XcbInputGrabDeviceKeyRequest): cint {.importc: "xcb_input_grab_device_key_classes_length".}
proc classesEnd*(R: ptr XcbInputGrabDeviceKeyRequest): XcbGenericIterator {.importc: "xcb_input_grab_device_key_classes_end".}
proc ungrabDeviceKeyChecked*(c: ptr XcbConnection; grabWindow: XcbWindow; modifiers: uint16; modifier_device: uint8; key: uint8; grabbed_device: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device_key_checked".}
proc ungrabDeviceKey*(c: ptr XcbConnection; grabWindow: XcbWindow; modifiers: uint16; modifier_device: uint8; key: uint8; grabbed_device: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device_key".}
proc grabDeviceButtonSizeof*(buffer: pointer): cint {.importc: "xcb_input_grab_device_button_sizeof".}
proc grabDeviceButtonChecked*(c: ptr XcbConnection; grab_window: XcbWindow; grabbed_device: uint8; modifier_device: uint8; num_classes: uint16; modifiers: uint16; this_device_mode: uint8; other_device_mode: uint8; button: uint8; owner_events: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_grab_device_button_checked".}
proc grabDeviceButton*(c: ptr XcbConnection; grab_window: XcbWindow; grabbed_device: uint8; modifier_device: uint8; num_classes: uint16; modifiers: uint16; this_device_mode: uint8; other_device_mode: uint8; button: uint8; owner_events: uint8; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_grab_device_button".}
proc classes*(R: ptr XcbInputGrabDeviceButtonRequest): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_grab_device_button_classes".}
proc classesLength*(R: ptr XcbInputGrabDeviceButtonRequest): cint {.importc: "xcb_input_grab_device_button_classes_length".}
proc classesEnd*(R: ptr XcbInputGrabDeviceButtonRequest): XcbGenericIterator {.importc: "xcb_input_grab_device_button_classes_end".}
proc ungrabDeviceButtonChecked*(c: ptr XcbConnection; grab_window: XcbWindow; modifiers: uint16; modifier_device: uint8; button: uint8; grabbed_device: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device_button_checked".}
proc ungrabDeviceButton*(c: ptr XcbConnection; grab_window: XcbWindow; modifiers: uint16; modifier_device: uint8; button: uint8; grabbed_device: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_ungrab_device_button".}
proc allowDeviceEventsChecked*(c: ptr XcbConnection; time: XcbTimestamp; mode: uint8; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_allow_device_events_checked".}
proc allowDeviceEvents*(c: ptr XcbConnection; time: XcbTimestamp; mode: uint8; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_allow_device_events".}
proc getDeviceFocus*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceFocusCookie {.importc: "xcb_input_get_device_focus".}
proc getDeviceFocusUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceFocusCookie {.importc: "xcb_input_get_device_focus_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceFocusCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceFocusReply {.importc: "xcb_input_get_device_focus_reply".}
proc setDeviceFocusChecked*(c: ptr XcbConnection; focus: XcbWindow; time: XcbTimestamp; revert_to: uint8; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_set_device_focus_checked".}
proc setDeviceFocus*(c: ptr XcbConnection; focus: XcbWindow; time: XcbTimestamp; revert_to: uint8; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_set_device_focus".}
proc next*(i: ptr XcbInputKbdFeedbackStateIterator) {.importc: "xcb_input_kbd_feedback_state_next".}
proc iterEnd*(i: XcbInputKbdFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_kbd_feedback_state_end".}
proc next*(i: ptr XcbInputPtrFeedbackStateIterator) {.importc: "xcb_input_ptr_feedback_state_next".}
proc iterEnd*(i: XcbInputPtrFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_ptr_feedback_state_end".}
proc next*(i: ptr XcbInputIntegerFeedbackStateIterator) {.importc: "xcb_input_integer_feedback_state_next".}
proc iterEnd*(i: XcbInputIntegerFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_integer_feedback_state_end".}
proc stringFeedbackStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_string_feedback_state_sizeof".}
proc keysyms*(R: ptr XcbInputStringFeedbackState): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_string_feedback_state_keysyms".}
proc keysymsLength*(R: ptr XcbInputStringFeedbackState): cint {.importc: "xcb_input_string_feedback_state_keysyms_length".}
proc keysymsEnd*(R: ptr XcbInputStringFeedbackState): XcbGenericIterator {.importc: "xcb_input_string_feedback_state_keysyms_end".}
proc next*(i: ptr XcbInputStringFeedbackStateIterator) {.importc: "xcb_input_string_feedback_state_next".}
proc iterEnd*(i: XcbInputStringFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_string_feedback_state_end".}
proc next*(i: ptr XcbInputBellFeedbackStateIterator) {.importc: "xcb_input_bell_feedback_state_next".}
proc iterEnd*(i: XcbInputBellFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_bell_feedback_state_end".}
proc next*(i: ptr XcbInputLedFeedbackStateIterator) {.importc: "xcb_input_led_feedback_state_next".}
proc iterEnd*(i: XcbInputLedFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_led_feedback_state_end".}
proc stringKeysyms*(S: ptr XcbInputFeedbackStateData): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_feedback_state_data_string_keysyms".}
proc stringKeysymsLength*(R: ptr XcbInputFeedbackState; S: ptr XcbInputFeedbackStateData): cint {.importc: "xcb_input_feedback_state_data_string_keysyms_length".}
proc stringKeysymsEnd*(R: ptr XcbInputFeedbackState; S: ptr XcbInputFeedbackStateData): XcbGenericIterator {.importc: "xcb_input_feedback_state_data_string_keysyms_end".}
proc serialize*(buffer: ptr pointer; class_id: uint8; aux: ptr XcbInputFeedbackStateData): cint {.importc: "xcb_input_feedback_state_data_serialize".}
proc unpack*(buffer: pointer; class_id: uint8; aux: ptr XcbInputFeedbackStateData): cint {.importc: "xcb_input_feedback_state_data_unpack".}
proc feedbackStateDataSizeof*(buffer: pointer; class_id: uint8): cint {.importc: "xcb_input_feedback_state_data_sizeof".}
proc feedbackStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_feedback_state_sizeof".}
proc next*(i: ptr XcbInputFeedbackStateIterator) {.importc: "xcb_input_feedback_state_next".}
proc iterEnd*(i: XcbInputFeedbackStateIterator): XcbGenericIterator {.importc: "xcb_input_feedback_state_end".}
proc getFeedbackControlSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_feedback_control_sizeof".}
proc getFeedbackControl*(c: ptr XcbConnection; device_id: uint8): XcbInputGetFeedbackControlCookie {.importc: "xcb_input_get_feedback_control".}
proc getFeedbackControlUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputGetFeedbackControlCookie {.importc: "xcb_input_get_feedback_control_unchecked".}
proc feedbacksLength*(R: ptr XcbInputGetFeedbackControlReply): cint {.importc: "xcb_input_get_feedback_control_feedbacks_length".}
proc feedbacksIterator*(R: ptr XcbInputGetFeedbackControlReply): XcbInputFeedbackStateIterator {.importc: "xcb_input_get_feedback_control_feedbacks_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetFeedbackControlCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetFeedbackControlReply {.importc: "xcb_input_get_feedback_control_reply".}
proc next*(i: ptr XcbInputKbdFeedbackCtlIterator) {.importc: "xcb_input_kbd_feedback_ctl_next".}
proc iterEnd*(i: XcbInputKbdFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_kbd_feedback_ctl_end".}
proc next*(i: ptr XcbInputPtrFeedbackCtlIterator) {.importc: "xcb_input_ptr_feedback_ctl_next".}
proc iterEnd*(i: XcbInputPtrFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_ptr_feedback_ctl_end".}
proc next*(i: ptr XcbInputIntegerFeedbackCtlIterator) {.importc: "xcb_input_integer_feedback_ctl_next".}
proc iterEnd*(i: XcbInputIntegerFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_integer_feedback_ctl_end".}
proc stringFeedbackCtlSizeof*(buffer: pointer): cint {.importc: "xcb_input_string_feedback_ctl_sizeof".}
proc keysyms*(R: ptr XcbInputStringFeedbackCtl): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_string_feedback_ctl_keysyms".}
proc keysymsLength*(R: ptr XcbInputStringFeedbackCtl): cint {.importc: "xcb_input_string_feedback_ctl_keysyms_length".}
proc keysymsEnd*(R: ptr XcbInputStringFeedbackCtl): XcbGenericIterator {.importc: "xcb_input_string_feedback_ctl_keysyms_end".}
proc next*(i: ptr XcbInputStringFeedbackCtlIterator) {.importc: "xcb_input_string_feedback_ctl_next".}
proc iterEnd*(i: XcbInputStringFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_string_feedback_ctl_end".}
proc next*(i: ptr XcbInputBellFeedbackCtlIterator) {.importc: "xcb_input_bell_feedback_ctl_next".}
proc iterEnd*(i: XcbInputBellFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_bell_feedback_ctl_end".}
proc next*(i: ptr XcbInputLedFeedbackCtlIterator) {.importc: "xcb_input_led_feedback_ctl_next".}
proc iterEnd*(i: XcbInputLedFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_led_feedback_ctl_end".}
proc stringKeysyms*(S: ptr XcbInputFeedbackCtlData): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_feedback_ctl_data_string_keysyms".}
proc stringKeysymsLength*(R: ptr XcbInputFeedbackCtl; S: ptr XcbInputFeedbackCtlData): cint {.importc: "xcb_input_feedback_ctl_data_string_keysyms_length".}
proc stringKeysymsEnd*(R: ptr XcbInputFeedbackCtl; S: ptr XcbInputFeedbackCtlData): XcbGenericIterator {.importc: "xcb_input_feedback_ctl_data_string_keysyms_end".}
proc serialize*(buffer: ptr pointer; class_id: uint8; aux: ptr XcbInputFeedbackCtlData): cint {.importc: "xcb_input_feedback_ctl_data_serialize".}
proc unpack*(buffer: pointer; class_id: uint8; aux: ptr XcbInputFeedbackCtlData): cint {.importc: "xcb_input_feedback_ctl_data_unpack".}
proc feedbackCtlDataSizeof*(buffer: pointer; class_id: uint8): cint {.importc: "xcb_input_feedback_ctl_data_sizeof".}
proc feedbackCtlSizeof*(buffer: pointer): cint {.importc: "xcb_input_feedback_ctl_sizeof".}
proc next*(i: ptr XcbInputFeedbackCtlIterator) {.importc: "xcb_input_feedback_ctl_next".}
proc iterEnd*(i: XcbInputFeedbackCtlIterator): XcbGenericIterator {.importc: "xcb_input_feedback_ctl_end".}
proc changeFeedbackControlSizeof*(buffer: pointer): cint {.importc: "xcb_input_change_feedback_control_sizeof".}
proc changeFeedbackControlChecked*(c: ptr XcbConnection; mask: uint32; device_id: uint8; feedback_id: uint8; feedback: ptr XcbInputFeedbackCtl): XcbVoidCookie {.discardable, importc: "xcb_input_change_feedback_control_checked".}
proc changeFeedbackControl*(c: ptr XcbConnection; mask: uint32; device_id: uint8; feedback_id: uint8; feedback: ptr XcbInputFeedbackCtl): XcbVoidCookie {.discardable, importc: "xcb_input_change_feedback_control".}
proc changeFeedbackControlFeedback*(R: ptr XcbInputChangeFeedbackControlRequest): ptr XcbInputFeedbackCtl {.importc: "xcb_input_change_feedback_control_feedback".}
proc getDeviceKeyMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_key_mapping_sizeof".}
proc getDeviceKeyMapping*(c: ptr XcbConnection; device_id: uint8; first_keycode: XcbInputKeyCode; count: uint8): XcbInputGetDeviceKeyMappingCookie {.importc: "xcb_input_get_device_key_mapping".}
proc getDeviceKeyMappingUnchecked*(c: ptr XcbConnection; device_id: uint8; first_keycode: XcbInputKeyCode; count: uint8): XcbInputGetDeviceKeyMappingCookie {.importc: "xcb_input_get_device_key_mapping_unchecked".}
proc keysyms*(R: ptr XcbInputGetDeviceKeyMappingReply): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_get_device_key_mapping_keysyms".}
proc keysymsLength*(R: ptr XcbInputGetDeviceKeyMappingReply): cint {.importc: "xcb_input_get_device_key_mapping_keysyms_length".}
proc keysymsEnd*(R: ptr XcbInputGetDeviceKeyMappingReply): XcbGenericIterator {.importc: "xcb_input_get_device_key_mapping_keysyms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceKeyMappingCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceKeyMappingReply {.importc: "xcb_input_get_device_key_mapping_reply".}
proc changeDeviceKeyMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_change_device_key_mapping_sizeof".}
proc changeDeviceKeyMappingChecked*(c: ptr XcbConnection; device_id: uint8; first_keycode: XcbInputKeyCode; keysyms_per_keycode: uint8; keycode_count: uint8; keysyms: ptr XcbKeysym): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_key_mapping_checked".}
proc changeDeviceKeyMapping*(c: ptr XcbConnection; device_id: uint8; first_keycode: XcbInputKeyCode; keysyms_per_keycode: uint8; keycode_count: uint8; keysyms: ptr XcbKeysym): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_key_mapping".}
proc keysyms*(R: ptr XcbInputChangeDeviceKeyMappingRequest): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_input_change_device_key_mapping_keysyms".}
proc keysymsLength*(R: ptr XcbInputChangeDeviceKeyMappingRequest): cint {.importc: "xcb_input_change_device_key_mapping_keysyms_length".}
proc keysymsEnd*(R: ptr XcbInputChangeDeviceKeyMappingRequest): XcbGenericIterator {.importc: "xcb_input_change_device_key_mapping_keysyms_end".}
proc getDeviceModifierMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_modifier_mapping_sizeof".}
proc getDeviceModifierMapping*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceModifierMappingCookie {.importc: "xcb_input_get_device_modifier_mapping".}
proc getDeviceModifierMappingUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceModifierMappingCookie {.importc: "xcb_input_get_device_modifier_mapping_unchecked".}
proc keymaps*(R: ptr XcbInputGetDeviceModifierMappingReply): ptr UncheckedArray[uint8] {.importc: "xcb_input_get_device_modifier_mapping_keymaps".}
proc keymapsLength*(R: ptr XcbInputGetDeviceModifierMappingReply): cint {.importc: "xcb_input_get_device_modifier_mapping_keymaps_length".}
proc keymapsEnd*(R: ptr XcbInputGetDeviceModifierMappingReply): XcbGenericIterator {.importc: "xcb_input_get_device_modifier_mapping_keymaps_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceModifierMappingCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceModifierMappingReply {.importc: "xcb_input_get_device_modifier_mapping_reply".}
proc setDeviceModifierMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_set_device_modifier_mapping_sizeof".}
proc setDeviceModifierMapping*(c: ptr XcbConnection; device_id: uint8; keycodes_per_modifier: uint8; keymaps: ptr uint8): XcbInputSetDeviceModifierMappingCookie {.importc: "xcb_input_set_device_modifier_mapping".}
proc setDeviceModifierMappingUnchecked*(c: ptr XcbConnection; device_id: uint8; keycodes_per_modifier: uint8; keymaps: ptr uint8): XcbInputSetDeviceModifierMappingCookie {.importc: "xcb_input_set_device_modifier_mapping_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputSetDeviceModifierMappingCookie; e: ptr ptr XcbGenericError): ptr XcbInputSetDeviceModifierMappingReply {.importc: "xcb_input_set_device_modifier_mapping_reply".}
proc getDeviceButtonMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_button_mapping_sizeof".}
proc getDeviceButtonMapping*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceButtonMappingCookie {.importc: "xcb_input_get_device_button_mapping".}
proc getDeviceButtonMappingUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputGetDeviceButtonMappingCookie {.importc: "xcb_input_get_device_button_mapping_unchecked".}
proc map*(R: ptr XcbInputGetDeviceButtonMappingReply): ptr UncheckedArray[uint8] {.importc: "xcb_input_get_device_button_mapping_map".}
proc mapLength*(R: ptr XcbInputGetDeviceButtonMappingReply): cint {.importc: "xcb_input_get_device_button_mapping_map_length".}
proc mapEnd*(R: ptr XcbInputGetDeviceButtonMappingReply): XcbGenericIterator {.importc: "xcb_input_get_device_button_mapping_map_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceButtonMappingCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceButtonMappingReply {.importc: "xcb_input_get_device_button_mapping_reply".}
proc setDeviceButtonMappingSizeof*(buffer: pointer): cint {.importc: "xcb_input_set_device_button_mapping_sizeof".}
proc setDeviceButtonMapping*(c: ptr XcbConnection; device_id: uint8; map_size: uint8; map: ptr uint8): XcbInputSetDeviceButtonMappingCookie {.importc: "xcb_input_set_device_button_mapping".}
proc setDeviceButtonMappingUnchecked*(c: ptr XcbConnection; device_id: uint8; map_size: uint8; map: ptr uint8): XcbInputSetDeviceButtonMappingCookie {.importc: "xcb_input_set_device_button_mapping_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputSetDeviceButtonMappingCookie; e: ptr ptr XcbGenericError): ptr XcbInputSetDeviceButtonMappingReply {.importc: "xcb_input_set_device_button_mapping_reply".}
proc next*(i: ptr XcbInputKeyStateIterator) {.importc: "xcb_input_key_state_next".}
proc iterEnd*(i: XcbInputKeyStateIterator): XcbGenericIterator {.importc: "xcb_input_key_state_end".}
proc next*(i: ptr XcbInputButtonStateIterator) {.importc: "xcb_input_button_state_next".}
proc iterEnd*(i: XcbInputButtonStateIterator): XcbGenericIterator {.importc: "xcb_input_button_state_end".}
proc valuatorStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_valuator_state_sizeof".}
proc valuators*(R: ptr XcbInputValuatorState): ptr UncheckedArray[int32] {.importc: "xcb_input_valuator_state_valuators".}
proc valuatorsLength*(R: ptr XcbInputValuatorState): cint {.importc: "xcb_input_valuator_state_valuators_length".}
proc valuatorsEnd*(R: ptr XcbInputValuatorState): XcbGenericIterator {.importc: "xcb_input_valuator_state_valuators_end".}
proc next*(i: ptr XcbInputValuatorStateIterator) {.importc: "xcb_input_valuator_state_next".}
proc iterEnd*(i: XcbInputValuatorStateIterator): XcbGenericIterator {.importc: "xcb_input_valuator_state_end".}
proc valuators*(S: ptr XcbInputInputStateData): ptr UncheckedArray[int32] {.importc: "xcb_input_input_state_data_valuator_valuators".}
proc valuatorsLength*(R: ptr XcbInputInputState; S: ptr XcbInputInputStateData): cint {.importc: "xcb_input_input_state_data_valuator_valuators_length".}
proc valuatorsEnd*(R: ptr XcbInputInputState; S: ptr XcbInputInputStateData): XcbGenericIterator {.importc: "xcb_input_input_state_data_valuator_valuators_end".}
proc serialize*(buffer: ptr pointer; class_id: uint8; aux: ptr XcbInputInputStateData): cint {.importc: "xcb_input_input_state_data_serialize".}
proc unpack*(buffer: pointer; class_id: uint8; aux: ptr XcbInputInputStateData): cint {.importc: "xcb_input_input_state_data_unpack".}
proc inputStateDataSizeof*(buffer: pointer; class_id: uint8): cint {.importc: "xcb_input_input_state_data_sizeof".}
proc inputStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_input_state_sizeof".}
proc next*(i: ptr XcbInputInputStateIterator) {.importc: "xcb_input_input_state_next".}
proc iterEnd*(i: XcbInputInputStateIterator): XcbGenericIterator {.importc: "xcb_input_input_state_end".}
proc queryDeviceStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_query_device_state_sizeof".}
proc queryDeviceState*(c: ptr XcbConnection; device_id: uint8): XcbInputQueryDeviceStateCookie {.importc: "xcb_input_query_device_state".}
proc queryDeviceStateUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputQueryDeviceStateCookie {.importc: "xcb_input_query_device_state_unchecked".}
proc classesLength*(R: ptr XcbInputQueryDeviceStateReply): cint {.importc: "xcb_input_query_device_state_classes_length".}
proc classesIterator*(R: ptr XcbInputQueryDeviceStateReply): XcbInputInputStateIterator {.importc: "xcb_input_query_device_state_classes_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputQueryDeviceStateCookie; e: ptr ptr XcbGenericError): ptr XcbInputQueryDeviceStateReply {.importc: "xcb_input_query_device_state_reply".}
proc deviceBellChecked*(c: ptr XcbConnection; device_id: uint8; feedback_id: uint8; feedback_class: uint8; percent: int8): XcbVoidCookie {.discardable, importc: "xcb_input_device_bell_checked".}
proc deviceBell*(c: ptr XcbConnection; device_id: uint8; feedback_id: uint8; feedback_class: uint8; percent: int8): XcbVoidCookie {.discardable, importc: "xcb_input_device_bell".}
proc setDeviceValuatorsSizeof*(buffer: pointer): cint {.importc: "xcb_input_set_device_valuators_sizeof".}
proc setDeviceValuators*(c: ptr XcbConnection; device_id: uint8; first_valuator: uint8; num_valuators: uint8; valuators: ptr int32): XcbInputSetDeviceValuatorsCookie {.importc: "xcb_input_set_device_valuators".}
proc setDeviceValuatorsUnchecked*(c: ptr XcbConnection; device_id: uint8; first_valuator: uint8; num_valuators: uint8; valuators: ptr int32): XcbInputSetDeviceValuatorsCookie {.importc: "xcb_input_set_device_valuators_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputSetDeviceValuatorsCookie; e: ptr ptr XcbGenericError): ptr XcbInputSetDeviceValuatorsReply {.importc: "xcb_input_set_device_valuators_reply".}
proc deviceResolutionStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_resolution_state_sizeof".}
proc resolutionValues*(R: ptr XcbInputDeviceResolutionState): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_resolution_state_resolution_values".}
proc resolutionValuesLength*(R: ptr XcbInputDeviceResolutionState): cint {.importc: "xcb_input_device_resolution_state_resolution_values_length".}
proc resolutionValuesEnd*(R: ptr XcbInputDeviceResolutionState): XcbGenericIterator {.importc: "xcb_input_device_resolution_state_resolution_values_end".}
proc resolutionMin*(R: ptr XcbInputDeviceResolutionState): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_resolution_state_resolution_min".}
proc resolutionMinLength*(R: ptr XcbInputDeviceResolutionState): cint {.importc: "xcb_input_device_resolution_state_resolution_min_length".}
proc resolutionMinEnd*(R: ptr XcbInputDeviceResolutionState): XcbGenericIterator {.importc: "xcb_input_device_resolution_state_resolution_min_end".}
proc resolutionMax*(R: ptr XcbInputDeviceResolutionState): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_resolution_state_resolution_max".}
proc resolutionMaxLength*(R: ptr XcbInputDeviceResolutionState): cint {.importc: "xcb_input_device_resolution_state_resolution_max_length".}
proc resolutionMaxEnd*(R: ptr XcbInputDeviceResolutionState): XcbGenericIterator {.importc: "xcb_input_device_resolution_state_resolution_max_end".}
proc next*(i: ptr XcbInputDeviceResolutionStateIterator) {.importc: "xcb_input_device_resolution_state_next".}
proc iterEnd*(i: XcbInputDeviceResolutionStateIterator): XcbGenericIterator {.importc: "xcb_input_device_resolution_state_end".}
proc next*(i: ptr XcbInputDeviceAbsCalibStateIterator) {.importc: "xcb_input_device_abs_calib_state_next".}
proc iterEnd*(i: XcbInputDeviceAbsCalibStateIterator): XcbGenericIterator {.importc: "xcb_input_device_abs_calib_state_end".}
proc next*(i: ptr XcbInputDeviceAbsAreaStateIterator) {.importc: "xcb_input_device_abs_area_state_next".}
proc iterEnd*(i: XcbInputDeviceAbsAreaStateIterator): XcbGenericIterator {.importc: "xcb_input_device_abs_area_state_end".}
proc next*(i: ptr XcbInputDeviceCoreStateIterator) {.importc: "xcb_input_device_core_state_next".}
proc iterEnd*(i: XcbInputDeviceCoreStateIterator): XcbGenericIterator {.importc: "xcb_input_device_core_state_end".}
proc next*(i: ptr XcbInputDeviceEnableStateIterator) {.importc: "xcb_input_device_enable_state_next".}
proc iterEnd*(i: XcbInputDeviceEnableStateIterator): XcbGenericIterator {.importc: "xcb_input_device_enable_state_end".}
proc resolutionValues*(S: ptr XcbInputDeviceStateData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_state_data_resolution_resolution_values".}
proc resolutionValuesLength*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): cint {.importc: "xcb_input_device_state_data_resolution_resolution_values_length".}
proc resolutionValuesEnd*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): XcbGenericIterator {.importc: "xcb_input_device_state_data_resolution_resolution_values_end".}
proc resolutionMin*(S: ptr XcbInputDeviceStateData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_state_data_resolution_resolution_min".}
proc resolutionMinLength*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): cint {.importc: "xcb_input_device_state_data_resolution_resolution_min_length".}
proc resolutionMinEnd*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): XcbGenericIterator {.importc: "xcb_input_device_state_data_resolution_resolution_min_end".}
proc resolutionMax*(S: ptr XcbInputDeviceStateData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_state_data_resolution_resolution_max".}
proc resolutionMaxLength*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): cint {.importc: "xcb_input_device_state_data_resolution_resolution_max_length".}
proc resolutionMaxEnd*(R: ptr XcbInputDeviceState; S: ptr XcbInputDeviceStateData): XcbGenericIterator {.importc: "xcb_input_device_state_data_resolution_resolution_max_end".}
proc serialize*(buffer: ptr pointer; control_id: uint16; aux: ptr XcbInputDeviceStateData): cint {.importc: "xcb_input_device_state_data_serialize".}
proc unpack*(buffer: pointer; control_id: uint16; aux: ptr XcbInputDeviceStateData): cint {.importc: "xcb_input_device_state_data_unpack".}
proc deviceStateDataSizeof*(buffer: pointer; control_id: uint16): cint {.importc: "xcb_input_device_state_data_sizeof".}
proc deviceStateSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_state_sizeof".}
proc next*(i: ptr XcbInputDeviceStateIterator) {.importc: "xcb_input_device_state_next".}
proc iterEnd*(i: XcbInputDeviceStateIterator): XcbGenericIterator {.importc: "xcb_input_device_state_end".}
proc getDeviceControlSizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_control_sizeof".}
proc getDeviceControl*(c: ptr XcbConnection; control_id: uint16; device_id: uint8): XcbInputGetDeviceControlCookie {.importc: "xcb_input_get_device_control".}
proc getDeviceControlUnchecked*(c: ptr XcbConnection; control_id: uint16; device_id: uint8): XcbInputGetDeviceControlCookie {.importc: "xcb_input_get_device_control_unchecked".}
proc getDeviceControlControl*(R: ptr XcbInputGetDeviceControlReply): ptr XcbInputDeviceState {.importc: "xcb_input_get_device_control_control".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDeviceControlCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDeviceControlReply {.importc: "xcb_input_get_device_control_reply".}
proc deviceResolutionCtlSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_resolution_ctl_sizeof".}
proc resolutionValues*(R: ptr XcbInputDeviceResolutionCtl): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_resolution_ctl_resolution_values".}
proc resolutionValuesLength*(R: ptr XcbInputDeviceResolutionCtl): cint {.importc: "xcb_input_device_resolution_ctl_resolution_values_length".}
proc resolutionValuesEnd*(R: ptr XcbInputDeviceResolutionCtl): XcbGenericIterator {.importc: "xcb_input_device_resolution_ctl_resolution_values_end".}
proc next*(i: ptr XcbInputDeviceResolutionCtlIterator) {.importc: "xcb_input_device_resolution_ctl_next".}
proc iterEnd*(i: XcbInputDeviceResolutionCtlIterator): XcbGenericIterator {.importc: "xcb_input_device_resolution_ctl_end".}
proc next*(i: ptr XcbInputDeviceAbsCalibCtlIterator) {.importc: "xcb_input_device_abs_calib_ctl_next".}
proc iterEnd*(i: XcbInputDeviceAbsCalibCtlIterator): XcbGenericIterator {.importc: "xcb_input_device_abs_calib_ctl_end".}
proc next*(i: ptr XcbInputDeviceAbsAreaCtrlIterator) {.importc: "xcb_input_device_abs_area_ctrl_next".}
proc iterEnd*(i: XcbInputDeviceAbsAreaCtrlIterator): XcbGenericIterator {.importc: "xcb_input_device_abs_area_ctrl_end".}
proc next*(i: ptr XcbInputDeviceCoreCtrlIterator) {.importc: "xcb_input_device_core_ctrl_next".}
proc iterEnd*(i: XcbInputDeviceCoreCtrlIterator): XcbGenericIterator {.importc: "xcb_input_device_core_ctrl_end".}
proc next*(i: ptr XcbInputDeviceEnableCtrlIterator) {.importc: "xcb_input_device_enable_ctrl_next".}
proc iterEnd*(i: XcbInputDeviceEnableCtrlIterator): XcbGenericIterator {.importc: "xcb_input_device_enable_ctrl_end".}
proc resolutionValues*(S: ptr XcbInputDeviceCtlData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_ctl_data_resolution_resolution_values".}
proc resolutionValuesLength*(R: ptr XcbInputDeviceCtl; S: ptr XcbInputDeviceCtlData): cint {.importc: "xcb_input_device_ctl_data_resolution_resolution_values_length".}
proc resolutionValuesEnd*(R: ptr XcbInputDeviceCtl; S: ptr XcbInputDeviceCtlData): XcbGenericIterator {.importc: "xcb_input_device_ctl_data_resolution_resolution_values_end".}
proc serialize*(buffer: ptr pointer; control_id: uint16; aux: ptr XcbInputDeviceCtlData): cint {.importc: "xcb_input_device_ctl_data_serialize".}
proc unpack*(buffer: pointer; control_id: uint16; aux: ptr XcbInputDeviceCtlData): cint {.importc: "xcb_input_device_ctl_data_unpack".}
proc deviceCtlDataSizeof*(buffer: pointer; control_id: uint16): cint {.importc: "xcb_input_device_ctl_data_sizeof".}
proc deviceCtlSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_ctl_sizeof".}
proc next*(i: ptr XcbInputDeviceCtlIterator) {.importc: "xcb_input_device_ctl_next".}
proc iterEnd*(i: XcbInputDeviceCtlIterator): XcbGenericIterator {.importc: "xcb_input_device_ctl_end".}
proc changeDeviceControlSizeof*(buffer: pointer): cint {.importc: "xcb_input_change_device_control_sizeof".}
proc changeDeviceControl*(c: ptr XcbConnection; control_id: uint16; device_id: uint8; control: ptr XcbInputDeviceCtl): XcbInputChangeDeviceControlCookie {.importc: "xcb_input_change_device_control".}
proc changeDeviceControlUnchecked*(c: ptr XcbConnection; control_id: uint16; device_id: uint8; control: ptr XcbInputDeviceCtl): XcbInputChangeDeviceControlCookie {.importc: "xcb_input_change_device_control_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputChangeDeviceControlCookie; e: ptr ptr XcbGenericError): ptr XcbInputChangeDeviceControlReply {.importc: "xcb_input_change_device_control_reply".}
proc listDevicePropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_input_list_device_properties_sizeof".}
proc listDeviceProperties*(c: ptr XcbConnection; device_id: uint8): XcbInputListDevicePropertiesCookie {.importc: "xcb_input_list_device_properties".}
proc listDevicePropertiesUnchecked*(c: ptr XcbConnection; device_id: uint8): XcbInputListDevicePropertiesCookie {.importc: "xcb_input_list_device_properties_unchecked".}
proc atoms*(R: ptr XcbInputListDevicePropertiesReply): ptr UncheckedArray[XcbAtom] {.importc: "xcb_input_list_device_properties_atoms".}
proc atomsLength*(R: ptr XcbInputListDevicePropertiesReply): cint {.importc: "xcb_input_list_device_properties_atoms_length".}
proc atomsEnd*(R: ptr XcbInputListDevicePropertiesReply): XcbGenericIterator {.importc: "xcb_input_list_device_properties_atoms_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputListDevicePropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbInputListDevicePropertiesReply {.importc: "xcb_input_list_device_properties_reply".}
proc data8*(S: ptr XcbInputChangeDevicePropertyItems): ptr UncheckedArray[uint8] {.importc: "xcb_input_change_device_property_items_data_8".}
proc data8Length*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): cint {.importc: "xcb_input_change_device_property_items_data_8_length".}
proc data8End*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_change_device_property_items_data_8_end".}
proc data16*(S: ptr XcbInputChangeDevicePropertyItems): ptr UncheckedArray[uint16] {.importc: "xcb_input_change_device_property_items_data_16".}
proc data16Length*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): cint {.importc: "xcb_input_change_device_property_items_data_16_length".}
proc data16End*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_change_device_property_items_data_16_end".}
proc data32*(S: ptr XcbInputChangeDevicePropertyItems): ptr UncheckedArray[uint32] {.importc: "xcb_input_change_device_property_items_data_32".}
proc data32Length*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): cint {.importc: "xcb_input_change_device_property_items_data_32_length".}
proc data32End*(R: ptr XcbInputChangeDevicePropertyRequest; S: ptr XcbInputChangeDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_change_device_property_items_data_32_end".}
proc serialize*(buffer: ptr pointer; num_items: uint32; format: uint8; aux: ptr XcbInputChangeDevicePropertyItems): cint {.importc: "xcb_input_change_device_property_items_serialize".}
proc unpack*(buffer: pointer; num_items: uint32; format: uint8; aux: ptr XcbInputChangeDevicePropertyItems): cint {.importc: "xcb_input_change_device_property_items_unpack".}
proc changeDevicePropertyItemsSizeof*(buffer: pointer; num_items: uint32; format: uint8): cint {.importc: "xcb_input_change_device_property_items_sizeof".}
proc changeDevicePropertySizeof*(buffer: pointer): cint {.importc: "xcb_input_change_device_property_sizeof".}
proc changeDevicePropertyChecked*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; device_id: uint8; format: uint8; mode: XcbPropMode; num_items: uint32; items: pointer): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_property_checked".}
proc changeDeviceProperty*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; device_id: uint8; format: uint8; mode: XcbPropMode; num_items: uint32; items: pointer): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_property".}
proc changeDevicePropertyAuxChecked*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; device_id: uint8; format: uint8; mode: XcbPropMode; num_items: uint32; items: ptr XcbInputChangeDevicePropertyItems): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_property_aux_checked".}
proc changeDevicePropertyAux*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; device_id: uint8; format: uint8; mode: XcbPropMode; num_items: uint32; items: ptr XcbInputChangeDevicePropertyItems): XcbVoidCookie {.discardable, importc: "xcb_input_change_device_property_aux".}
proc items*(R: ptr XcbInputChangeDevicePropertyRequest): pointer {.importc: "xcb_input_change_device_property_items".}
proc deleteDevicePropertyChecked*(c: ptr XcbConnection; property: XcbAtom; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_delete_device_property_checked".}
proc deleteDeviceProperty*(c: ptr XcbConnection; property: XcbAtom; device_id: uint8): XcbVoidCookie {.discardable, importc: "xcb_input_delete_device_property".}
proc data8*(S: ptr XcbInputGetDevicePropertyItems): ptr UncheckedArray[uint8] {.importc: "xcb_input_get_device_property_items_data_8".}
proc data8Length*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): cint {.importc: "xcb_input_get_device_property_items_data_8_length".}
proc data8End*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_get_device_property_items_data_8_end".}
proc data16*(S: ptr XcbInputGetDevicePropertyItems): ptr UncheckedArray[uint16] {.importc: "xcb_input_get_device_property_items_data_16".}
proc data16Length*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): cint {.importc: "xcb_input_get_device_property_items_data_16_length".}
proc data16End*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_get_device_property_items_data_16_end".}
proc data32*(S: ptr XcbInputGetDevicePropertyItems): ptr UncheckedArray[uint32] {.importc: "xcb_input_get_device_property_items_data_32".}
proc data32Length*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): cint {.importc: "xcb_input_get_device_property_items_data_32_length".}
proc data32End*(R: ptr XcbInputGetDevicePropertyReply; S: ptr XcbInputGetDevicePropertyItems): XcbGenericIterator {.importc: "xcb_input_get_device_property_items_data_32_end".}
proc serialize*(buffer: ptr pointer; num_items: uint32; format: uint8; aux: ptr XcbInputGetDevicePropertyItems): cint {.importc: "xcb_input_get_device_property_items_serialize".}
proc unpack*(buffer: pointer; num_items: uint32; format: uint8; aux: ptr XcbInputGetDevicePropertyItems): cint {.importc: "xcb_input_get_device_property_items_unpack".}
proc getDevicePropertyItemsSizeof*(buffer: pointer; num_items: uint32; format: uint8): cint {.importc: "xcb_input_get_device_property_items_sizeof".}
proc getDevicePropertySizeof*(buffer: pointer): cint {.importc: "xcb_input_get_device_property_sizeof".}
proc getDeviceProperty*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; offset: uint32; len: uint32; device_id: uint8; delete: uint8): XcbInputGetDevicePropertyCookie {.importc: "xcb_input_get_device_property".}
proc getDevicePropertyUnchecked*(c: ptr XcbConnection; property: XcbAtom; `type`: XcbAtom; offset: uint32; len: uint32; device_id: uint8; delete: uint8): XcbInputGetDevicePropertyCookie {.importc: "xcb_input_get_device_property_unchecked".}
proc items*(R: ptr XcbInputGetDevicePropertyReply): pointer {.importc: "xcb_input_get_device_property_items".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputGetDevicePropertyCookie; e: ptr ptr XcbGenericError): ptr XcbInputGetDevicePropertyReply {.importc: "xcb_input_get_device_property_reply".}
proc next*(i: ptr XcbInputGroupInfoIterator) {.importc: "xcb_input_group_info_next".}
proc iterEnd*(i: XcbInputGroupInfoIterator): XcbGenericIterator {.importc: "xcb_input_group_info_end".}
proc next*(i: ptr XcbInputModifierInfoIterator) {.importc: "xcb_input_modifier_info_next".}
proc iterEnd*(i: XcbInputModifierInfoIterator): XcbGenericIterator {.importc: "xcb_input_modifier_info_end".}
proc xiQueryPointerSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_query_pointer_sizeof".}
proc xiQueryPointer*(c: ptr XcbConnection; window: XcbWindow; deviceid: XcbInputDeviceId): XcbInputXiQueryPointerCookie {.importc: "xcb_input_xi_query_pointer".}
proc xiQueryPointerUnchecked*(c: ptr XcbConnection; window: XcbWindow; deviceid: XcbInputDeviceId): XcbInputXiQueryPointerCookie {.importc: "xcb_input_xi_query_pointer_unchecked".}
proc buttons*(R: ptr XcbInputXiQueryPointerReply): ptr UncheckedArray[uint32] {.importc: "xcb_input_xi_query_pointer_buttons".}
proc buttonsLength*(R: ptr XcbInputXiQueryPointerReply): cint {.importc: "xcb_input_xi_query_pointer_buttons_length".}
proc buttonsEnd*(R: ptr XcbInputXiQueryPointerReply): XcbGenericIterator {.importc: "xcb_input_xi_query_pointer_buttons_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiQueryPointerCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiQueryPointerReply {.importc: "xcb_input_xi_query_pointer_reply".}
proc xiWarpPointerChecked*(c: ptr XcbConnection; src_win: XcbWindow; dst_win: XcbWindow; src_x: XcbInputFp1616; src_y: XcbInputFp1616; src_width: uint16; src_height: uint16; dst_x: XcbInputFp1616; dst_y: XcbInputFp1616; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_warp_pointer_checked".}
proc xiWarpPointer*(c: ptr XcbConnection; src_win: XcbWindow; dst_win: XcbWindow; src_x: XcbInputFp1616; src_y: XcbInputFp1616; src_width: uint16; src_height: uint16; dst_x: XcbInputFp1616; dst_y: XcbInputFp1616; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_warp_pointer".}
proc xiChangeCursorChecked*(c: ptr XcbConnection; window: XcbWindow; cursor: XcbCursor; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_cursor_checked".}
proc xiChangeCursor*(c: ptr XcbConnection; window: XcbWindow; cursor: XcbCursor; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_cursor".}
proc addMasterSizeof*(buffer: pointer): cint {.importc: "xcb_input_add_master_sizeof".}
proc name*(R: ptr XcbInputAddMaster): ptr UncheckedArray[char] {.importc: "xcb_input_add_master_name".}
proc nameLength*(R: ptr XcbInputAddMaster): cint {.importc: "xcb_input_add_master_name_length".}
proc nameEnd*(R: ptr XcbInputAddMaster): XcbGenericIterator {.importc: "xcb_input_add_master_name_end".}
proc next*(i: ptr XcbInputAddMasterIterator) {.importc: "xcb_input_add_master_next".}
proc iterEnd*(i: XcbInputAddMasterIterator): XcbGenericIterator {.importc: "xcb_input_add_master_end".}
proc next*(i: ptr XcbInputRemoveMasterIterator) {.importc: "xcb_input_remove_master_next".}
proc iterEnd*(i: XcbInputRemoveMasterIterator): XcbGenericIterator {.importc: "xcb_input_remove_master_end".}
proc next*(i: ptr XcbInputAttachSlaveIterator) {.importc: "xcb_input_attach_slave_next".}
proc iterEnd*(i: XcbInputAttachSlaveIterator): XcbGenericIterator {.importc: "xcb_input_attach_slave_end".}
proc next*(i: ptr XcbInputDetachSlaveIterator) {.importc: "xcb_input_detach_slave_next".}
proc iterEnd*(i: XcbInputDetachSlaveIterator): XcbGenericIterator {.importc: "xcb_input_detach_slave_end".}
proc addMasterName*(S: ptr XcbInputHierarchyChangeData): ptr UncheckedArray[char] {.importc: "xcb_input_hierarchy_change_data_add_master_name".}
proc addMasterNameLength*(R: ptr XcbInputHierarchyChange; S: ptr XcbInputHierarchyChangeData): cint {.importc: "xcb_input_hierarchy_change_data_add_master_name_length".}
proc addMasterNameEnd*(R: ptr XcbInputHierarchyChange; S: ptr XcbInputHierarchyChangeData): XcbGenericIterator {.importc: "xcb_input_hierarchy_change_data_add_master_name_end".}
proc serialize*(buffer: ptr pointer; `type`: uint16; aux: ptr XcbInputHierarchyChangeData): cint {.importc: "xcb_input_hierarchy_change_data_serialize".}
proc unpack*(buffer: pointer; `type`: uint16; aux: ptr XcbInputHierarchyChangeData): cint {.importc: "xcb_input_hierarchy_change_data_unpack".}
proc hierarchyChangeDataSizeof*(buffer: pointer; `type`: uint16): cint {.importc: "xcb_input_hierarchy_change_data_sizeof".}
proc hierarchyChangeSizeof*(buffer: pointer): cint {.importc: "xcb_input_hierarchy_change_sizeof".}
proc next*(i: ptr XcbInputHierarchyChangeIterator) {.importc: "xcb_input_hierarchy_change_next".}
proc iterEnd*(i: XcbInputHierarchyChangeIterator): XcbGenericIterator {.importc: "xcb_input_hierarchy_change_end".}
proc xiChangeHierarchySizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_change_hierarchy_sizeof".}
proc xiChangeHierarchyChecked*(c: ptr XcbConnection; num_changes: uint8; changes: ptr XcbInputHierarchyChange): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_hierarchy_checked".}
proc xiChangeHierarchy*(c: ptr XcbConnection; num_changes: uint8; changes: ptr XcbInputHierarchyChange): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_hierarchy".}
proc changesLength*(R: ptr XcbInputXiChangeHierarchyRequest): cint {.importc: "xcb_input_xi_change_hierarchy_changes_length".}
proc changesIterator*(R: ptr XcbInputXiChangeHierarchyRequest): XcbInputHierarchyChangeIterator {.importc: "xcb_input_xi_change_hierarchy_changes_iterator".}
proc xiSetClientPointerChecked*(c: ptr XcbConnection; window: XcbWindow; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_set_client_pointer_checked".}
proc xiSetClientPointer*(c: ptr XcbConnection; window: XcbWindow; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_set_client_pointer".}
proc xiGetClientPointer*(c: ptr XcbConnection; window: XcbWindow): XcbInputXiGetClientPointerCookie {.importc: "xcb_input_xi_get_client_pointer".}
proc xiGetClientPointerUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbInputXiGetClientPointerCookie {.importc: "xcb_input_xi_get_client_pointer_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiGetClientPointerCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiGetClientPointerReply {.importc: "xcb_input_xi_get_client_pointer_reply".}
proc eventMaskSizeof*(buffer: pointer): cint {.importc: "xcb_input_event_mask_sizeof".}
proc mask*(R: ptr XcbInputEventMask): ptr UncheckedArray[uint32] {.importc: "xcb_input_event_mask_mask".}
proc maskLength*(R: ptr XcbInputEventMask): cint {.importc: "xcb_input_event_mask_mask_length".}
proc maskEnd*(R: ptr XcbInputEventMask): XcbGenericIterator {.importc: "xcb_input_event_mask_mask_end".}
proc next*(i: ptr XcbInputEventMaskIterator) {.importc: "xcb_input_event_mask_next".}
proc iterEnd*(i: XcbInputEventMaskIterator): XcbGenericIterator {.importc: "xcb_input_event_mask_end".}
proc xiSelectEventsSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_select_events_sizeof".}
proc xiSelectEventsChecked*(c: ptr XcbConnection; window: XcbWindow; num_mask: uint16; masks: ptr XcbInputEventMask): XcbVoidCookie {.discardable, importc: "xcb_input_xi_select_events_checked".}
proc xiSelectEvents*(c: ptr XcbConnection; window: XcbWindow; num_mask: uint16; masks: ptr XcbInputEventMask): XcbVoidCookie {.discardable, importc: "xcb_input_xi_select_events".}
proc masksLength*(R: ptr XcbInputXiSelectEventsRequest): cint {.importc: "xcb_input_xi_select_events_masks_length".}
proc masksIterator*(R: ptr XcbInputXiSelectEventsRequest): XcbInputEventMaskIterator {.importc: "xcb_input_xi_select_events_masks_iterator".}
proc xiQueryVersion*(c: ptr XcbConnection; major_version: uint16; minor_version: uint16): XcbInputXiQueryVersionCookie {.importc: "xcb_input_xi_query_version".}
proc xiQueryVersionUnchecked*(c: ptr XcbConnection; major_version: uint16; minor_version: uint16): XcbInputXiQueryVersionCookie {.importc: "xcb_input_xi_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiQueryVersionReply {.importc: "xcb_input_xi_query_version_reply".}
proc buttonClassSizeof*(buffer: pointer): cint {.importc: "xcb_input_button_class_sizeof".}
proc state*(R: ptr XcbInputButtonClass): ptr UncheckedArray[uint32] {.importc: "xcb_input_button_class_state".}
proc stateLength*(R: ptr XcbInputButtonClass): cint {.importc: "xcb_input_button_class_state_length".}
proc stateEnd*(R: ptr XcbInputButtonClass): XcbGenericIterator {.importc: "xcb_input_button_class_state_end".}
proc labels*(R: ptr XcbInputButtonClass): ptr UncheckedArray[XcbAtom] {.importc: "xcb_input_button_class_labels".}
proc labelsLength*(R: ptr XcbInputButtonClass): cint {.importc: "xcb_input_button_class_labels_length".}
proc labelsEnd*(R: ptr XcbInputButtonClass): XcbGenericIterator {.importc: "xcb_input_button_class_labels_end".}
proc next*(i: ptr XcbInputButtonClassIterator) {.importc: "xcb_input_button_class_next".}
proc iterEnd*(i: XcbInputButtonClassIterator): XcbGenericIterator {.importc: "xcb_input_button_class_end".}
proc keyClassSizeof*(buffer: pointer): cint {.importc: "xcb_input_key_class_sizeof".}
proc keys*(R: ptr XcbInputKeyClass): ptr UncheckedArray[uint32] {.importc: "xcb_input_key_class_keys".}
proc keysLength*(R: ptr XcbInputKeyClass): cint {.importc: "xcb_input_key_class_keys_length".}
proc keysEnd*(R: ptr XcbInputKeyClass): XcbGenericIterator {.importc: "xcb_input_key_class_keys_end".}
proc next*(i: ptr XcbInputKeyClassIterator) {.importc: "xcb_input_key_class_next".}
proc iterEnd*(i: XcbInputKeyClassIterator): XcbGenericIterator {.importc: "xcb_input_key_class_end".}
proc next*(i: ptr XcbInputScrollClassIterator) {.importc: "xcb_input_scroll_class_next".}
proc iterEnd*(i: XcbInputScrollClassIterator): XcbGenericIterator {.importc: "xcb_input_scroll_class_end".}
proc next*(i: ptr XcbInputTouchClassIterator) {.importc: "xcb_input_touch_class_next".}
proc iterEnd*(i: XcbInputTouchClassIterator): XcbGenericIterator {.importc: "xcb_input_touch_class_end".}
proc next*(i: ptr XcbInputValuatorClassIterator) {.importc: "xcb_input_valuator_class_next".}
proc iterEnd*(i: XcbInputValuatorClassIterator): XcbGenericIterator {.importc: "xcb_input_valuator_class_end".}
proc keyKeys*(S: ptr XcbInputDeviceClassData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_class_data_key_keys".}
proc keyKeysLength*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): cint {.importc: "xcb_input_device_class_data_key_keys_length".}
proc keyKeysEnd*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): XcbGenericIterator {.importc: "xcb_input_device_class_data_key_keys_end".}
proc buttonState*(S: ptr XcbInputDeviceClassData): ptr UncheckedArray[uint32] {.importc: "xcb_input_device_class_data_button_state".}
proc buttonStateLength*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): cint {.importc: "xcb_input_device_class_data_button_state_length".}
proc buttonStateEnd*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): XcbGenericIterator {.importc: "xcb_input_device_class_data_button_state_end".}
proc buttonLabels*(S: ptr XcbInputDeviceClassData): ptr UncheckedArray[XcbAtom] {.importc: "xcb_input_device_class_data_button_labels".}
proc buttonLabelsLength*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): cint {.importc: "xcb_input_device_class_data_button_labels_length".}
proc buttonLabelsEnd*(R: ptr XcbInputDeviceClass; S: ptr XcbInputDeviceClassData): XcbGenericIterator {.importc: "xcb_input_device_class_data_button_labels_end".}
proc serialize*(buffer: ptr pointer; `type`: uint16; aux: ptr XcbInputDeviceClassData): cint {.importc: "xcb_input_device_class_data_serialize".}
proc unpack*(buffer: pointer; `type`: uint16; aux: ptr XcbInputDeviceClassData): cint {.importc: "xcb_input_device_class_data_unpack".}
proc deviceClassDataSizeof*(buffer: pointer; `type`: uint16): cint {.importc: "xcb_input_device_class_data_sizeof".}
proc deviceClassSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_class_sizeof".}
proc next*(i: ptr XcbInputDeviceClassIterator) {.importc: "xcb_input_device_class_next".}
proc iterEnd*(i: XcbInputDeviceClassIterator): XcbGenericIterator {.importc: "xcb_input_device_class_end".}
proc xiDeviceInfoSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_device_info_sizeof".}
proc name*(R: ptr XcbInputXiDeviceInfo): ptr UncheckedArray[char] {.importc: "xcb_input_xi_device_info_name".}
proc nameLength*(R: ptr XcbInputXiDeviceInfo): cint {.importc: "xcb_input_xi_device_info_name_length".}
proc nameEnd*(R: ptr XcbInputXiDeviceInfo): XcbGenericIterator {.importc: "xcb_input_xi_device_info_name_end".}
proc classesLength*(R: ptr XcbInputXiDeviceInfo): cint {.importc: "xcb_input_xi_device_info_classes_length".}
proc classesIterator*(R: ptr XcbInputXiDeviceInfo): XcbInputDeviceClassIterator {.importc: "xcb_input_xi_device_info_classes_iterator".}
proc next*(i: ptr XcbInputXiDeviceInfoIterator) {.importc: "xcb_input_xi_device_info_next".}
proc iterEnd*(i: XcbInputXiDeviceInfoIterator): XcbGenericIterator {.importc: "xcb_input_xi_device_info_end".}
proc xiQueryDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_query_device_sizeof".}
proc query*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiQueryDeviceCookie {.importc: "xcb_input_xi_query_device".}
proc queryUnchecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiQueryDeviceCookie {.importc: "xcb_input_xi_query_device_unchecked".}
proc infosLength*(R: ptr XcbInputXiQueryDeviceReply): cint {.importc: "xcb_input_xi_query_device_infos_length".}
proc infosIterator*(R: ptr XcbInputXiQueryDeviceReply): XcbInputXiDeviceInfoIterator {.importc: "xcb_input_xi_query_device_infos_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiQueryDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiQueryDeviceReply {.importc: "xcb_input_xi_query_device_reply".}
proc xiSetFocusChecked*(c: ptr XcbConnection; window: XcbWindow; time: XcbTimestamp; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_set_focus_checked".}
proc xiSetFocus*(c: ptr XcbConnection; window: XcbWindow; time: XcbTimestamp; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_set_focus".}
proc xiGetFocus*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiGetFocusCookie {.importc: "xcb_input_xi_get_focus".}
proc xiGetFocusUnchecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiGetFocusCookie {.importc: "xcb_input_xi_get_focus_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiGetFocusCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiGetFocusReply {.importc: "xcb_input_xi_get_focus_reply".}
proc xiGrabDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_grab_device_sizeof".}
proc xiGrabDevice*(c: ptr XcbConnection; window: XcbWindow; time: XcbTimestamp; cursor: XcbCursor; deviceid: XcbInputDeviceId; mode: uint8; paired_device_mode: uint8; owner_events: uint8; mask_len: uint16; mask: ptr uint32): XcbInputXiGrabDeviceCookie {.importc: "xcb_input_xi_grab_device".}
proc xiGrabDeviceUnchecked*(c: ptr XcbConnection; window: XcbWindow; time: XcbTimestamp; cursor: XcbCursor; deviceid: XcbInputDeviceId; mode: uint8; paired_device_mode: uint8; owner_events: uint8; mask_len: uint16; mask: ptr uint32): XcbInputXiGrabDeviceCookie {.importc: "xcb_input_xi_grab_device_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiGrabDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiGrabDeviceReply {.importc: "xcb_input_xi_grab_device_reply".}
proc xiUngrabDeviceChecked*(c: ptr XcbConnection; time: XcbTimestamp; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_ungrab_device_checked".}
proc xiUngrabDevice*(c: ptr XcbConnection; time: XcbTimestamp; deviceid: XcbInputDeviceId): XcbVoidCookie {.discardable, importc: "xcb_input_xi_ungrab_device".}
proc xiAllowEventsChecked*(c: ptr XcbConnection; time: XcbTimestamp; deviceid: XcbInputDeviceId; event_mode: uint8; touchid: uint32; grab_window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_input_xi_allow_events_checked".}
proc xiAllowEvents*(c: ptr XcbConnection; time: XcbTimestamp; deviceid: XcbInputDeviceId; event_mode: uint8; touchid: uint32; grab_window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_input_xi_allow_events".}
proc next*(i: ptr XcbInputGrabModifierInfoIterator) {.importc: "xcb_input_grab_modifier_info_next".}
proc iterEnd*(i: XcbInputGrabModifierInfoIterator): XcbGenericIterator {.importc: "xcb_input_grab_modifier_info_end".}
proc xiPassiveGrabDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_passive_grab_device_sizeof".}
proc xiPassiveGrabDevice*(c: ptr XcbConnection; time: XcbTimestamp; grab_window: XcbWindow; cursor: XcbCursor; detail: uint32; deviceid: XcbInputDeviceId; num_modifiers: uint16; mask_len: uint16; grab_type: uint8; grab_mode: uint8; paired_device_mode: uint8; owner_events: uint8; mask: ptr uint32; modifiers: ptr uint32): XcbInputXiPassiveGrabDeviceCookie {.importc: "xcb_input_xi_passive_grab_device".}
proc xiPassiveGrabDeviceUnchecked*(c: ptr XcbConnection; time: XcbTimestamp; grab_window: XcbWindow; cursor: XcbCursor; detail: uint32; deviceid: XcbInputDeviceId; num_modifiers: uint16; mask_len: uint16; grab_type: uint8; grab_mode: uint8; paired_device_mode: uint8; owner_events: uint8; mask: ptr uint32; modifiers: ptr uint32): XcbInputXiPassiveGrabDeviceCookie {.importc: "xcb_input_xi_passive_grab_device_unchecked".}
proc modifiers*(R: ptr XcbInputXiPassiveGrabDeviceReply): ptr XcbInputGrabModifierInfo {.importc: "xcb_input_xi_passive_grab_device_modifiers".}
proc modifiersLength*(R: ptr XcbInputXiPassiveGrabDeviceReply): cint {.importc: "xcb_input_xi_passive_grab_device_modifiers_length".}
proc modifiersIterator*(R: ptr XcbInputXiPassiveGrabDeviceReply): XcbInputGrabModifierInfoIterator {.importc: "xcb_input_xi_passive_grab_device_modifiers_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiPassiveGrabDeviceCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiPassiveGrabDeviceReply {.importc: "xcb_input_xi_passive_grab_device_reply".}
proc xiPassiveUngrabDeviceSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_passive_ungrab_device_sizeof".}
proc xiPassiveUngrabDeviceChecked*(c: ptr XcbConnection; grab_window: XcbWindow; detail: uint32; deviceid: XcbInputDeviceId; num_modifiers: uint16; grab_type: uint8; modifiers: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_input_xi_passive_ungrab_device_checked".}
proc xiPassiveUngrabDevice*(c: ptr XcbConnection; grab_window: XcbWindow; detail: uint32; deviceid: XcbInputDeviceId; num_modifiers: uint16; grab_type: uint8; modifiers: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_input_xi_passive_ungrab_device".}
proc modifiers*(R: ptr XcbInputXiPassiveUngrabDeviceRequest): ptr UncheckedArray[uint32] {.importc: "xcb_input_xi_passive_ungrab_device_modifiers".}
proc modifiersLength*(R: ptr XcbInputXiPassiveUngrabDeviceRequest): cint {.importc: "xcb_input_xi_passive_ungrab_device_modifiers_length".}
proc modifiersEnd*(R: ptr XcbInputXiPassiveUngrabDeviceRequest): XcbGenericIterator {.importc: "xcb_input_xi_passive_ungrab_device_modifiers_end".}
proc xiListPropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_list_properties_sizeof".}
proc listProperties*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiListPropertiesCookie {.importc: "xcb_input_xi_list_properties".}
proc listPropertiesUnchecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId): XcbInputXiListPropertiesCookie {.importc: "xcb_input_xi_list_properties_unchecked".}
proc properties*(R: ptr XcbInputXiListPropertiesReply): ptr UncheckedArray[XcbAtom] {.importc: "xcb_input_xi_list_properties_properties".}
proc propertiesLength*(R: ptr XcbInputXiListPropertiesReply): cint {.importc: "xcb_input_xi_list_properties_properties_length".}
proc propertiesEnd*(R: ptr XcbInputXiListPropertiesReply): XcbGenericIterator {.importc: "xcb_input_xi_list_properties_properties_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiListPropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiListPropertiesReply {.importc: "xcb_input_xi_list_properties_reply".}
proc data8*(S: ptr XcbInputXiChangePropertyItems): ptr UncheckedArray[uint8] {.importc: "xcb_input_xi_change_property_items_data_8".}
proc data8Length*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): cint {.importc: "xcb_input_xi_change_property_items_data_8_length".}
proc data8End*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_change_property_items_data_8_end".}
proc data16*(S: ptr XcbInputXiChangePropertyItems): ptr UncheckedArray[uint16] {.importc: "xcb_input_xi_change_property_items_data_16".}
proc data16Length*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): cint {.importc: "xcb_input_xi_change_property_items_data_16_length".}
proc data16End*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_change_property_items_data_16_end".}
proc data32*(S: ptr XcbInputXiChangePropertyItems): ptr UncheckedArray[uint32] {.importc: "xcb_input_xi_change_property_items_data_32".}
proc data32Length*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): cint {.importc: "xcb_input_xi_change_property_items_data_32_length".}
proc data32End*(R: ptr XcbInputXiChangePropertyRequest; S: ptr XcbInputXiChangePropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_change_property_items_data_32_end".}
proc serialize*(buffer: ptr pointer; num_items: uint32; format: uint8; aux: ptr XcbInputXiChangePropertyItems): cint {.importc: "xcb_input_xi_change_property_items_serialize".}
proc unpack*(buffer: pointer; num_items: uint32; format: uint8; aux: ptr XcbInputXiChangePropertyItems): cint {.importc: "xcb_input_xi_change_property_items_unpack".}
proc xiChangePropertyItemsSizeof*(buffer: pointer; num_items: uint32; format: uint8): cint {.importc: "xcb_input_xi_change_property_items_sizeof".}
proc xiChangePropertySizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_change_property_sizeof".}
proc xiChangePropertyChecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; mode: XcbPropMode; format: uint8; property: XcbAtom; `type`: XcbAtom; num_items: uint32; items: pointer): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_property_checked".}
proc xiChangeProperty*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; mode: XcbPropMode; format: uint8; property: XcbAtom; `type`: XcbAtom; num_items: uint32; items: pointer): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_property".}
proc xiChangePropertyAuxChecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; mode: XcbPropMode; format: uint8; property: XcbAtom; `type`: XcbAtom; num_items: uint32; items: ptr XcbInputXiChangePropertyItems): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_property_aux_checked".}
proc xiChangePropertyAux*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; mode: XcbPropMode; format: uint8; property: XcbAtom; `type`: XcbAtom; num_items: uint32; items: ptr XcbInputXiChangePropertyItems): XcbVoidCookie {.discardable, importc: "xcb_input_xi_change_property_aux".}
proc items*(R: ptr XcbInputXiChangePropertyRequest): pointer {.importc: "xcb_input_xi_change_property_items".}
proc xiDeletePropertyChecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_input_xi_delete_property_checked".}
proc xiDeleteProperty*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; property: XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_input_xi_delete_property".}
proc data8*(S: ptr XcbInputXiGetPropertyItems): ptr UncheckedArray[uint8] {.importc: "xcb_input_xi_get_property_items_data_8".}
proc data8Length*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): cint {.importc: "xcb_input_xi_get_property_items_data_8_length".}
proc data8End*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_get_property_items_data_8_end".}
proc data16*(S: ptr XcbInputXiGetPropertyItems): ptr UncheckedArray[uint16] {.importc: "xcb_input_xi_get_property_items_data_16".}
proc data16Length*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): cint {.importc: "xcb_input_xi_get_property_items_data_16_length".}
proc data16End*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_get_property_items_data_16_end".}
proc data32*(S: ptr XcbInputXiGetPropertyItems): ptr UncheckedArray[uint32] {.importc: "xcb_input_xi_get_property_items_data_32".}
proc data32Length*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): cint {.importc: "xcb_input_xi_get_property_items_data_32_length".}
proc data32End*(R: ptr XcbInputXiGetPropertyReply; S: ptr XcbInputXiGetPropertyItems): XcbGenericIterator {.importc: "xcb_input_xi_get_property_items_data_32_end".}
proc serialize*(buffer: ptr pointer; num_items: uint32; format: uint8; aux: ptr XcbInputXiGetPropertyItems): cint {.importc: "xcb_input_xi_get_property_items_serialize".}
proc unpack*(buffer: pointer; num_items: uint32; format: uint8; aux: ptr XcbInputXiGetPropertyItems): cint {.importc: "xcb_input_xi_get_property_items_unpack".}
proc xiGetPropertyItemsSizeof*(buffer: pointer; num_items: uint32; format: uint8): cint {.importc: "xcb_input_xi_get_property_items_sizeof".}
proc xiGetPropertySizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_get_property_sizeof".}
proc xiGetProperty*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; delete: uint8; property: XcbAtom; `type`: XcbAtom; offset: uint32; len: uint32): XcbInputXiGetPropertyCookie {.importc: "xcb_input_xi_get_property".}
proc xiGetPropertyUnchecked*(c: ptr XcbConnection; deviceid: XcbInputDeviceId; delete: uint8; property: XcbAtom; `type`: XcbAtom; offset: uint32; len: uint32): XcbInputXiGetPropertyCookie {.importc: "xcb_input_xi_get_property_unchecked".}
proc items*(R: ptr XcbInputXiGetPropertyReply): pointer {.importc: "xcb_input_xi_get_property_items".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiGetPropertyCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiGetPropertyReply {.importc: "xcb_input_xi_get_property_reply".}
proc xiGetSelectedEventsSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_get_selected_events_sizeof".}
proc xiGetSelectedEvents*(c: ptr XcbConnection; window: XcbWindow): XcbInputXiGetSelectedEventsCookie {.importc: "xcb_input_xi_get_selected_events".}
proc xiGetSelectedEventsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbInputXiGetSelectedEventsCookie {.importc: "xcb_input_xi_get_selected_events_unchecked".}
proc masksLength*(R: ptr XcbInputXiGetSelectedEventsReply): cint {.importc: "xcb_input_xi_get_selected_events_masks_length".}
proc masksIterator*(R: ptr XcbInputXiGetSelectedEventsReply): XcbInputEventMaskIterator {.importc: "xcb_input_xi_get_selected_events_masks_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbInputXiGetSelectedEventsCookie; e: ptr ptr XcbGenericError): ptr XcbInputXiGetSelectedEventsReply {.importc: "xcb_input_xi_get_selected_events_reply".}
proc next*(i: ptr XcbInputBarrierReleasePointerInfoIterator) {.importc: "xcb_input_barrier_release_pointer_info_next".}
proc iterEnd*(i: XcbInputBarrierReleasePointerInfoIterator): XcbGenericIterator {.importc: "xcb_input_barrier_release_pointer_info_end".}
proc xiBarrierReleasePointerSizeof*(buffer: pointer): cint {.importc: "xcb_input_xi_barrier_release_pointer_sizeof".}
proc xiBarrierReleasePointerChecked*(c: ptr XcbConnection; num_barriers: uint32; barriers: ptr XcbInputBarrierReleasePointerInfo): XcbVoidCookie {.discardable, importc: "xcb_input_xi_barrier_release_pointer_checked".}
proc xiBarrierReleasePointer*(c: ptr XcbConnection; num_barriers: uint32; barriers: ptr XcbInputBarrierReleasePointerInfo): XcbVoidCookie {.discardable, importc: "xcb_input_xi_barrier_release_pointer".}
proc barriers*(R: ptr XcbInputXiBarrierReleasePointerRequest): ptr XcbInputBarrierReleasePointerInfo {.importc: "xcb_input_xi_barrier_release_pointer_barriers".}
proc barriersLength*(R: ptr XcbInputXiBarrierReleasePointerRequest): cint {.importc: "xcb_input_xi_barrier_release_pointer_barriers_length".}
proc barriersIterator*(R: ptr XcbInputXiBarrierReleasePointerRequest): XcbInputBarrierReleasePointerInfoIterator {.importc: "xcb_input_xi_barrier_release_pointer_barriers_iterator".}
proc deviceChangedSizeof*(buffer: pointer): cint {.importc: "xcb_input_device_changed_sizeof".}
proc classesLength*(R: ptr XcbInputDeviceChangedEvent): cint {.importc: "xcb_input_device_changed_classes_length".}
proc classesIterator*(R: ptr XcbInputDeviceChangedEvent): XcbInputDeviceClassIterator {.importc: "xcb_input_device_changed_classes_iterator".}
proc keyPressSizeof*(buffer: pointer): cint {.importc: "xcb_input_key_press_sizeof".}
proc buttonMask*(R: ptr XcbInputKeyPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_key_press_button_mask".}
proc buttonMaskLength*(R: ptr XcbInputKeyPressEvent): cint {.importc: "xcb_input_key_press_button_mask_length".}
proc buttonMaskEnd*(R: ptr XcbInputKeyPressEvent): XcbGenericIterator {.importc: "xcb_input_key_press_button_mask_end".}
proc valuatorMask*(R: ptr XcbInputKeyPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_key_press_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputKeyPressEvent): cint {.importc: "xcb_input_key_press_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputKeyPressEvent): XcbGenericIterator {.importc: "xcb_input_key_press_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputKeyPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_key_press_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputKeyPressEvent): cint {.importc: "xcb_input_key_press_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputKeyPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_key_press_axisvalues_iterator".}
proc keyReleaseSizeof*(buffer: pointer): cint {.importc: "xcb_input_key_release_sizeof".}
proc buttonPressSizeof*(buffer: pointer): cint {.importc: "xcb_input_button_press_sizeof".}
proc buttonMask*(R: ptr XcbInputButtonPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_button_press_button_mask".}
proc buttonMaskLength*(R: ptr XcbInputButtonPressEvent): cint {.importc: "xcb_input_button_press_button_mask_length".}
proc buttonMaskEnd*(R: ptr XcbInputButtonPressEvent): XcbGenericIterator {.importc: "xcb_input_button_press_button_mask_end".}
proc valuatorMask*(R: ptr XcbInputButtonPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_button_press_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputButtonPressEvent): cint {.importc: "xcb_input_button_press_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputButtonPressEvent): XcbGenericIterator {.importc: "xcb_input_button_press_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputButtonPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_button_press_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputButtonPressEvent): cint {.importc: "xcb_input_button_press_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputButtonPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_button_press_axisvalues_iterator".}
proc buttonReleaseSizeof*(buffer: pointer): cint {.importc: "xcb_input_button_release_sizeof".}
proc motionSizeof*(buffer: pointer): cint {.importc: "xcb_input_motion_sizeof".}
proc enterSizeof*(buffer: pointer): cint {.importc: "xcb_input_enter_sizeof".}
proc buttons*(R: ptr XcbInputEnterEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_enter_buttons".}
proc buttonsLength*(R: ptr XcbInputEnterEvent): cint {.importc: "xcb_input_enter_buttons_length".}
proc buttonsEnd*(R: ptr XcbInputEnterEvent): XcbGenericIterator {.importc: "xcb_input_enter_buttons_end".}
proc leaveSizeof*(buffer: pointer): cint {.importc: "xcb_input_leave_sizeof".}
proc focusInSizeof*(buffer: pointer): cint {.importc: "xcb_input_focus_in_sizeof".}
proc focusOutSizeof*(buffer: pointer): cint {.importc: "xcb_input_focus_out_sizeof".}
proc next*(i: ptr XcbInputHierarchyInfoIterator) {.importc: "xcb_input_hierarchy_info_next".}
proc iterEnd*(i: XcbInputHierarchyInfoIterator): XcbGenericIterator {.importc: "xcb_input_hierarchy_info_end".}
proc hierarchySizeof*(buffer: pointer): cint {.importc: "xcb_input_hierarchy_sizeof".}
proc infos*(R: ptr XcbInputHierarchyEvent): ptr UncheckedArray[XcbInputHierarchyInfo] {.importc: "xcb_input_hierarchy_infos".}
proc infosLength*(R: ptr XcbInputHierarchyEvent): cint {.importc: "xcb_input_hierarchy_infos_length".}
proc infosIterator*(R: ptr XcbInputHierarchyEvent): XcbInputHierarchyInfoIterator {.importc: "xcb_input_hierarchy_infos_iterator".}
proc rawKeyPressSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_key_press_sizeof".}
proc valuatorMask*(R: ptr XcbInputRawKeyPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_raw_key_press_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputRawKeyPressEvent): cint {.importc: "xcb_input_raw_key_press_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputRawKeyPressEvent): XcbGenericIterator {.importc: "xcb_input_raw_key_press_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputRawKeyPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_key_press_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputRawKeyPressEvent): cint {.importc: "xcb_input_raw_key_press_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputRawKeyPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_key_press_axisvalues_iterator".}
proc axisValuesRaw*(R: ptr XcbInputRawKeyPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_key_press_axisvalues_raw".}
proc axisValuesRawLength*(R: ptr XcbInputRawKeyPressEvent): cint {.importc: "xcb_input_raw_key_press_axisvalues_raw_length".}
proc axisValuesRawIterator*(R: ptr XcbInputRawKeyPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_key_press_axisvalues_raw_iterator".}
proc rawKeyReleaseSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_key_release_sizeof".}
proc rawButtonPressSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_button_press_sizeof".}
proc valuatorMask*(R: ptr XcbInputRawButtonPressEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_raw_button_press_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputRawButtonPressEvent): cint {.importc: "xcb_input_raw_button_press_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputRawButtonPressEvent): XcbGenericIterator {.importc: "xcb_input_raw_button_press_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputRawButtonPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_button_press_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputRawButtonPressEvent): cint {.importc: "xcb_input_raw_button_press_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputRawButtonPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_button_press_axisvalues_iterator".}
proc axisValuesRaw*(R: ptr XcbInputRawButtonPressEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_button_press_axisvalues_raw".}
proc axisValuesRawLength*(R: ptr XcbInputRawButtonPressEvent): cint {.importc: "xcb_input_raw_button_press_axisvalues_raw_length".}
proc axisValuesRawIterator*(R: ptr XcbInputRawButtonPressEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_button_press_axisvalues_raw_iterator".}
proc rawButtonReleaseSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_button_release_sizeof".}
proc rawMotionSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_motion_sizeof".}
proc touchBeginSizeof*(buffer: pointer): cint {.importc: "xcb_input_touch_begin_sizeof".}
proc buttonMask*(R: ptr XcbInputTouchBeginEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_touch_begin_button_mask".}
proc buttonMaskLength*(R: ptr XcbInputTouchBeginEvent): cint {.importc: "xcb_input_touch_begin_button_mask_length".}
proc buttonMaskEnd*(R: ptr XcbInputTouchBeginEvent): XcbGenericIterator {.importc: "xcb_input_touch_begin_button_mask_end".}
proc valuatorMask*(R: ptr XcbInputTouchBeginEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_touch_begin_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputTouchBeginEvent): cint {.importc: "xcb_input_touch_begin_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputTouchBeginEvent): XcbGenericIterator {.importc: "xcb_input_touch_begin_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputTouchBeginEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_touch_begin_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputTouchBeginEvent): cint {.importc: "xcb_input_touch_begin_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputTouchBeginEvent): XcbInputFp3232Iterator {.importc: "xcb_input_touch_begin_axisvalues_iterator".}
proc touchUpdateSizeof*(buffer: pointer): cint {.importc: "xcb_input_touch_update_sizeof".}
proc touchEndSizeof*(buffer: pointer): cint {.importc: "xcb_input_touch_end_sizeof".}
proc rawTouchBeginSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_touch_begin_sizeof".}
proc valuatorMask*(R: ptr XcbInputRawTouchBeginEvent): ptr UncheckedArray[uint32] {.importc: "xcb_input_raw_touch_begin_valuator_mask".}
proc valuatorMaskLength*(R: ptr XcbInputRawTouchBeginEvent): cint {.importc: "xcb_input_raw_touch_begin_valuator_mask_length".}
proc valuatorMaskEnd*(R: ptr XcbInputRawTouchBeginEvent): XcbGenericIterator {.importc: "xcb_input_raw_touch_begin_valuator_mask_end".}
proc axisValues*(R: ptr XcbInputRawTouchBeginEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_touch_begin_axisvalues".}
proc axisValuesLength*(R: ptr XcbInputRawTouchBeginEvent): cint {.importc: "xcb_input_raw_touch_begin_axisvalues_length".}
proc axisValuesIterator*(R: ptr XcbInputRawTouchBeginEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_touch_begin_axisvalues_iterator".}
proc axisValuesRaw*(R: ptr XcbInputRawTouchBeginEvent): ptr UncheckedArray[XcbInputFp3232] {.importc: "xcb_input_raw_touch_begin_axisvalues_raw".}
proc axisValuesRawLength*(R: ptr XcbInputRawTouchBeginEvent): cint {.importc: "xcb_input_raw_touch_begin_axisvalues_raw_length".}
proc axisValuesRawIterator*(R: ptr XcbInputRawTouchBeginEvent): XcbInputFp3232Iterator {.importc: "xcb_input_raw_touch_begin_axisvalues_raw_iterator".}
proc rawTouchUpdateSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_touch_update_sizeof".}
proc rawTouchEndSizeof*(buffer: pointer): cint {.importc: "xcb_input_raw_touch_end_sizeof".}
proc next*(i: ptr XcbInputEventForSendIterator) {.importc: "xcb_input_event_for_send_next".}
proc iterEnd*(i: XcbInputEventForSendIterator): XcbGenericIterator {.importc: "xcb_input_event_for_send_end".}
proc sendExtensionEventSizeof*(buffer: pointer): cint {.importc: "xcb_input_send_extension_event_sizeof".}
proc sendExtensionEventChecked*(c: ptr XcbConnection; destination: XcbWindow; device_id: uint8; propagate: uint8; num_classes: uint16; num_events: uint8; events: ptr XcbInputEventForSend; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_send_extension_event_checked".}
proc sendExtensionEvent*(c: ptr XcbConnection; destination: XcbWindow; device_id: uint8; propagate: uint8; num_classes: uint16; num_events: uint8; events: ptr XcbInputEventForSend; classes: ptr XcbInputEventClass): XcbVoidCookie {.discardable, importc: "xcb_input_send_extension_event".}
proc events*(R: ptr XcbInputSendExtensionEventRequest): ptr XcbInputEventForSend {.importc: "xcb_input_send_extension_event_events".}
proc eventsLength*(R: ptr XcbInputSendExtensionEventRequest): cint {.importc: "xcb_input_send_extension_event_events_length".}
proc eventsIterator*(R: ptr XcbInputSendExtensionEventRequest): XcbInputEventForSendIterator {.importc: "xcb_input_send_extension_event_events_iterator".}
proc classes*(R: ptr XcbInputSendExtensionEventRequest): ptr UncheckedArray[XcbInputEventClass] {.importc: "xcb_input_send_extension_event_classes".}
proc classesLength*(R: ptr XcbInputSendExtensionEventRequest): cint {.importc: "xcb_input_send_extension_event_classes_length".}
proc classesEnd*(R: ptr XcbInputSendExtensionEventRequest): XcbGenericIterator {.importc: "xcb_input_send_extension_event_classes_end".}

{.pop.}
