import ./xcb

const
  xcbXkbMajorVersion* = 1
  xcbXkbMinorVersion* = 0
  xcbXkbKeyboard* = 0
  xcbXkbUseExtension* = 0
  xcbXkbSelectEvents* = 1
  xcbXkbBell* = 3
  xcbXkbGetState* = 4
  xcbXkbLatchLockState* = 5
  xcbXkbGetControls* = 6
  xcbXkbSetControls* = 7
  xcbXkbGetMap* = 8
  xcbXkbSetMap* = 9
  xcbXkbGetCompatMap* = 10
  xcbXkbSetCompatMap* = 11
  xcbXkbGetIndicatorState* = 12
  xcbXkbGetIndicatorMap* = 13
  xcbXkbSetIndicatorMap* = 14
  xcbXkbGetNamedIndicator* = 15
  xcbXkbSetNamedIndicator* = 16
  xcbXkbGetNames* = 17
  xcbXkbSetNames* = 18
  xcbXkbPerClientFlags* = 21
  xcbXkbListComponents* = 22
  xcbXkbGetKbdByName* = 23
  xcbXkbGetDeviceInfo* = 24
  xcbXkbSetDeviceInfo* = 25
  xcbXkbSetDebuggingFlags* = 101
  xcbXkbNewKeyboardNotify* = 0
  xcbXkbMapNotify* = 1
  xcbXkbStateNotify* = 2
  xcbXkbControlsNotify* = 3
  xcbXkbIndicatorStateNotify* = 4
  xcbXkbIndicatorMapNotify* = 5
  xcbXkbNamesNotify* = 6
  xcbXkbCompatMapNotify* = 7
  xcbXkbBellNotify* = 8
  xcbXkbActionMessage* = 9
  xcbXkbAccessXNotify* = 10
  xcbXkbExtensionDeviceNotify* = 11

{.passl: "-lxcb-xkb".}
{.push header: "xcb/xkb.h".}

var xcbXkbId* {.extern: "xcb_xkb_id".}: XcbExtension

type
  XcbXkbDeviceSpec* {.importc: "xcb_xkb_device_spec_t".} = distinct uint16
  XcbXkbLedClassSpec* {.importc: "xcb_xkb_led_class_spec_t".} = distinct uint16
  XcbXkbBellClassSpec* {.importc: "xcb_xkb_bell_class_spec_t".} = distinct uint16
  XcbXkbIdSpec* {.importc: "xcb_xkb_id_spec_t".} = distinct uint16
  XcbXkbString8* {.importc: "xcb_xkb_string8_t".} = char

  XcbXkbConst* {.importc: "xcb_xkb_const_t".} = enum
    xcbXkbConstKeyNameLength = 4, xcbXkbConstPerKeyBitArraySize = 32,
    xcbXkbConstMaxLegalKeyCode = 255

  XcbXkbEventType* {.importc: "xcb_xkb_event_type_t".} = enum
    xcbXkbEventTypeNewKeyboardNotify = 1, xcbXkbEventTypeMapNotify = 2,
    xcbXkbEventTypeStateNotify = 4, xcbXkbEventTypeControlsNotify = 8,
    xcbXkbEventTypeIndicatorStateNotify = 16,
    xcbXkbEventTypeIndicatorMapNotify = 32,
    xcbXkbEventTypeNamesNotify = 64,
    xcbXkbEventTypeCompatMapNotify = 128,
    xcbXkbEventTypeBellNotify = 256, xcbXkbEventTypeActionMessage = 512,
    xcbXkbEventTypeAccessXNotify = 1024,
    xcbXkbEventTypeExtensionDeviceNotify = 2048

  XcbXkbNknDetail* {.importc: "xcb_xkb_nkn_detail_t".} = enum
    xcbXkbNknDetailKeycodes = 1, xcbXkbNknDetailGeometry = 2,
    xcbXkbNknDetailDeviceId = 4

  XcbXkbAxnDetail* {.importc: "xcb_xkb_axn_detail_t".} = enum
    xcbXkbAxnDetailSkPress = 1, xcbXkbAxnDetailSkAccept = 2,
    xcbXkbAxnDetailSkReject = 4, xcbXkbAxnDetailSkRelease = 8,
    xcbXkbAxnDetailBkAccept = 16, xcbXkbAxnDetailBkReject = 32,
    xcbXkbAxnDetailAxkWarning = 64

  XcbXkbMapPart* {.importc: "xcb_xkb_map_part_t".} = enum
    xcbXkbMapPartKeyTypes = 1, xcbXkbMapPartKeySyms = 2,
    xcbXkbMapPartModifierMap = 4, xcbXkbMapPartExplicitComponents = 8,
    xcbXkbMapPartKeyActions = 16, xcbXkbMapPartKeyBehaviors = 32,
    xcbXkbMapPartVirtualMods = 64, xcbXkbMapPartVirtualModMap = 128

  XcbXkbSetMapFlags* {.importc: "xcb_xkb_set_map_flags_t".} = enum
    xcbXkbSetMapFlagsResizeTypes = 1,
    xcbXkbSetMapFlagsRecomputeActions = 2

  XcbXkbStatePart* {.importc: "xcb_xkb_state_part_t".} = enum
    xcbXkbStatePartModifierState = 1, xcbXkbStatePartModifierBase = 2,
    xcbXkbStatePartModifierLatch = 4, xcbXkbStatePartModifierLock = 8,
    xcbXkbStatePartGroupState = 16, xcbXkbStatePartGroupBase = 32,
    xcbXkbStatePartGroupLatch = 64, xcbXkbStatePartGroupLock = 128,
    xcbXkbStatePartCompatState = 256, xcbXkbStatePartGrabMods = 512,
    xcbXkbStatePartCompatGrabMods = 1024,
    xcbXkbStatePartLookupMods = 2048,
    xcbXkbStatePartCompatLookupMods = 4096,
    xcbXkbStatePartPointerButtons = 8192

  XcbXkbBoolCtrl* {.importc: "xcb_xkb_bool_ctrl_t".} = enum
    xcbXkbBoolCtrlRepeatKeys = 1, xcbXkbBoolCtrlSlowKeys = 2,
    xcbXkbBoolCtrlBounceKeys = 4, xcbXkbBoolCtrlStickyKeys = 8,
    xcbXkbBoolCtrlMouseKeys = 16, xcbXkbBoolCtrlMouseKeysAccel = 32,
    xcbXkbBoolCtrlAccessXKeys = 64,
    xcbXkbBoolCtrlAccessXTimeoutMask = 128,
    xcbXkbBoolCtrlAccessXFeedbackMask = 256,
    xcbXkbBoolCtrlAudibleBellMask = 512,
    xcbXkbBoolCtrlOverlay1Mask = 1024,
    xcbXkbBoolCtrlOverlay2Mask = 2048,
    xcbXkbBoolCtrlIgnoreGroupLockMask = 4096

  XcbXkbControl* {.importc: "xcb_xkb_control_t".} = enum
    xcbXkbControlGroupsWrap = 134217728,
    xcbXkbControlInternalMods = 268435456,
    xcbXkbControlIgnoreLockMods = 536870912,
    xcbXkbControlPerKeyRepeat = 1073741824,
    xcbXkbControlControlsEnabled = 2147483648'i64

  XcbXkbAxOption* {.importc: "xcb_xkb_ax_option_t".} = enum
    xcbXkbAxOptionSkPressFb = 1, xcbXkbAxOptionSkAcceptFb = 2,
    xcbXkbAxOptionFeatureFb = 4, xcbXkbAxOptionSlowWarnFb = 8,
    xcbXkbAxOptionIndicatorFb = 16, xcbXkbAxOptionStickyKeysFb = 32,
    xcbXkbAxOptionTwoKeys = 64, xcbXkbAxOptionLatchToLock = 128,
    xcbXkbAxOptionSkReleaseFb = 256, xcbXkbAxOptionSkRejectFb = 512,
    xcbXkbAxOptionBkRejectFb = 1024, xcbXkbAxOptionDumbBell = 2048

  XcbXkbDeviceSpecIterator* {.importc: "xcb_xkb_device_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbDeviceSpec]
    rem*: cint
    index*: cint

  XcbXkbLedClassResult* {.importc: "xcb_xkb_led_class_result_t".} = enum
    xcbXkbLedClassResultKbdFeedbackClass = 0,
    xcbXkbLedClassResultLedFeedbackClass = 4

  XcbXkbLedClass* {.importc: "xcb_xkb_led_class_t".} = enum
    xcbXkbLedClassKbdFeedbackClass = 0,
    xcbXkbLedClassLedFeedbackClass = 4,
    xcbXkbLedClassDfltXiClass = 768, xcbXkbLedClassAllXiClasses = 1280

  XcbXkbLedClassSpecIterator* {.importc: "xcb_xkb_led_class_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbLedClassSpec]
    rem*: cint
    index*: cint

  XcbXkbBellClassResult* {.importc: "xcb_xkb_bell_class_result_t".} = enum
    xcbXkbBellClassResultKbdFeedbackClass = 0,
    xcbXkbBellClassResultBellFeedbackClass = 5

  XcbXkbBellClass* {.importc: "xcb_xkb_bell_class_t".} = enum
    xcbXkbBellClassKbdFeedbackClass = 0,
    xcbXkbBellClassBellFeedbackClass = 5,
    xcbXkbBellClassDfltXiClass = 768

  XcbXkbBellClassSpecIterator* {.importc: "xcb_xkb_bell_class_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbBellClassSpec]
    rem*: cint
    index*: cint

  XcbXkbId* {.importc: "xcb_xkb_id_t".} = enum
    xcbXkbIdUseCoreKbd = 256, xcbXkbIdUseCorePtr = 512,
    xcbXkbIdDfltXiClass = 768, xcbXkbIdDfltXiId = 1024,
    xcbXkbIdAllXiClass = 1280, xcbXkbIdAllXiId = 1536,
    xcbXkbIdXiNone = 65280

  XcbXkbIdSpecIterator* {.importc: "xcb_xkb_id_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbIdSpec]
    rem*: cint
    index*: cint

  XcbXkbGroup* {.importc: "xcb_xkb_group_t".} = enum
    xcbXkbGroup1 = 0, xcbXkbGroup2 = 1, xcbXkbGroup3 = 2, xcbXkbGroup4 = 3

  XcbXkbGroups* {.importc: "xcb_xkb_groups_t".} = enum
    xcbXkbGroupsAny = 254, xcbXkbGroupsAll = 255

  XcbXkbSetOfGroup* {.importc: "xcb_xkb_set_of_group_t".} = enum
    xcbXkbSetOfGroupGroup1 = 1, xcbXkbSetOfGroupGroup2 = 2,
    xcbXkbSetOfGroupGroup3 = 4, xcbXkbSetOfGroupGroup4 = 8

  XcbXkbSetOfGroups* {.importc: "xcb_xkb_set_of_groups_t".} = enum
    xcbXkbSetOfGroupsAny = 128

  XcbXkbGroupsWrap* {.importc: "xcb_xkb_groups_wrap_t".} = enum
    xcbXkbGroupsWrapWrapIntoRange = 0,
    xcbXkbGroupsWrapClampIntoRange = 64,
    xcbXkbGroupsWrapRedirectIntoRange = 128

  XcbXkbVModsHigh* {.importc: "xcb_xkb_v_mods_high_t".} = enum
    xcbXkbVModsHigh8 = 1, xcbXkbVModsHigh9 = 2, xcbXkbVModsHigh10 = 4,
    xcbXkbVModsHigh11 = 8, xcbXkbVModsHigh12 = 16,
    xcbXkbVModsHigh13 = 32, xcbXkbVModsHigh14 = 64,
    xcbXkbVModsHigh15 = 128

  XcbXkbVModsLow* {.importc: "xcb_xkb_v_mods_low_t".} = enum
    xcbXkbVModsLow0 = 1, xcbXkbVModsLow1 = 2, xcbXkbVModsLow2 = 4,
    xcbXkbVModsLow3 = 8, xcbXkbVModsLow4 = 16, xcbXkbVModsLow5 = 32,
    xcbXkbVModsLow6 = 64, xcbXkbVModsLow7 = 128

  XcbXkbVMod* {.importc: "xcb_xkb_v_mod_t".} = enum
    xcbXkbVMod0 = 1, xcbXkbVMod1 = 2, xcbXkbVMod2 = 4, xcbXkbVMod3 = 8,
    xcbXkbVMod4 = 16, xcbXkbVMod5 = 32, xcbXkbVMod6 = 64,
    xcbXkbVMod7 = 128, xcbXkbVMod8 = 256, xcbXkbVMod9 = 512,
    xcbXkbVMod10 = 1024, xcbXkbVMod11 = 2048, xcbXkbVMod12 = 4096,
    xcbXkbVMod13 = 8192, xcbXkbVMod14 = 16384, xcbXkbVMod15 = 32768

  XcbXkbExplicit* {.importc: "xcb_xkb_explicit_t".} = enum
    xcbXkbExplicitKeyType1 = 1, xcbXkbExplicitKeyType2 = 2,
    xcbXkbExplicitKeyType3 = 4, xcbXkbExplicitKeyType4 = 8,
    xcbXkbExplicitInterpret = 16, xcbXkbExplicitAutoRepeat = 32,
    xcbXkbExplicitBehavior = 64, xcbXkbExplicitVModMap = 128

  XcbXkbSymInterpretMatch* {.importc: "xcb_xkb_sym_interpret_match_t".} = enum
    xcbXkbSymInterpretMatchNoneOf = 0,
    xcbXkbSymInterpretMatchAnyOfOrNone = 1,
    xcbXkbSymInterpretMatchAnyOf = 2, xcbXkbSymInterpretMatchAllOf = 3,
    xcbXkbSymInterpretMatchExactly = 4

  XcbXkbSymInterpMatch* {.importc: "xcb_xkb_sym_interp_match_t".} = enum
    xcbXkbSymInterpMatchOpMask = 127,
    xcbXkbSymInterpMatchLevelOneOnly = 128

  XcbXkbImFlag* {.importc: "xcb_xkb_im_flag_t".} = enum
    xcbXkbImFlagLedDrivesKb = 32, xcbXkbImFlagNoAutomatic = 64,
    xcbXkbImFlagNoExplicit = 128

  XcbXkbImModsWhich* {.importc: "xcb_xkb_im_mods_which_t".} = enum
    xcbXkbImModsWhichUseBase = 1, xcbXkbImModsWhichUseLatched = 2,
    xcbXkbImModsWhichUseLocked = 4, xcbXkbImModsWhichUseEffective = 8,
    xcbXkbImModsWhichUseCompat = 16

  XcbXkbImGroupsWhich* {.importc: "xcb_xkb_im_groups_which_t".} = enum
    xcbXkbImGroupsWhichUseBase = 1, xcbXkbImGroupsWhichUseLatched = 2,
    xcbXkbImGroupsWhichUseLocked = 4,
    xcbXkbImGroupsWhichUseEffective = 8,
    xcbXkbImGroupsWhichUseCompat = 16

  XcbXkbIndicatorMap* {.importc: "xcb_xkb_indicator_map_t", bycopy.} = object
    flags*: uint8
    whichGroups*: uint8
    groups*: uint8
    whichMods*: uint8
    mods*: uint8
    realMods*: uint8
    vmods*: uint16
    ctrls*: uint32

  XcbXkbIndicatorMapIterator* {.importc: "xcb_xkb_indicator_map_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbIndicatorMap]
    rem*: cint
    index*: cint

  XcbXkbCmDetail* {.importc: "xcb_xkb_cm_detail_t".} = enum
    xcbXkbCmDetailSymInterp = 1, xcbXkbCmDetailGroupCompat = 2

  XcbXkbNameDetail* {.importc: "xcb_xkb_name_detail_t".} = enum
    xcbXkbNameDetailKeycodes = 1, xcbXkbNameDetailGeometry = 2,
    xcbXkbNameDetailSymbols = 4, xcbXkbNameDetailPhysSymbols = 8,
    xcbXkbNameDetailTypes = 16, xcbXkbNameDetailCompat = 32,
    xcbXkbNameDetailKeyTypeNames = 64,
    xcbXkbNameDetailKtLevelNames = 128,
    xcbXkbNameDetailIndicatorNames = 256, xcbXkbNameDetailKeyNames = 512,
    xcbXkbNameDetailKeyAliases = 1024,
    xcbXkbNameDetailVirtualModNames = 2048,
    xcbXkbNameDetailGroupNames = 4096, xcbXkbNameDetailRgNames = 8192

  XcbXkbGbnDetail* {.importc: "xcb_xkb_gbn_detail_t".} = enum
    xcbXkbGbnDetailTypes = 1, xcbXkbGbnDetailCompatMap = 2,
    xcbXkbGbnDetailClientSymbols = 4, xcbXkbGbnDetailServerSymbols = 8,
    xcbXkbGbnDetailIndicatorMaps = 16, xcbXkbGbnDetailKeyNames = 32,
    xcbXkbGbnDetailGeometry = 64, xcbXkbGbnDetailOtherNames = 128

  XcbXkbXiFeature* {.importc: "xcb_xkb_xi_feature_t".} = enum
    xcbXkbXiFeatureKeyboards = 1, xcbXkbXiFeatureButtonActions = 2,
    xcbXkbXiFeatureIndicatorNames = 4, xcbXkbXiFeatureIndicatorMaps = 8,
    xcbXkbXiFeatureIndicatorState = 16

  XcbXkbPerClientFlag* {.importc: "xcb_xkb_per_client_flag_t".} = enum
    xcbXkbPerClientFlagDetectableAutoRepeat = 1,
    xcbXkbPerClientFlagGrabsUseXkbState = 2,
    xcbXkbPerClientFlagAutoResetControls = 4,
    xcbXkbPerClientFlagLookupStateWhenGrabbed = 8,
    xcbXkbPerClientFlagSendEventUsesXkbState = 16

  XcbXkbModDef* {.importc: "xcb_xkb_mod_def_t", bycopy.} = object
    mask*: uint8
    realMods*: uint8
    vmods*: uint16

  XcbXkbModDefIterator* {.importc: "xcb_xkb_mod_def_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbModDef]
    rem*: cint
    index*: cint

  XcbXkbKeyName* {.importc: "xcb_xkb_key_name_t", bycopy.} = object
    name*: array[4, char]

  XcbXkbKeyNameIterator* {.importc: "xcb_xkb_key_name_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeyName]
    rem*: cint
    index*: cint

  XcbXkbKeyAlias* {.importc: "xcb_xkb_key_alias_t", bycopy.} = object
    real*: array[4, char]
    alias*: array[4, char]

  XcbXkbKeyAliasIterator* {.importc: "xcb_xkb_key_alias_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeyAlias]
    rem*: cint
    index*: cint

  XcbXkbCountedString16* {.importc: "xcb_xkb_counted_string16_t", bycopy.} = object
    length*: uint16

  XcbXkbCountedString16Iterator* {.importc: "xcb_xkb_counted_string16_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbCountedString16]
    rem*: cint
    index*: cint

  XcbXkbKtMapEntry* {.importc: "xcb_xkb_kt_map_entry_t", bycopy.} = object
    active*: uint8
    modsMask* {.importc: "mods_mask".}: uint8
    level*: uint8
    modsMods* {.importc: "mods_mods".}: uint8
    modsVmods* {.importc: "mods_vmods".}: uint16
    pad0: array[2, uint8]

  XcbXkbKtMapEntryIterator* {.importc: "xcb_xkb_kt_map_entry_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKtMapEntry]
    rem*: cint
    index*: cint

  XcbXkbKeyType* {.importc: "xcb_xkb_key_type_t", bycopy.} = object
    modsMask* {.importc: "mods_mask".}: uint8
    modsMods* {.importc: "mods_mods".}: uint8
    modsVmods* {.importc: "mods_vmods".}: uint16
    numLevels*: uint8
    nMapEntries*: uint8
    hasPreserve*: uint8
    pad0: uint8

  XcbXkbKeyTypeIterator* {.importc: "xcb_xkb_key_type_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeyType]
    rem*: cint
    index*: cint

  XcbXkbKeySymMap* {.importc: "xcb_xkb_key_sym_map_t", bycopy.} = object
    ktIndex* {.importc: "kt_index".}: array[4, uint8]
    groupInfo*: uint8
    width*: uint8
    nSyms*: uint16

  XcbXkbKeySymMapIterator* {.importc: "xcb_xkb_key_sym_map_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeySymMap]
    rem*: cint
    index*: cint

  XcbXkbCommonBehavior* {.importc: "xcb_xkb_common_behavior_t", bycopy.} = object
    `type`*: uint8
    data*: uint8

  XcbXkbCommonBehaviorIterator* {.importc: "xcb_xkb_common_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbCommonBehavior]
    rem*: cint
    index*: cint

  XcbXkbDefaultBehavior* {.importc: "xcb_xkb_default_behavior_t", bycopy.} = object
    `type`*: uint8
    pad0: uint8

  XcbXkbDefaultBehaviorIterator* {.importc: "xcb_xkb_default_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbDefaultBehavior]
    rem*: cint
    index*: cint

  XcbXkbLockBehavior* {.importc: "xcb_xkb_lock_behavior_t", bycopy.} = object
    `type`*: uint8
    pad0: uint8

  XcbXkbLockBehaviorIterator* {.importc: "xcb_xkb_lock_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbLockBehavior]
    rem*: cint
    index*: cint

  XcbXkbRadioGroupBehavior* {.importc: "xcb_xkb_radio_group_behavior_t", bycopy.} = object
    `type`*: uint8
    group*: uint8

  XcbXkbRadioGroupBehaviorIterator* {.importc: "xcb_xkb_radio_group_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbRadioGroupBehavior]
    rem*: cint
    index*: cint

  XcbXkbOverlayBehavior* {.importc: "xcb_xkb_overlay_behavior_t", bycopy.} = object
    `type`*: uint8
    key*: XcbKeycode

  XcbXkbOverlayBehaviorIterator* {.importc: "xcb_xkb_overlay_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbOverlayBehavior]
    rem*: cint
    index*: cint

  XcbXkbPermamentLockBehavior* {.importc: "xcb_xkb_permament_lock_behavior_t", bycopy.} = object
    `type`*: uint8
    pad0: uint8

  XcbXkbPermamentLockBehaviorIterator* {.importc: "xcb_xkb_permament_lock_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbPermamentLockBehavior]
    rem*: cint
    index*: cint

  XcbXkbPermamentRadioGroupBehavior* {.importc: "xcb_xkb_permament_radio_group_behavior_t", bycopy.} = object
    `type`*: uint8
    group*: uint8

  XcbXkbPermamentRadioGroupBehaviorIterator* {.importc: "xcb_xkb_permament_radio_group_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbPermamentRadioGroupBehavior]
    rem*: cint
    index*: cint

  XcbXkbPermamentOverlayBehavior* {.importc: "xcb_xkb_permament_overlay_behavior_t", bycopy.} = object
    `type`*: uint8
    key*: XcbKeycode

  XcbXkbPermamentOverlayBehaviorIterator* {.importc: "xcb_xkb_permament_overlay_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbPermamentOverlayBehavior]
    rem*: cint
    index*: cint

  XcbXkbBehavior* {.importc: "xcb_xkb_behavior_t", bycopy, union.} = object
    common*: XcbXkbCommonBehavior
    default* {.importc: "_default".}: XcbXkbDefaultBehavior
    lock*: XcbXkbLockBehavior
    radioGroup*: XcbXkbRadioGroupBehavior
    overlay1*: XcbXkbOverlayBehavior
    overlay2*: XcbXkbOverlayBehavior
    permamentLock*: XcbXkbPermamentLockBehavior
    permamentRadioGroup*: XcbXkbPermamentRadioGroupBehavior
    permamentOverlay1*: XcbXkbPermamentOverlayBehavior
    permamentOverlay2*: XcbXkbPermamentOverlayBehavior
    `type`*: uint8

  XcbXkbBehaviorIterator* {.importc: "xcb_xkb_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbBehavior]
    rem*: cint
    index*: cint

  XcbXkbBehaviorType* {.importc: "xcb_xkb_behavior_type_t".} = enum
    xcbXkbBehaviorTypeDefault = 0, xcbXkbBehaviorTypeLock = 1,
    xcbXkbBehaviorTypeRadioGroup = 2, xcbXkbBehaviorTypeOverlay1 = 3,
    xcbXkbBehaviorTypeOverlay2 = 4,
    xcbXkbBehaviorTypePermamentLock = 129,
    xcbXkbBehaviorTypePermamentRadioGroup = 130,
    xcbXkbBehaviorTypePermamentOverlay1 = 131,
    xcbXkbBehaviorTypePermamentOverlay2 = 132

  XcbXkbSetBehavior* {.importc: "xcb_xkb_set_behavior_t", bycopy.} = object
    keycode*: XcbKeycode
    behavior*: XcbXkbBehavior
    pad0: uint8

  XcbXkbSetBehaviorIterator* {.importc: "xcb_xkb_set_behavior_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSetBehavior]
    rem*: cint
    index*: cint

  XcbXkbSetExplicit* {.importc: "xcb_xkb_set_explicit_t", bycopy.} = object
    keycode*: XcbKeycode
    explicit*: uint8

  XcbXkbSetExplicitIterator* {.importc: "xcb_xkb_set_explicit_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSetExplicit]
    rem*: cint
    index*: cint

  XcbXkbKeyModMap* {.importc: "xcb_xkb_key_mod_map_t", bycopy.} = object
    keycode*: XcbKeycode
    mods*: uint8

  XcbXkbKeyModMapIterator* {.importc: "xcb_xkb_key_mod_map_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeyModMap]
    rem*: cint
    index*: cint

  XcbXkbKeyVModMap* {.importc: "xcb_xkb_key_v_mod_map_t", bycopy.} = object
    keycode*: XcbKeycode
    pad0: uint8
    vmods*: uint16

  XcbXkbKeyVModMapIterator* {.importc: "xcb_xkb_key_v_mod_map_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKeyVModMap]
    rem*: cint
    index*: cint

  XcbXkbKtSetMapEntry* {.importc: "xcb_xkb_kt_set_map_entry_t", bycopy.} = object
    level*: uint8
    realMods*: uint8
    virtualMods*: uint16

  XcbXkbKtSetMapEntryIterator* {.importc: "xcb_xkb_kt_set_map_entry_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKtSetMapEntry]
    rem*: cint
    index*: cint

  XcbXkbSetKeyType* {.importc: "xcb_xkb_set_key_type_t", bycopy.} = object
    mask*: uint8
    realMods*: uint8
    virtualMods*: uint16
    numLevels*: uint8
    nMapEntries*: uint8
    preserve*: uint8
    pad0: uint8

  XcbXkbSetKeyTypeIterator* {.importc: "xcb_xkb_set_key_type_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSetKeyType]
    rem*: cint
    index*: cint

  XcbXkbString8Iterator* {.importc: "xcb_xkb_string8_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbString8]
    rem*: cint
    index*: cint

  XcbXkbOutline* {.importc: "xcb_xkb_outline_t", bycopy.} = object
    nPoints*: uint8
    cornerRadius*: uint8
    pad0: array[2, uint8]

  XcbXkbOutlineIterator* {.importc: "xcb_xkb_outline_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbOutline]
    rem*: cint
    index*: cint

  XcbXkbShape* {.importc: "xcb_xkb_shape_t", bycopy.} = object
    name*: XcbAtom
    nOutlines*: uint8
    primaryNdx*: uint8
    approxNdx*: uint8
    pad0: uint8

  XcbXkbShapeIterator* {.importc: "xcb_xkb_shape_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbShape]
    rem*: cint
    index*: cint

  XcbXkbKey* {.importc: "xcb_xkb_key_t", bycopy.} = object
    name*: array[4, XcbXkbString8]
    gap*: int16
    shapeNdx*: uint8
    colorNdx*: uint8

  XcbXkbKeyIterator* {.importc: "xcb_xkb_key_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbKey]
    rem*: cint
    index*: cint

  XcbXkbOverlayKey* {.importc: "xcb_xkb_overlay_key_t", bycopy.} = object
    over*: array[4, XcbXkbString8]
    under*: array[4, XcbXkbString8]

  XcbXkbOverlayKeyIterator* {.importc: "xcb_xkb_overlay_key_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbOverlayKey]
    rem*: cint
    index*: cint

  XcbXkbOverlayRow* {.importc: "xcb_xkb_overlay_row_t", bycopy.} = object
    rowUnder*: uint8
    nKeys*: uint8
    pad0: array[2, uint8]

  XcbXkbOverlayRowIterator* {.importc: "xcb_xkb_overlay_row_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbOverlayRow]
    rem*: cint
    index*: cint

  XcbXkbOverlay* {.importc: "xcb_xkb_overlay_t", bycopy.} = object
    name*: XcbAtom
    nRows*: uint8
    pad0: array[3, uint8]

  XcbXkbOverlayIterator* {.importc: "xcb_xkb_overlay_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbOverlay]
    rem*: cint
    index*: cint

  XcbXkbRow* {.importc: "xcb_xkb_row_t", bycopy.} = object
    top*: int16
    left*: int16
    nKeys*: uint8
    vertical*: uint8
    pad0: array[2, uint8]

  XcbXkbRowIterator* {.importc: "xcb_xkb_row_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbRow]
    rem*: cint
    index*: cint

  XcbXkbDoodadType* {.importc: "xcb_xkb_doodad_type_t".} = enum
    xcbXkbDoodadTypeOutline = 1, xcbXkbDoodadTypeSolid = 2,
    xcbXkbDoodadTypeText = 3, xcbXkbDoodadTypeIndicator = 4,
    xcbXkbDoodadTypeLogo = 5

  XcbXkbListing* {.importc: "xcb_xkb_listing_t", bycopy.} = object
    flags*: uint16
    length*: uint16

  XcbXkbListingIterator* {.importc: "xcb_xkb_listing_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbListing]
    rem*: cint
    index*: cint

  XcbXkbDeviceLedInfo* {.importc: "xcb_xkb_device_led_info_t", bycopy.} = object
    ledClass*: XcbXkbLedClassSpec
    ledID*: XcbXkbIdSpec
    namesPresent*: uint32
    mapsPresent*: uint32
    physIndicators*: uint32
    state*: uint32

  XcbXkbDeviceLedInfoIterator* {.importc: "xcb_xkb_device_led_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbDeviceLedInfo]
    rem*: cint
    index*: cint

  XcbXkbError* {.importc: "xcb_xkb_error_t".} = enum
    xcbXkbErrorBadId = 253, xcbXkbErrorBadClass = 254,
    xcbXkbErrorBadDevice = 255

  XcbXkbKeyboardError* {.importc: "xcb_xkb_keyboard_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    value*: uint32
    minorOpcode*: uint16
    majorOpcode*: uint8
    pad0: array[21, uint8]

  XcbXkbSa* {.importc: "xcb_xkb_sa_t".} = enum
    xcbXkbSaClearLocks = 1, xcbXkbSaLatchToLock = 2,
    xcbXkbSaUseModMapMods = 4

  XcbXkbSaType* {.importc: "xcb_xkb_sa_type_t".} = enum
    xcbXkbSaTypeNoAction = 0, xcbXkbSaTypeSetMods = 1,
    xcbXkbSaTypeLatchMods = 2, xcbXkbSaTypeLockMods = 3,
    xcbXkbSaTypeSetGroup = 4, xcbXkbSaTypeLatchGroup = 5,
    xcbXkbSaTypeLockGroup = 6, xcbXkbSaTypeMovePtr = 7,
    xcbXkbSaTypePtrBtn = 8, xcbXkbSaTypeLockPtrBtn = 9,
    xcbXkbSaTypeSetPtrDflt = 10, xcbXkbSaTypeIsoLock = 11,
    xcbXkbSaTypeTerminate = 12, xcbXkbSaTypeSwitchScreen = 13,
    xcbXkbSaTypeSetControls = 14, xcbXkbSaTypeLockControls = 15,
    xcbXkbSaTypeActionMessage = 16, xcbXkbSaTypeRedirectKey = 17,
    xcbXkbSaTypeDeviceBtn = 18, xcbXkbSaTypeLockDeviceBtn = 19,
    xcbXkbSaTypeDeviceValuator = 20

  XcbXkbSaNoAction* {.importc: "xcb_xkb_sa_no_action_t", bycopy.} = object
    `type`*: uint8
    pad0: array[7, uint8]

  XcbXkbSaNoActionIterator* {.importc: "xcb_xkb_sa_no_action_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaNoAction]
    rem*: cint
    index*: cint

  XcbXkbSaSetMods* {.importc: "xcb_xkb_sa_set_mods_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    mask*: uint8
    realMods*: uint8
    vmodsHigh*: uint8
    vmodsLow*: uint8
    pad0: array[2, uint8]

  XcbXkbSaSetModsIterator* {.importc: "xcb_xkb_sa_set_mods_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaSetMods]
    rem*: cint
    index*: cint

  XcbXkbSaLatchMods* {.importc: "xcb_xkb_sa_latch_mods_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    mask*: uint8
    realMods*: uint8
    vmodsHigh*: uint8
    vmodsLow*: uint8
    pad0: array[2, uint8]

  XcbXkbSaLatchModsIterator* {.importc: "xcb_xkb_sa_latch_mods_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLatchMods]
    rem*: cint
    index*: cint

  XcbXkbSaLockMods* {.importc: "xcb_xkb_sa_lock_mods_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    mask*: uint8
    realMods*: uint8
    vmodsHigh*: uint8
    vmodsLow*: uint8
    pad0: array[2, uint8]

  XcbXkbSaLockModsIterator* {.importc: "xcb_xkb_sa_lock_mods_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLockMods]
    rem*: cint
    index*: cint

  XcbXkbSaSetGroup* {.importc: "xcb_xkb_sa_set_group_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    group*: int8
    pad0: array[5, uint8]

  XcbXkbSaSetGroupIterator* {.importc: "xcb_xkb_sa_set_group_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaSetGroup]
    rem*: cint
    index*: cint

  XcbXkbSaLatchGroup* {.importc: "xcb_xkb_sa_latch_group_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    group*: int8
    pad0: array[5, uint8]

  XcbXkbSaLatchGroupIterator* {.importc: "xcb_xkb_sa_latch_group_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLatchGroup]
    rem*: cint
    index*: cint

  XcbXkbSaLockGroup* {.importc: "xcb_xkb_sa_lock_group_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    group*: int8
    pad0: array[5, uint8]

  XcbXkbSaLockGroupIterator* {.importc: "xcb_xkb_sa_lock_group_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLockGroup]
    rem*: cint
    index*: cint

  XcbXkbSaMovePtrFlag* {.importc: "xcb_xkb_sa_move_ptr_flag_t".} = enum
    xcbXkbSaMovePtrFlagNoAcceleration = 1,
    xcbXkbSaMovePtrFlagMoveAbsoluteX = 2,
    xcbXkbSaMovePtrFlagMoveAbsoluteY = 4

  XcbXkbSaMovePtr* {.importc: "xcb_xkb_sa_move_ptr_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    xHigh*: int8
    xLow*: uint8
    yHigh*: int8
    yLow*: uint8
    pad0: array[2, uint8]

  XcbXkbSaMovePtrIterator* {.importc: "xcb_xkb_sa_move_ptr_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaMovePtr]
    rem*: cint
    index*: cint

  XcbXkbSaPtrBtn* {.importc: "xcb_xkb_sa_ptr_btn_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    count*: uint8
    button*: uint8
    pad0: array[4, uint8]

  XcbXkbSaPtrBtnIterator* {.importc: "xcb_xkb_sa_ptr_btn_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaPtrBtn]
    rem*: cint
    index*: cint

  XcbXkbSaLockPtrBtn* {.importc: "xcb_xkb_sa_lock_ptr_btn_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    pad0: uint8
    button*: uint8
    pad1: array[4, uint8]

  XcbXkbSaLockPtrBtnIterator* {.importc: "xcb_xkb_sa_lock_ptr_btn_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLockPtrBtn]
    rem*: cint
    index*: cint

  XcbXkbSaSetPtrDfltFlag* {.importc: "xcb_xkb_sa_set_ptr_dflt_flag_t".} = enum
    xcbXkbSaSetPtrDfltFlagAffectDfltButton = 1,
    xcbXkbSaSetPtrDfltFlagDfltBtnAbsolute = 4

  XcbXkbSaSetPtrDflt* {.importc: "xcb_xkb_sa_set_ptr_dflt_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    affect*: uint8
    value*: int8
    pad0: array[4, uint8]

  XcbXkbSaSetPtrDfltIterator* {.importc: "xcb_xkb_sa_set_ptr_dflt_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaSetPtrDflt]
    rem*: cint
    index*: cint

  XcbXkbSaIsoLockFlag* {.importc: "xcb_xkb_sa_iso_lock_flag_t".} = enum
    xcbXkbSaIsoLockFlagNoLock = 1, xcbXkbSaIsoLockFlagNoUnlock = 2,
    xcbXkbSaIsoLockFlagUseModMapMods = 4,
    xcbXkbSaIsoLockFlagIsoDfltIsGroup = 8

  XcbXkbSaIsoLockNoAffect* {.importc: "xcb_xkb_sa_iso_lock_no_affect_t".} = enum
    xcbXkbSaIsoLockNoAffectCtrls = 8,
    xcbXkbSaIsoLockNoAffectPtr = 16,
    xcbXkbSaIsoLockNoAffectGroup = 32,
    xcbXkbSaIsoLockNoAffectMods = 64

  XcbXkbSaIsoLock* {.importc: "xcb_xkb_sa_iso_lock_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    mask*: uint8
    realMods*: uint8
    group*: int8
    affect*: uint8
    vmodsHigh*: uint8
    vmodsLow*: uint8

  XcbXkbSaIsoLockIterator* {.importc: "xcb_xkb_sa_iso_lock_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaIsoLock]
    rem*: cint
    index*: cint

  XcbXkbSaTerminate* {.importc: "xcb_xkb_sa_terminate_t", bycopy.} = object
    `type`*: uint8
    pad0: array[7, uint8]

  XcbXkbSaTerminateIterator* {.importc: "xcb_xkb_sa_terminate_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaTerminate]
    rem*: cint
    index*: cint

  XcbXkbSwitchScreenFlag* {.importc: "xcb_xkb_switch_screen_flag_t".} = enum
    xcbXkbSwitchScreenFlagApplication = 1,
    xcbXkbSwitchScreenFlagAbsolute = 4

  XcbXkbSaSwitchScreen* {.importc: "xcb_xkb_sa_switch_screen_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    newScreen*: int8
    pad0: array[5, uint8]

  XcbXkbSaSwitchScreenIterator* {.importc: "xcb_xkb_sa_switch_screen_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaSwitchScreen]
    rem*: cint
    index*: cint

  XcbXkbBoolCtrlsHigh* {.importc: "xcb_xkb_bool_ctrls_high_t".} = enum
    xcbXkbBoolCtrlsHighAccessXFeedback = 1,
    xcbXkbBoolCtrlsHighAudibleBell = 2,
    xcbXkbBoolCtrlsHighOverlay1 = 4, xcbXkbBoolCtrlsHighOverlay2 = 8,
    xcbXkbBoolCtrlsHighIgnoreGroupLock = 16

  XcbXkbBoolCtrlsLow* {.importc: "xcb_xkb_bool_ctrls_low_t".} = enum
    xcbXkbBoolCtrlsLowRepeatKeys = 1, xcbXkbBoolCtrlsLowSlowKeys = 2,
    xcbXkbBoolCtrlsLowBounceKeys = 4, xcbXkbBoolCtrlsLowStickyKeys = 8,
    xcbXkbBoolCtrlsLowMouseKeys = 16,
    xcbXkbBoolCtrlsLowMouseKeysAccel = 32,
    xcbXkbBoolCtrlsLowAccessXKeys = 64,
    xcbXkbBoolCtrlsLowAccessXTimeout = 128

  XcbXkbSaSetControls* {.importc: "xcb_xkb_sa_set_controls_t", bycopy.} = object
    `type`*: uint8
    pad0: array[3, uint8]
    boolCtrlsHigh*: uint8
    boolCtrlsLow*: uint8
    pad1: array[2, uint8]

  XcbXkbSaSetControlsIterator* {.importc: "xcb_xkb_sa_set_controls_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaSetControls]
    rem*: cint
    index*: cint

  XcbXkbSaLockControls* {.importc: "xcb_xkb_sa_lock_controls_t", bycopy.} = object
    `type`*: uint8
    pad0: array[3, uint8]
    boolCtrlsHigh*: uint8
    boolCtrlsLow*: uint8
    pad1: array[2, uint8]

  XcbXkbSaLockControlsIterator* {.importc: "xcb_xkb_sa_lock_controls_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLockControls]
    rem*: cint
    index*: cint

  XcbXkbActionMessageFlag* {.importc: "xcb_xkb_action_message_flag_t".} = enum
    xcbXkbActionMessageFlagOnPress = 1,
    xcbXkbActionMessageFlagOnRelease = 2,
    xcbXkbActionMessageFlagGenKeyEvent = 4

  XcbXkbSaActionMessage* {.importc: "xcb_xkb_sa_action_message_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    message*: array[6, uint8]

  XcbXkbSaActionMessageIterator* {.importc: "xcb_xkb_sa_action_message_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaActionMessage]
    rem*: cint
    index*: cint

  XcbXkbSaRedirectKey* {.importc: "xcb_xkb_sa_redirect_key_t", bycopy.} = object
    `type`*: uint8
    newkey*: XcbKeycode
    mask*: uint8
    realModifiers*: uint8
    vmodsMaskHigh*: uint8
    vmodsMaskLow*: uint8
    vmodsHigh*: uint8
    vmodsLow*: uint8

  XcbXkbSaRedirectKeyIterator* {.importc: "xcb_xkb_sa_redirect_key_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaRedirectKey]
    rem*: cint
    index*: cint

  XcbXkbSaDeviceBtn* {.importc: "xcb_xkb_sa_device_btn_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    count*: uint8
    button*: uint8
    device*: uint8
    pad0: array[3, uint8]

  XcbXkbSaDeviceBtnIterator* {.importc: "xcb_xkb_sa_device_btn_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaDeviceBtn]
    rem*: cint
    index*: cint

  XcbXkbLockDeviceFlags* {.importc: "xcb_xkb_lock_device_flags_t".} = enum
    xcbXkbLockDeviceFlagsNoLock = 1, xcbXkbLockDeviceFlagsNoUnlock = 2

  XcbXkbSaLockDeviceBtn* {.importc: "xcb_xkb_sa_lock_device_btn_t", bycopy.} = object
    `type`*: uint8
    flags*: uint8
    pad0: uint8
    button*: uint8
    device*: uint8
    pad1: array[3, uint8]

  XcbXkbSaLockDeviceBtnIterator* {.importc: "xcb_xkb_sa_lock_device_btn_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaLockDeviceBtn]
    rem*: cint
    index*: cint

  XcbXkbSaValWhat* {.importc: "xcb_xkb_sa_val_what_t".} = enum
    xcbXkbSaValWhatIgnoreVal = 0, xcbXkbSaValWhatSetValMin = 1,
    xcbXkbSaValWhatSetValCenter = 2, xcbXkbSaValWhatSetValMax = 3,
    xcbXkbSaValWhatSetValRelative = 4,
    xcbXkbSaValWhatSetValAbsolute = 5

  XcbXkbSaDeviceValuator* {.importc: "xcb_xkb_sa_device_valuator_t", bycopy.} = object
    `type`*: uint8
    device*: uint8
    val1what*: uint8
    val1index*: uint8
    val1value*: uint8
    val2what*: uint8
    val2index*: uint8
    val2value*: uint8

  XcbXkbSaDeviceValuatorIterator* {.importc: "xcb_xkb_sa_device_valuator_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSaDeviceValuator]
    rem*: cint
    index*: cint

  XcbXkbSiAction* {.importc: "xcb_xkb_si_action_t", bycopy.} = object
    `type`*: uint8
    data*: array[7, uint8]

  XcbXkbSiActionIterator* {.importc: "xcb_xkb_si_action_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSiAction]
    rem*: cint
    index*: cint

  XcbXkbSymInterpret* {.importc: "xcb_xkb_sym_interpret_t", bycopy.} = object
    sym*: XcbKeysym
    mods*: uint8
    match*: uint8
    virtualMod*: uint8
    flags*: uint8
    action*: XcbXkbSiAction

  XcbXkbSymInterpretIterator* {.importc: "xcb_xkb_sym_interpret_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbSymInterpret]
    rem*: cint
    index*: cint

  XcbXkbAction* {.importc: "xcb_xkb_action_t", bycopy, union.} = object
    noaction*: XcbXkbSaNoAction
    setmods*: XcbXkbSaSetMods
    latchmods*: XcbXkbSaLatchMods
    lockmods*: XcbXkbSaLockMods
    setgroup*: XcbXkbSaSetGroup
    latchgroup*: XcbXkbSaLatchGroup
    lockgroup*: XcbXkbSaLockGroup
    moveptr*: XcbXkbSaMovePtr
    ptrbtn*: XcbXkbSaPtrBtn
    lockptrbtn*: XcbXkbSaLockPtrBtn
    setptrdflt*: XcbXkbSaSetPtrDflt
    isolock*: XcbXkbSaIsoLock
    terminate*: XcbXkbSaTerminate
    switchscreen*: XcbXkbSaSwitchScreen
    setcontrols*: XcbXkbSaSetControls
    lockcontrols*: XcbXkbSaLockControls
    message*: XcbXkbSaActionMessage
    redirect*: XcbXkbSaRedirectKey
    devbtn*: XcbXkbSaDeviceBtn
    lockdevbtn*: XcbXkbSaLockDeviceBtn
    devval*: XcbXkbSaDeviceValuator
    `type`*: uint8

  XcbXkbActionIterator* {.importc: "xcb_xkb_action_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXkbAction]
    rem*: cint
    index*: cint

  XcbXkbUseExtensionCookie* {.importc: "xcb_xkb_use_extension_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbUseExtensionRequest* {.importc: "xcb_xkb_use_extension_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    wantedMajor*: uint16
    wantedMinor*: uint16

  XcbXkbUseExtensionReply* {.importc: "xcb_xkb_use_extension_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    supported*: uint8
    sequence*: uint16
    length*: uint32
    serverMajor*: uint16
    serverMinor*: uint16
    pad0: array[20, uint8]

  XcbXkbSelectEventsDetails* {.importc: "xcb_xkb_select_events_details_t", bycopy.} = object
    affectNewKeyboard*: uint16
    newKeyboardDetails*: uint16
    affectState*: uint16
    stateDetails*: uint16
    affectCtrls*: uint32
    ctrlDetails*: uint32
    affectIndicatorState*: uint32
    indicatorStateDetails*: uint32
    affectIndicatorMap*: uint32
    indicatorMapDetails*: uint32
    affectNames*: uint16
    namesDetails*: uint16
    affectCompat*: uint8
    compatDetails*: uint8
    affectBell*: uint8
    bellDetails*: uint8
    affectMsgDetails*: uint8
    msgDetails*: uint8
    affectAccessX*: uint16
    accessXDetails*: uint16
    affectExtDev*: uint16
    extdevDetails*: uint16

  XcbXkbSelectEventsRequest* {.importc: "xcb_xkb_select_events_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    affectWhich*: uint16
    clear*: uint16
    selectAll*: uint16
    affectMap*: uint16
    map*: uint16

  XcbXkbBellRequest* {.importc: "xcb_xkb_bell_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    bellClass*: XcbXkbBellClassSpec
    bellID*: XcbXkbIdSpec
    percent*: int8
    forceSound*: uint8
    eventOnly*: uint8
    pad0: uint8
    pitch*: int16
    duration*: int16
    pad1: array[2, uint8]
    name*: XcbAtom
    window*: XcbWindow

  XcbXkbGetStateCookie* {.importc: "xcb_xkb_get_state_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetStateRequest* {.importc: "xcb_xkb_get_state_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]

  XcbXkbGetStateReply* {.importc: "xcb_xkb_get_state_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    mods*: uint8
    baseMods*: uint8
    latchedMods*: uint8
    lockedMods*: uint8
    group*: uint8
    lockedGroup*: uint8
    baseGroup*: int16
    latchedGroup*: int16
    compatState*: uint8
    grabMods*: uint8
    compatGrabMods*: uint8
    lookupMods*: uint8
    compatLookupMods*: uint8
    pad0: uint8
    ptrBtnState*: uint16
    pad1: array[6, uint8]

  XcbXkbLatchLockStateRequest* {.importc: "xcb_xkb_latch_lock_state_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    affectModLocks*: uint8
    modLocks*: uint8
    lockGroup*: uint8
    groupLock*: uint8
    affectModLatches*: uint8
    pad0: uint8
    pad1: uint8
    latchGroup*: uint8
    groupLatch*: uint16

  XcbXkbGetControlsCookie* {.importc: "xcb_xkb_get_controls_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetControlsRequest* {.importc: "xcb_xkb_get_controls_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]

  XcbXkbGetControlsReply* {.importc: "xcb_xkb_get_controls_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    mouseKeysDfltBtn*: uint8
    numGroups*: uint8
    groupsWrap*: uint8
    internalModsMask*: uint8
    ignoreLockModsMask*: uint8
    internalModsRealMods*: uint8
    ignoreLockModsRealMods*: uint8
    pad0: uint8
    internalModsVmods*: uint16
    ignoreLockModsVmods*: uint16
    repeatDelay*: uint16
    repeatInterval*: uint16
    slowKeysDelay*: uint16
    debounceDelay*: uint16
    mouseKeysDelay*: uint16
    mouseKeysInterval*: uint16
    mouseKeysTimeToMax*: uint16
    mouseKeysMaxSpeed*: uint16
    mouseKeysCurve*: int16
    accessXOption*: uint16
    accessXTimeout*: uint16
    accessXTimeoutOptionsMask*: uint16
    accessXTimeoutOptionsValues*: uint16
    pad1: array[2, uint8]
    accessXTimeoutMask*: uint32
    accessXTimeoutValues*: uint32
    enabledControls*: uint32
    perKeyRepeat*: array[32, uint8]

  XcbXkbSetControlsRequest* {.importc: "xcb_xkb_set_controls_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    affectInternalRealMods*: uint8
    internalRealMods*: uint8
    affectIgnoreLockRealMods*: uint8
    ignoreLockRealMods*: uint8
    affectInternalVirtualMods*: uint16
    internalVirtualMods*: uint16
    affectIgnoreLockVirtualMods*: uint16
    ignoreLockVirtualMods*: uint16
    mouseKeysDfltBtn*: uint8
    groupsWrap*: uint8
    accessXOptions*: uint16
    pad0: array[2, uint8]
    affectEnabledControls*: uint32
    enabledControls*: uint32
    changeControls*: uint32
    repeatDelay*: uint16
    repeatInterval*: uint16
    slowKeysDelay*: uint16
    debounceDelay*: uint16
    mouseKeysDelay*: uint16
    mouseKeysInterval*: uint16
    mouseKeysTimeToMax*: uint16
    mouseKeysMaxSpeed*: uint16
    mouseKeysCurve*: int16
    accessXTimeout*: uint16
    accessXTimeoutMask*: uint32
    accessXTimeoutValues*: uint32
    accessXTimeoutOptionsMask*: uint16
    accessXTimeoutOptionsValues*: uint16
    perKeyRepeat*: array[32, uint8]

  XcbXkbGetMapCookie* {.importc: "xcb_xkb_get_map_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetMapRequest* {.importc: "xcb_xkb_get_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    full*: uint16
    partial*: uint16
    firstType*: uint8
    nTypes*: uint8
    firstKeySym*: XcbKeycode
    nKeySyms*: uint8
    firstKeyAction*: XcbKeycode
    nKeyActions*: uint8
    firstKeyBehavior*: XcbKeycode
    nKeyBehaviors*: uint8
    virtualMods*: uint16
    firstKeyExplicit*: XcbKeycode
    nKeyExplicit*: uint8
    firstModMapKey*: XcbKeycode
    nModMapKeys*: uint8
    firstVModMapKey*: XcbKeycode
    nVModMapKeys*: uint8
    pad0: array[2, uint8]

  XcbXkbGetMapMap* {.importc: "xcb_xkb_get_map_map_t", bycopy.} = object
    typesRtrn* {.importc: "types_rtrn".}: ptr XcbXkbKeyType
    symsRtrn* {.importc: "syms_rtrn".}: ptr XcbXkbKeySymMap
    actsRtrnCount* {.importc: "acts_rtrn_count".}: ptr uint8
    pad2: ptr uint8
    actsRtrnActs* {.importc: "acts_rtrn_acts".}: ptr XcbXkbAction
    behaviorsRtrn* {.importc: "behaviors_rtrn".}: ptr XcbXkbSetBehavior
    vmodsRtrn* {.importc: "vmods_rtrn".}: ptr uint8
    pad3: ptr uint8
    explicitRtrn* {.importc: "explicit_rtrn".}: ptr XcbXkbSetExplicit
    pad4: ptr uint8
    modmapRtrn* {.importc: "modmap_rtrn".}: ptr XcbXkbKeyModMap
    pad5: ptr uint8
    vmodmapRtrn* {.importc: "vmodmap_rtrn".}: ptr XcbXkbKeyVModMap

  XcbXkbGetMapReply* {.importc: "xcb_xkb_get_map_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    pad0: array[2, uint8]
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    present*: uint16
    firstType*: uint8
    nTypes*: uint8
    totalTypes*: uint8
    firstKeySym*: XcbKeycode
    totalSyms*: uint16
    nKeySyms*: uint8
    firstKeyAction*: XcbKeycode
    totalActions*: uint16
    nKeyActions*: uint8
    firstKeyBehavior*: XcbKeycode
    nKeyBehaviors*: uint8
    totalKeyBehaviors*: uint8
    firstKeyExplicit*: XcbKeycode
    nKeyExplicit*: uint8
    totalKeyExplicit*: uint8
    firstModMapKey*: XcbKeycode
    nModMapKeys*: uint8
    totalModMapKeys*: uint8
    firstVModMapKey*: XcbKeycode
    nVModMapKeys*: uint8
    totalVModMapKeys*: uint8
    pad1: uint8
    virtualMods*: uint16

  XcbXkbSetMapValues* {.importc: "xcb_xkb_set_map_values_t", bycopy.} = object
    types*: ptr XcbXkbSetKeyType
    syms*: ptr XcbXkbKeySymMap
    actionsCount*: ptr uint8
    actions*: ptr XcbXkbAction
    behaviors*: ptr XcbXkbSetBehavior
    vmods*: ptr uint8
    explicit*: ptr XcbXkbSetExplicit
    modmap*: ptr XcbXkbKeyModMap
    vmodmap*: ptr XcbXkbKeyVModMap

  XcbXkbSetMapRequest* {.importc: "xcb_xkb_set_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    present*: uint16
    flags*: uint16
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    firstType*: uint8
    nTypes*: uint8
    firstKeySym*: XcbKeycode
    nKeySyms*: uint8
    totalSyms*: uint16
    firstKeyAction*: XcbKeycode
    nKeyActions*: uint8
    totalActions*: uint16
    firstKeyBehavior*: XcbKeycode
    nKeyBehaviors*: uint8
    totalKeyBehaviors*: uint8
    firstKeyExplicit*: XcbKeycode
    nKeyExplicit*: uint8
    totalKeyExplicit*: uint8
    firstModMapKey*: XcbKeycode
    nModMapKeys*: uint8
    totalModMapKeys*: uint8
    firstVModMapKey*: XcbKeycode
    nVModMapKeys*: uint8
    totalVModMapKeys*: uint8
    virtualMods*: uint16

  XcbXkbGetCompatMapCookie* {.importc: "xcb_xkb_get_compat_map_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetCompatMapRequest* {.importc: "xcb_xkb_get_compat_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    groups*: uint8
    getAllSI*: uint8
    firstSI*: uint16
    nSI*: uint16

  XcbXkbGetCompatMapReply* {.importc: "xcb_xkb_get_compat_map_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    groupsRtrn*: uint8
    pad0: uint8
    firstSIRtrn*: uint16
    nSIRtrn*: uint16
    nTotalSI*: uint16
    pad1: array[16, uint8]

  XcbXkbSetCompatMapRequest* {.importc: "xcb_xkb_set_compat_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: uint8
    recomputeActions*: uint8
    truncateSI*: uint8
    groups*: uint8
    firstSI*: uint16
    nSI*: uint16
    pad1: array[2, uint8]

  XcbXkbGetIndicatorStateCookie* {.importc: "xcb_xkb_get_indicator_state_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetIndicatorStateRequest* {.importc: "xcb_xkb_get_indicator_state_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]

  XcbXkbGetIndicatorStateReply* {.importc: "xcb_xkb_get_indicator_state_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    state*: uint32
    pad0: array[20, uint8]

  XcbXkbGetIndicatorMapCookie* {.importc: "xcb_xkb_get_indicator_map_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetIndicatorMapRequest* {.importc: "xcb_xkb_get_indicator_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]
    which*: uint32

  XcbXkbGetIndicatorMapReply* {.importc: "xcb_xkb_get_indicator_map_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    which*: uint32
    realIndicators*: uint32
    nIndicators*: uint8
    pad0: array[15, uint8]

  XcbXkbSetIndicatorMapRequest* {.importc: "xcb_xkb_set_indicator_map_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]
    which*: uint32

  XcbXkbGetNamedIndicatorCookie* {.importc: "xcb_xkb_get_named_indicator_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetNamedIndicatorRequest* {.importc: "xcb_xkb_get_named_indicator_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    ledClass*: XcbXkbLedClassSpec
    ledID*: XcbXkbIdSpec
    pad0: array[2, uint8]
    indicator*: XcbAtom

  XcbXkbGetNamedIndicatorReply* {.importc: "xcb_xkb_get_named_indicator_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    indicator*: XcbAtom
    found*: uint8
    on*: uint8
    realIndicator*: uint8
    ndx*: uint8
    mapFlags* {.importc: "map_flags".}: uint8
    mapWhichGroups* {.importc: "map_whichGroups".}: uint8
    mapGroups* {.importc: "map_groups".}: uint8
    mapWhichMods* {.importc: "map_whichMods".}: uint8
    mapMods* {.importc: "map_mods".}: uint8
    mapRealMods* {.importc: "map_realMods".}: uint8
    mapVmod* {.importc: "map_vmod".}: uint16
    mapCtrls* {.importc: "map_ctrls".}: uint32
    supported*: uint8
    pad0: array[3, uint8]

  XcbXkbSetNamedIndicatorRequest* {.importc: "xcb_xkb_set_named_indicator_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    ledClass*: XcbXkbLedClassSpec
    ledID*: XcbXkbIdSpec
    pad0: array[2, uint8]
    indicator*: XcbAtom
    setState*: uint8
    on*: uint8
    setMap*: uint8
    createMap*: uint8
    pad1: uint8
    mapFlags* {.importc: "map_flags".}: uint8
    mapWhichGroups* {.importc: "map_whichGroups".}: uint8
    mapGroups* {.importc: "map_groups".}: uint8
    mapWhichMods* {.importc: "map_whichMods".}: uint8
    mapRealMods* {.importc: "map_realMods".}: uint8
    mapVmods* {.importc: "map_vmods".}: uint16
    mapCtrls* {.importc: "map_ctrls".}: uint32

  XcbXkbGetNamesCookie* {.importc: "xcb_xkb_get_names_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetNamesRequest* {.importc: "xcb_xkb_get_names_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]
    which*: uint32

  XcbXkbGetNamesValueList* {.importc: "xcb_xkb_get_names_value_list_t", bycopy.} = object
    keycodesName*: XcbAtom
    geometryName*: XcbAtom
    symbolsName*: XcbAtom
    physSymbolsName*: XcbAtom
    typesName*: XcbAtom
    compatName*: XcbAtom
    typeNames*: ptr XcbAtom
    nLevelsPerType*: ptr uint8
    pad1: ptr uint8
    ktLevelNames*: ptr XcbAtom
    indicatorNames*: ptr XcbAtom
    virtualModNames*: ptr XcbAtom
    groups*: ptr XcbAtom
    keyNames*: ptr XcbXkbKeyName
    keyAliases*: ptr XcbXkbKeyAlias
    radioGroupNames*: ptr XcbAtom

  XcbXkbGetNamesReply* {.importc: "xcb_xkb_get_names_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    which*: uint32
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    nTypes*: uint8
    groupNames*: uint8
    virtualMods*: uint16
    firstKey*: XcbKeycode
    nKeys*: uint8
    indicators*: uint32
    nRadioGroups*: uint8
    nKeyAliases*: uint8
    nKTLevels*: uint16
    pad0: array[4, uint8]

  XcbXkbSetNamesValues* {.importc: "xcb_xkb_set_names_values_t", bycopy.} = object
    keycodesName*: XcbAtom
    geometryName*: XcbAtom
    symbolsName*: XcbAtom
    physSymbolsName*: XcbAtom
    typesName*: XcbAtom
    compatName*: XcbAtom
    typeNames*: ptr XcbAtom
    nLevelsPerType*: ptr uint8
    ktLevelNames*: ptr XcbAtom
    indicatorNames*: ptr XcbAtom
    virtualModNames*: ptr XcbAtom
    groups*: ptr XcbAtom
    keyNames*: ptr XcbXkbKeyName
    keyAliases*: ptr XcbXkbKeyAlias
    radioGroupNames*: ptr XcbAtom

  XcbXkbSetNamesRequest* {.importc: "xcb_xkb_set_names_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    virtualMods*: uint16
    which*: uint32
    firstType*: uint8
    nTypes*: uint8
    firstKTLevelt*: uint8
    nKTLevels*: uint8
    indicators*: uint32
    groupNames*: uint8
    nRadioGroups*: uint8
    firstKey*: XcbKeycode
    nKeys*: uint8
    nKeyAliases*: uint8
    pad0: uint8
    totalKTLevelNames*: uint16

  XcbXkbPerClientFlagsCookie* {.importc: "xcb_xkb_per_client_flags_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbPerClientFlagsRequest* {.importc: "xcb_xkb_per_client_flags_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    pad0: array[2, uint8]
    change*: uint32
    value*: uint32
    ctrlsToChange*: uint32
    autoCtrls*: uint32
    autoCtrlsValues*: uint32

  XcbXkbPerClientFlagsReply* {.importc: "xcb_xkb_per_client_flags_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    supported*: uint32
    value*: uint32
    autoCtrls*: uint32
    autoCtrlsValues*: uint32
    pad0: array[8, uint8]

  XcbXkbListComponentsCookie* {.importc: "xcb_xkb_list_components_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbListComponentsRequest* {.importc: "xcb_xkb_list_components_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    maxNames*: uint16

  XcbXkbListComponentsReply* {.importc: "xcb_xkb_list_components_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    nKeymaps*: uint16
    nKeycodes*: uint16
    nTypes*: uint16
    nCompatMaps*: uint16
    nSymbols*: uint16
    nGeometries*: uint16
    extra*: uint16
    pad0: array[10, uint8]

  XcbXkbGetKbdByNameCookie* {.importc: "xcb_xkb_get_kbd_by_name_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetKbdByNameRequest* {.importc: "xcb_xkb_get_kbd_by_name_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    need*: uint16
    want*: uint16
    load*: uint8
    pad0: uint8

  XcbXkbGetKbdByNameRepliesTypesMap* {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_t", bycopy.} = object
    typesRtrn* {.importc: "types_rtrn".}: ptr XcbXkbKeyType
    symsRtrn* {.importc: "syms_rtrn".}: ptr XcbXkbKeySymMap
    actsRtrnCount* {.importc: "acts_rtrn_count".}: ptr uint8
    actsRtrnActs* {.importc: "acts_rtrn_acts".}: ptr XcbXkbAction
    behaviorsRtrn* {.importc: "behaviors_rtrn".}: ptr XcbXkbSetBehavior
    vmodsRtrn* {.importc: "vmods_rtrn".}: ptr uint8
    explicitRtrn* {.importc: "explicit_rtrn".}: ptr XcbXkbSetExplicit
    modmapRtrn* {.importc: "modmap_rtrn".}: ptr XcbXkbKeyModMap
    vmodmapRtrn* {.importc: "vmodmap_rtrn".}: ptr XcbXkbKeyVModMap

  XcbXkbGetKbdByNameRepliesKeyNamesValueList* {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t", bycopy.} = object
    keycodesName*: XcbAtom
    geometryName*: XcbAtom
    symbolsName*: XcbAtom
    physSymbolsName*: XcbAtom
    typesName*: XcbAtom
    compatName*: XcbAtom
    typeNames*: ptr XcbAtom
    nLevelsPerType*: ptr uint8
    ktLevelNames*: ptr XcbAtom
    indicatorNames*: ptr XcbAtom
    virtualModNames*: ptr XcbAtom
    groups*: ptr XcbAtom
    keyNames*: ptr XcbXkbKeyName
    keyAliases*: ptr XcbXkbKeyAlias
    radioGroupNames*: ptr XcbAtom

{.pop.}

type
  XcbXkbGetKbdByNameRepliesTypes* {.bycopy.} = object
    ## Inner
    getmapType* {.importc: "getmap_type".}: uint8
    typeDeviceID*: uint8
    getmapSequence* {.importc: "getmap_sequence".}: uint16
    getmapLength* {.importc: "getmap_length".}: uint32
    pad1: array[2, uint8]
    typeMinKeyCode*: XcbKeycode
    typeMaxKeyCode*: XcbKeycode
    present*: uint16
    firstType*: uint8
    nTypes*: uint8
    totalTypes*: uint8
    firstKeySym*: XcbKeycode
    totalSyms*: uint16
    nKeySyms*: uint8
    firstKeyAction*: XcbKeycode
    totalActions*: uint16
    nKeyActions*: uint8
    firstKeyBehavior*: XcbKeycode
    nKeyBehaviors*: uint8
    totalKeyBehaviors*: uint8
    firstKeyExplicit*: XcbKeycode
    nKeyExplicit*: uint8
    totalKeyExplicit*: uint8
    firstModMapKey*: XcbKeycode
    nModMapKeys*: uint8
    totalModMapKeys*: uint8
    firstVModMapKey*: XcbKeycode
    nVModMapKeys*: uint8
    totalVModMapKeys*: uint8
    pad2: uint8
    virtualMods*: uint16
    map*: XcbXkbGetKbdByNameRepliesTypesMap
  XcbXkbGetKbdByNameRepliesCompat* {.bycopy.} = object
    ## Inner
    compatmapType* {.importc: "compatmap_type".}: uint8
    compatDeviceID*: uint8
    compatmapSequence* {.importc: "compatmap_sequence".}: uint16
    compatmapLength* {.importc: "compatmap_length".}: uint32
    groupsRtrn*: uint8
    pad7: uint8
    firstSIRtrn*: uint16
    nSIRtrn*: uint16
    nTotalSI*: uint16
    pad8: array[16, uint8]
    siRtrn* {.importc: "si_rtrn".}: ptr XcbXkbSymInterpret
    groupRtrn* {.importc: "group_rtrn".}: ptr XcbXkbModDef
  XcbXkbGetKbdByNameRepliesIndicator* {.bycopy.} = object
    ## Inner
    indicatormapType* {.importc: "indicatormap_type".}: uint8
    indicatorDeviceID*: uint8
    indicatormapSequence* {.importc: "indicatormap_sequence".}: uint16
    indicatormapLength* {.importc: "indicatormap_length".}: uint32
    which*: uint32
    realIndicators*: uint32
    nIndicators*: uint8
    pad9: array[15, uint8]
    maps*: ptr XcbXkbIndicatorMap
  XcbXkbGetKbdByNameRepliesNames* {.bycopy.} = object
    ## Inner
    keynameType* {.importc: "keyname_type".}: uint8
    keyDeviceID*: uint8
    keynameSequence* {.importc: "keyname_sequence".}: uint16
    keynameLength* {.importc: "keyname_length".}: uint32
    which*: uint32
    keyMinKeyCode*: XcbKeycode
    keyMaxKeyCode*: XcbKeycode
    nTypes*: uint8
    groupNames*: uint8
    virtualMods*: uint16
    firstKey*: XcbKeycode
    nKeys*: uint8
    indicators*: uint32
    nRadioGroups*: uint8
    nKeyAliases*: uint8
    nKTLevels*: uint16
    pad10: array[4, uint8]
    valueList*: XcbXkbGetKbdByNameRepliesKeyNamesValueList
  XcbXkbGetKbdByNameRepliesGeometry* {.bycopy.} = object
    ## Inner
    geometryType* {.importc: "geometry_type".}: uint8
    geometryDeviceID*: uint8
    geometrySequence* {.importc: "geometry_sequence".}: uint16
    geometryLength* {.importc: "geometry_length".}: uint32
    name*: XcbAtom
    geometryFound*: uint8
    pad12: uint8
    widthMM*: uint16
    heightMM*: uint16
    nProperties*: uint16
    nColors*: uint16
    nShapes*: uint16
    nSections*: uint16
    nDoodads*: uint16
    nKeyAliases*: uint16
    baseColorNdx*: uint8
    labelColorNdx*: uint8
    labelFont*: ptr XcbXkbCountedString16

{.push header: "xcb/xkb.h".}

type
  XcbXkbGetKbdByNameReplies* {.importc: "xcb_xkb_get_kbd_by_name_replies_t", bycopy.} = object
    types*: XcbXkbGetKbdByNameRepliesTypes
    compatMap* {.importc: "compat_map".}: XcbXkbGetKbdByNameRepliesCompat
    indicatorMaps* {.importc: "indicator_maps".}: XcbXkbGetKbdByNameRepliesIndicator
    keyNames* {.importc: "key_names".}: XcbXkbGetKbdByNameRepliesNames
    geometry*: XcbXkbGetKbdByNameRepliesGeometry

  XcbXkbGetKbdByNameReply* {.importc: "xcb_xkb_get_kbd_by_name_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    loaded*: uint8
    newKeyboard*: uint8
    found*: uint16
    reported*: uint16
    pad0: array[16, uint8]

  XcbXkbGetDeviceInfoCookie* {.importc: "xcb_xkb_get_device_info_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbGetDeviceInfoRequest* {.importc: "xcb_xkb_get_device_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    wanted*: uint16
    allButtons*: uint8
    firstButton*: uint8
    nButtons*: uint8
    pad0: uint8
    ledClass*: XcbXkbLedClassSpec
    ledID*: XcbXkbIdSpec

  XcbXkbGetDeviceInfoReply* {.importc: "xcb_xkb_get_device_info_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    deviceID*: uint8
    sequence*: uint16
    length*: uint32
    present*: uint16
    supported*: uint16
    unsupported*: uint16
    nDeviceLedFBs*: uint16
    firstBtnWanted*: uint8
    nBtnsWanted*: uint8
    firstBtnRtrn*: uint8
    nBtnsRtrn*: uint8
    totalBtns*: uint8
    hasOwnState*: uint8
    dfltKbdFB*: uint16
    dfltLedFB*: uint16
    pad0: array[2, uint8]
    devType*: XcbAtom
    nameLen*: uint16

  XcbXkbSetDeviceInfoRequest* {.importc: "xcb_xkb_set_device_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    deviceSpec*: XcbXkbDeviceSpec
    firstBtn*: uint8
    nBtns*: uint8
    change*: uint16
    nDeviceLedFBs*: uint16

  XcbXkbSetDebuggingFlagsCookie* {.importc: "xcb_xkb_set_debugging_flags_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXkbSetDebuggingFlagsRequest* {.importc: "xcb_xkb_set_debugging_flags_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    msgLength*: uint16
    pad0: array[2, uint8]
    affectFlags*: uint32
    flags*: uint32
    affectCtrls*: uint32
    ctrls*: uint32

  XcbXkbSetDebuggingFlagsReply* {.importc: "xcb_xkb_set_debugging_flags_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    currentFlags*: uint32
    currentCtrls*: uint32
    supportedFlags*: uint32
    supportedCtrls*: uint32
    pad1: array[8, uint8]

  XcbXkbNewKeyboardNotifyEvent* {.importc: "xcb_xkb_new_keyboard_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    oldDeviceID*: uint8
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    oldMinKeyCode*: XcbKeycode
    oldMaxKeyCode*: XcbKeycode
    requestMajor*: uint8
    requestMinor*: uint8
    changed*: uint16
    pad0: array[14, uint8]

  XcbXkbMapNotifyEvent* {.importc: "xcb_xkb_map_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    ptrBtnActions*: uint8
    changed*: uint16
    minKeyCode*: XcbKeycode
    maxKeyCode*: XcbKeycode
    firstType*: uint8
    nTypes*: uint8
    firstKeySym*: XcbKeycode
    nKeySyms*: uint8
    firstKeyAct*: XcbKeycode
    nKeyActs*: uint8
    firstKeyBehavior*: XcbKeycode
    nKeyBehavior*: uint8
    firstKeyExplicit*: XcbKeycode
    nKeyExplicit*: uint8
    firstModMapKey*: XcbKeycode
    nModMapKeys*: uint8
    firstVModMapKey*: XcbKeycode
    nVModMapKeys*: uint8
    virtualMods*: uint16
    pad0: array[2, uint8]

  XcbXkbStateNotifyEvent* {.importc: "xcb_xkb_state_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    mods*: uint8
    baseMods*: uint8
    latchedMods*: uint8
    lockedMods*: uint8
    group*: uint8
    baseGroup*: int16
    latchedGroup*: int16
    lockedGroup*: uint8
    compatState*: uint8
    grabMods*: uint8
    compatGrabMods*: uint8
    lookupMods*: uint8
    compatLoockupMods*: uint8
    ptrBtnState*: uint16
    changed*: uint16
    keycode*: XcbKeycode
    eventType*: uint8
    requestMajor*: uint8
    requestMinor*: uint8

  XcbXkbControlsNotifyEvent* {.importc: "xcb_xkb_controls_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    numGroups*: uint8
    pad0: array[2, uint8]
    changedControls*: uint32
    enabledControls*: uint32
    enabledControlChanges*: uint32
    keycode*: XcbKeycode
    eventType*: uint8
    requestMajor*: uint8
    requestMinor*: uint8
    pad1: array[4, uint8]

  XcbXkbIndicatorStateNotifyEvent* {.importc: "xcb_xkb_indicator_state_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    pad0: array[3, uint8]
    state*: uint32
    stateChanged*: uint32
    pad1: array[12, uint8]

  XcbXkbIndicatorMapNotifyEvent* {.importc: "xcb_xkb_indicator_map_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    pad0: array[3, uint8]
    state*: uint32
    mapChanged*: uint32
    pad1: array[12, uint8]

  XcbXkbNamesNotifyEvent* {.importc: "xcb_xkb_names_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    pad0: uint8
    changed*: uint16
    firstType*: uint8
    nTypes*: uint8
    firstLevelName*: uint8
    nLevelNames*: uint8
    pad1: uint8
    nRadioGroups*: uint8
    nKeyAliases*: uint8
    changedGroupNames*: uint8
    changedVirtualMods*: uint16
    firstKey*: XcbKeycode
    nKeys*: uint8
    changedIndicators*: uint32
    pad2: array[4, uint8]

  XcbXkbCompatMapNotifyEvent* {.importc: "xcb_xkb_compat_map_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    changedGroups*: uint8
    firstSI*: uint16
    nSI*: uint16
    nTotalSI*: uint16
    pad0: array[16, uint8]

  XcbXkbBellNotifyEvent* {.importc: "xcb_xkb_bell_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    bellClass*: uint8
    bellID*: uint8
    percent*: uint8
    pitch*: uint16
    duration*: uint16
    name*: XcbAtom
    window*: XcbWindow
    eventOnly*: uint8
    pad0: array[7, uint8]

  XcbXkbActionMessageEvent* {.importc: "xcb_xkb_action_message_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    keycode*: XcbKeycode
    press*: uint8
    keyEventFollows*: uint8
    mods*: uint8
    group*: uint8
    message*: array[8, XcbXkbString8]
    pad0: array[10, uint8]

  XcbXkbAccessXNotifyEvent* {.importc: "xcb_xkb_access_x_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    keycode*: XcbKeycode
    detailt*: uint16
    slowKeysDelay*: uint16
    debounceDelay*: uint16
    pad0: array[16, uint8]

  XcbXkbExtensionDeviceNotifyEvent* {.importc: "xcb_xkb_extension_device_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    xkbType*: uint8
    sequence*: uint16
    time*: XcbTimestamp
    deviceID*: uint8
    pad0: uint8
    reason*: uint16
    ledClass*: uint16
    ledID*: uint16
    ledsDefined*: uint32
    ledState*: uint32
    firstButton*: uint8
    nButtons*: uint8
    supported*: uint16
    unsupported*: uint16
    pad1: array[2, uint8]

{.pop.}

const
  xcbXkbSaGroupAbsolute* = xcbXkbSaUseModMapMods
  xcbXkbSaIsoLockFlagGroupAbsolute* = xcbXkbSaIsoLockFlagUseModMapMods

{.push cdecl, header: "xcb/xkb.h".}

proc typesMap*(R: ptr XcbXkbGetKbdByNameReplies): ptr XcbXkbGetKbdByNameRepliesTypesMap {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map".}
proc next*(i: ptr XcbXkbDeviceSpecIterator) {.importc: "xcb_xkb_device_spec_next".}
proc iterEnd*(i: XcbXkbDeviceSpecIterator): XcbGenericIterator {.importc: "xcb_xkb_device_spec_end".}
proc next*(i: ptr XcbXkbLedClassSpecIterator) {.importc: "xcb_xkb_led_class_spec_next".}
proc iterEnd*(i: XcbXkbLedClassSpecIterator): XcbGenericIterator {.importc: "xcb_xkb_led_class_spec_end".}
proc next*(i: ptr XcbXkbBellClassSpecIterator) {.importc: "xcb_xkb_bell_class_spec_next".}
proc iterEnd*(i: XcbXkbBellClassSpecIterator): XcbGenericIterator {.importc: "xcb_xkb_bell_class_spec_end".}
proc next*(i: ptr XcbXkbIdSpecIterator) {.importc: "xcb_xkb_id_spec_next".}
proc iterEnd*(i: XcbXkbIdSpecIterator): XcbGenericIterator {.importc: "xcb_xkb_id_spec_end".}
proc next*(i: ptr XcbXkbIndicatorMapIterator) {.importc: "xcb_xkb_indicator_map_next".}
proc iterEnd*(i: XcbXkbIndicatorMapIterator): XcbGenericIterator {.importc: "xcb_xkb_indicator_map_end".}
proc next*(i: ptr XcbXkbModDefIterator) {.importc: "xcb_xkb_mod_def_next".}
proc iterEnd*(i: XcbXkbModDefIterator): XcbGenericIterator {.importc: "xcb_xkb_mod_def_end".}
proc next*(i: ptr XcbXkbKeyNameIterator) {.importc: "xcb_xkb_key_name_next".}
proc iterEnd*(i: XcbXkbKeyNameIterator): XcbGenericIterator {.importc: "xcb_xkb_key_name_end".}
proc next*(i: ptr XcbXkbKeyAliasIterator) {.importc: "xcb_xkb_key_alias_next".}
proc iterEnd*(i: XcbXkbKeyAliasIterator): XcbGenericIterator {.importc: "xcb_xkb_key_alias_end".}
proc countedString16Sizeof*(buffer: pointer): cint {.importc: "xcb_xkb_counted_string_16_sizeof".}
proc string*(R: ptr XcbXkbCountedString16): ptr UncheckedArray[char] {.importc: "xcb_xkb_counted_string_16_string".}
proc stringLength*(R: ptr XcbXkbCountedString16): cint {.importc: "xcb_xkb_counted_string_16_string_length".}
proc stringEnd*(R: ptr XcbXkbCountedString16): XcbGenericIterator {.importc: "xcb_xkb_counted_string_16_string_end".}
proc alignmentPad*(R: ptr XcbXkbCountedString16): pointer {.importc: "xcb_xkb_counted_string_16_alignment_pad".}
proc alignmentPadLength*(R: ptr XcbXkbCountedString16): cint {.importc: "xcb_xkb_counted_string_16_alignment_pad_length".}
proc alignmentPadEnd*(R: ptr XcbXkbCountedString16): XcbGenericIterator {.importc: "xcb_xkb_counted_string_16_alignment_pad_end".}
proc next*(i: ptr XcbXkbCountedString16Iterator) {.importc: "xcb_xkb_counted_string_16_next".}
proc iterEnd*(i: XcbXkbCountedString16Iterator): XcbGenericIterator {.importc: "xcb_xkb_counted_string_16_end".}
proc next*(i: ptr XcbXkbKtMapEntryIterator) {.importc: "xcb_xkb_kt_map_entry_next".}
proc iterEnd*(i: XcbXkbKtMapEntryIterator): XcbGenericIterator {.importc: "xcb_xkb_kt_map_entry_end".}
proc keyTypeSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_key_type_sizeof".}
proc map*(R: ptr XcbXkbKeyType): ptr UncheckedArray[XcbXkbKtMapEntry] {.importc: "xcb_xkb_key_type_map".}
proc mapLength*(R: ptr XcbXkbKeyType): cint {.importc: "xcb_xkb_key_type_map_length".}
proc mapIterator*(R: ptr XcbXkbKeyType): XcbXkbKtMapEntryIterator {.importc: "xcb_xkb_key_type_map_iterator".}
proc preserve*(R: ptr XcbXkbKeyType): ptr UncheckedArray[XcbXkbModDef] {.importc: "xcb_xkb_key_type_preserve".}
proc preserveLength*(R: ptr XcbXkbKeyType): cint {.importc: "xcb_xkb_key_type_preserve_length".}
proc preserveIterator*(R: ptr XcbXkbKeyType): XcbXkbModDefIterator {.importc: "xcb_xkb_key_type_preserve_iterator".}
proc next*(i: ptr XcbXkbKeyTypeIterator) {.importc: "xcb_xkb_key_type_next".}
proc iterEnd*(i: XcbXkbKeyTypeIterator): XcbGenericIterator {.importc: "xcb_xkb_key_type_end".}
proc keySymMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_key_sym_map_sizeof".}
proc syms*(R: ptr XcbXkbKeySymMap): ptr UncheckedArray[XcbKeysym] {.importc: "xcb_xkb_key_sym_map_syms".}
proc symsLength*(R: ptr XcbXkbKeySymMap): cint {.importc: "xcb_xkb_key_sym_map_syms_length".}
proc symsEnd*(R: ptr XcbXkbKeySymMap): XcbGenericIterator {.importc: "xcb_xkb_key_sym_map_syms_end".}
proc next*(i: ptr XcbXkbKeySymMapIterator) {.importc: "xcb_xkb_key_sym_map_next".}
proc iterEnd*(i: XcbXkbKeySymMapIterator): XcbGenericIterator {.importc: "xcb_xkb_key_sym_map_end".}
proc next*(i: ptr XcbXkbCommonBehaviorIterator) {.importc: "xcb_xkb_common_behavior_next".}
proc iterEnd*(i: XcbXkbCommonBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_common_behavior_end".}
proc next*(i: ptr XcbXkbDefaultBehaviorIterator) {.importc: "xcb_xkb_default_behavior_next".}
proc iterEnd*(i: XcbXkbDefaultBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_default_behavior_end".}
proc next*(i: ptr XcbXkbLockBehaviorIterator) {.importc: "xcb_xkb_lock_behavior_next".}
proc iterEnd*(i: XcbXkbLockBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_lock_behavior_end".}
proc next*(i: ptr XcbXkbRadioGroupBehaviorIterator) {.importc: "xcb_xkb_radio_group_behavior_next".}
proc iterEnd*(i: XcbXkbRadioGroupBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_radio_group_behavior_end".}
proc next*(i: ptr XcbXkbOverlayBehaviorIterator) {.importc: "xcb_xkb_overlay_behavior_next".}
proc iterEnd*(i: XcbXkbOverlayBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_overlay_behavior_end".}
proc next*(i: ptr XcbXkbPermamentLockBehaviorIterator) {.importc: "xcb_xkb_permament_lock_behavior_next".}
proc iterEnd*(i: XcbXkbPermamentLockBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_permament_lock_behavior_end".}
proc next*(i: ptr XcbXkbPermamentRadioGroupBehaviorIterator) {.importc: "xcb_xkb_permament_radio_group_behavior_next".}
proc iterEnd*(i: XcbXkbPermamentRadioGroupBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_permament_radio_group_behavior_end".}
proc next*(i: ptr XcbXkbPermamentOverlayBehaviorIterator) {.importc: "xcb_xkb_permament_overlay_behavior_next".}
proc iterEnd*(i: XcbXkbPermamentOverlayBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_permament_overlay_behavior_end".}
proc next*(i: ptr XcbXkbBehaviorIterator) {.importc: "xcb_xkb_behavior_next".}
proc iterEnd*(i: XcbXkbBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_behavior_end".}
proc next*(i: ptr XcbXkbSetBehaviorIterator) {.importc: "xcb_xkb_set_behavior_next".}
proc iterEnd*(i: XcbXkbSetBehaviorIterator): XcbGenericIterator {.importc: "xcb_xkb_set_behavior_end".}
proc next*(i: ptr XcbXkbSetExplicitIterator) {.importc: "xcb_xkb_set_explicit_next".}
proc iterEnd*(i: XcbXkbSetExplicitIterator): XcbGenericIterator {.importc: "xcb_xkb_set_explicit_end".}
proc next*(i: ptr XcbXkbKeyModMapIterator) {.importc: "xcb_xkb_key_mod_map_next".}
proc iterEnd*(i: XcbXkbKeyModMapIterator): XcbGenericIterator {.importc: "xcb_xkb_key_mod_map_end".}
proc next*(i: ptr XcbXkbKeyVModMapIterator) {.importc: "xcb_xkb_key_v_mod_map_next".}
proc iterEnd*(i: XcbXkbKeyVModMapIterator): XcbGenericIterator {.importc: "xcb_xkb_key_v_mod_map_end".}
proc next*(i: ptr XcbXkbKtSetMapEntryIterator) {.importc: "xcb_xkb_kt_set_map_entry_next".}
proc iterEnd*(i: XcbXkbKtSetMapEntryIterator): XcbGenericIterator {.importc: "xcb_xkb_kt_set_map_entry_end".}
proc setKeyTypeSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_key_type_sizeof".}
proc entries*(R: ptr XcbXkbSetKeyType): ptr UncheckedArray[XcbXkbKtSetMapEntry] {.importc: "xcb_xkb_set_key_type_entries".}
proc entriesLength*(R: ptr XcbXkbSetKeyType): cint {.importc: "xcb_xkb_set_key_type_entries_length".}
proc entriesIterator*(R: ptr XcbXkbSetKeyType): XcbXkbKtSetMapEntryIterator {.importc: "xcb_xkb_set_key_type_entries_iterator".}
proc preserveEntries*(R: ptr XcbXkbSetKeyType): ptr UncheckedArray[XcbXkbKtSetMapEntry] {.importc: "xcb_xkb_set_key_type_preserve_entries".}
proc preserveEntriesLength*(R: ptr XcbXkbSetKeyType): cint {.importc: "xcb_xkb_set_key_type_preserve_entries_length".}
proc preserveEntriesIterator*(R: ptr XcbXkbSetKeyType): XcbXkbKtSetMapEntryIterator {.importc: "xcb_xkb_set_key_type_preserve_entries_iterator".}
proc next*(i: ptr XcbXkbSetKeyTypeIterator) {.importc: "xcb_xkb_set_key_type_next".}
proc iterEnd*(i: XcbXkbSetKeyTypeIterator): XcbGenericIterator {.importc: "xcb_xkb_set_key_type_end".}
proc next*(i: ptr XcbXkbString8Iterator) {.importc: "xcb_xkb_string8_next".}
proc iterEnd*(i: XcbXkbString8Iterator): XcbGenericIterator {.importc: "xcb_xkb_string8_end".}
proc outlineSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_outline_sizeof".}
proc points*(R: ptr XcbXkbOutline): ptr UncheckedArray[XcbPoint] {.importc: "xcb_xkb_outline_points".}
proc pointsLength*(R: ptr XcbXkbOutline): cint {.importc: "xcb_xkb_outline_points_length".}
proc pointsIterator*(R: ptr XcbXkbOutline): XcbPointIterator {.importc: "xcb_xkb_outline_points_iterator".}
proc next*(i: ptr XcbXkbOutlineIterator) {.importc: "xcb_xkb_outline_next".}
proc iterEnd*(i: XcbXkbOutlineIterator): XcbGenericIterator {.importc: "xcb_xkb_outline_end".}
proc shapeSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_shape_sizeof".}
proc outlinesLength*(R: ptr XcbXkbShape): cint {.importc: "xcb_xkb_shape_outlines_length".}
proc outlinesIterator*(R: ptr XcbXkbShape): XcbXkbOutlineIterator {.importc: "xcb_xkb_shape_outlines_iterator".}
proc next*(i: ptr XcbXkbShapeIterator) {.importc: "xcb_xkb_shape_next".}
proc iterEnd*(i: XcbXkbShapeIterator): XcbGenericIterator {.importc: "xcb_xkb_shape_end".}
proc next*(i: ptr XcbXkbKeyIterator) {.importc: "xcb_xkb_key_next".}
proc iterEnd*(i: XcbXkbKeyIterator): XcbGenericIterator {.importc: "xcb_xkb_key_end".}
proc next*(i: ptr XcbXkbOverlayKeyIterator) {.importc: "xcb_xkb_overlay_key_next".}
proc iterEnd*(i: XcbXkbOverlayKeyIterator): XcbGenericIterator {.importc: "xcb_xkb_overlay_key_end".}
proc overlayRowSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_overlay_row_sizeof".}
proc keys*(R: ptr XcbXkbOverlayRow): ptr UncheckedArray[XcbXkbOverlayKey] {.importc: "xcb_xkb_overlay_row_keys".}
proc keysLength*(R: ptr XcbXkbOverlayRow): cint {.importc: "xcb_xkb_overlay_row_keys_length".}
proc keysIterator*(R: ptr XcbXkbOverlayRow): XcbXkbOverlayKeyIterator {.importc: "xcb_xkb_overlay_row_keys_iterator".}
proc next*(i: ptr XcbXkbOverlayRowIterator) {.importc: "xcb_xkb_overlay_row_next".}
proc iterEnd*(i: XcbXkbOverlayRowIterator): XcbGenericIterator {.importc: "xcb_xkb_overlay_row_end".}
proc overlaySizeof*(buffer: pointer): cint {.importc: "xcb_xkb_overlay_sizeof".}
proc rowsLength*(R: ptr XcbXkbOverlay): cint {.importc: "xcb_xkb_overlay_rows_length".}
proc rowsIterator*(R: ptr XcbXkbOverlay): XcbXkbOverlayRowIterator {.importc: "xcb_xkb_overlay_rows_iterator".}
proc next*(i: ptr XcbXkbOverlayIterator) {.importc: "xcb_xkb_overlay_next".}
proc iterEnd*(i: XcbXkbOverlayIterator): XcbGenericIterator {.importc: "xcb_xkb_overlay_end".}
proc rowSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_row_sizeof".}
proc keys*(R: ptr XcbXkbRow): ptr UncheckedArray[XcbXkbKey] {.importc: "xcb_xkb_row_keys".}
proc keysLength*(R: ptr XcbXkbRow): cint {.importc: "xcb_xkb_row_keys_length".}
proc keysIterator*(R: ptr XcbXkbRow): XcbXkbKeyIterator {.importc: "xcb_xkb_row_keys_iterator".}
proc next*(i: ptr XcbXkbRowIterator) {.importc: "xcb_xkb_row_next".}
proc iterEnd*(i: XcbXkbRowIterator): XcbGenericIterator {.importc: "xcb_xkb_row_end".}
proc listingSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_listing_sizeof".}
proc string*(R: ptr XcbXkbListing): ptr UncheckedArray[XcbXkbString8] {.importc: "xcb_xkb_listing_string".}
proc stringLength*(R: ptr XcbXkbListing): cint {.importc: "xcb_xkb_listing_string_length".}
proc stringEnd*(R: ptr XcbXkbListing): XcbGenericIterator {.importc: "xcb_xkb_listing_string_end".}
proc next*(i: ptr XcbXkbListingIterator) {.importc: "xcb_xkb_listing_next".}
proc iterEnd*(i: XcbXkbListingIterator): XcbGenericIterator {.importc: "xcb_xkb_listing_end".}
proc deviceLedInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_device_led_info_sizeof".}
proc names*(R: ptr XcbXkbDeviceLedInfo): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_device_led_info_names".}
proc namesLength*(R: ptr XcbXkbDeviceLedInfo): cint {.importc: "xcb_xkb_device_led_info_names_length".}
proc namesEnd*(R: ptr XcbXkbDeviceLedInfo): XcbGenericIterator {.importc: "xcb_xkb_device_led_info_names_end".}
proc maps*(R: ptr XcbXkbDeviceLedInfo): ptr UncheckedArray[XcbXkbIndicatorMap] {.importc: "xcb_xkb_device_led_info_maps".}
proc mapsLength*(R: ptr XcbXkbDeviceLedInfo): cint {.importc: "xcb_xkb_device_led_info_maps_length".}
proc mapsIterator*(R: ptr XcbXkbDeviceLedInfo): XcbXkbIndicatorMapIterator {.importc: "xcb_xkb_device_led_info_maps_iterator".}
proc next*(i: ptr XcbXkbDeviceLedInfoIterator) {.importc: "xcb_xkb_device_led_info_next".}
proc iterEnd*(i: XcbXkbDeviceLedInfoIterator): XcbGenericIterator {.importc: "xcb_xkb_device_led_info_end".}
proc next*(i: ptr XcbXkbSaNoActionIterator) {.importc: "xcb_xkb_sa_no_action_next".}
proc iterEnd*(i: XcbXkbSaNoActionIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_no_action_end".}
proc next*(i: ptr XcbXkbSaSetModsIterator) {.importc: "xcb_xkb_sa_set_mods_next".}
proc iterEnd*(i: XcbXkbSaSetModsIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_set_mods_end".}
proc next*(i: ptr XcbXkbSaLatchModsIterator) {.importc: "xcb_xkb_sa_latch_mods_next".}
proc iterEnd*(i: XcbXkbSaLatchModsIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_latch_mods_end".}
proc next*(i: ptr XcbXkbSaLockModsIterator) {.importc: "xcb_xkb_sa_lock_mods_next".}
proc iterEnd*(i: XcbXkbSaLockModsIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_lock_mods_end".}
proc next*(i: ptr XcbXkbSaSetGroupIterator) {.importc: "xcb_xkb_sa_set_group_next".}
proc iterEnd*(i: XcbXkbSaSetGroupIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_set_group_end".}
proc next*(i: ptr XcbXkbSaLatchGroupIterator) {.importc: "xcb_xkb_sa_latch_group_next".}
proc iterEnd*(i: XcbXkbSaLatchGroupIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_latch_group_end".}
proc next*(i: ptr XcbXkbSaLockGroupIterator) {.importc: "xcb_xkb_sa_lock_group_next".}
proc iterEnd*(i: XcbXkbSaLockGroupIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_lock_group_end".}
proc next*(i: ptr XcbXkbSaMovePtrIterator) {.importc: "xcb_xkb_sa_move_ptr_next".}
proc iterEnd*(i: XcbXkbSaMovePtrIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_move_ptr_end".}
proc next*(i: ptr XcbXkbSaPtrBtnIterator) {.importc: "xcb_xkb_sa_ptr_btn_next".}
proc iterEnd*(i: XcbXkbSaPtrBtnIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_ptr_btn_end".}
proc next*(i: ptr XcbXkbSaLockPtrBtnIterator) {.importc: "xcb_xkb_sa_lock_ptr_btn_next".}
proc iterEnd*(i: XcbXkbSaLockPtrBtnIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_lock_ptr_btn_end".}
proc next*(i: ptr XcbXkbSaSetPtrDfltIterator) {.importc: "xcb_xkb_sa_set_ptr_dflt_next".}
proc iterEnd*(i: XcbXkbSaSetPtrDfltIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_set_ptr_dflt_end".}
proc next*(i: ptr XcbXkbSaIsoLockIterator) {.importc: "xcb_xkb_sa_iso_lock_next".}
proc iterEnd*(i: XcbXkbSaIsoLockIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_iso_lock_end".}
proc next*(i: ptr XcbXkbSaTerminateIterator) {.importc: "xcb_xkb_sa_terminate_next".}
proc iterEnd*(i: XcbXkbSaTerminateIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_terminate_end".}
proc next*(i: ptr XcbXkbSaSwitchScreenIterator) {.importc: "xcb_xkb_sa_switch_screen_next".}
proc iterEnd*(i: XcbXkbSaSwitchScreenIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_switch_screen_end".}
proc next*(i: ptr XcbXkbSaSetControlsIterator) {.importc: "xcb_xkb_sa_set_controls_next".}
proc iterEnd*(i: XcbXkbSaSetControlsIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_set_controls_end".}
proc next*(i: ptr XcbXkbSaLockControlsIterator) {.importc: "xcb_xkb_sa_lock_controls_next".}
proc iterEnd*(i: XcbXkbSaLockControlsIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_lock_controls_end".}
proc next*(i: ptr XcbXkbSaActionMessageIterator) {.importc: "xcb_xkb_sa_action_message_next".}
proc iterEnd*(i: XcbXkbSaActionMessageIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_action_message_end".}
proc next*(i: ptr XcbXkbSaRedirectKeyIterator) {.importc: "xcb_xkb_sa_redirect_key_next".}
proc iterEnd*(i: XcbXkbSaRedirectKeyIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_redirect_key_end".}
proc next*(i: ptr XcbXkbSaDeviceBtnIterator) {.importc: "xcb_xkb_sa_device_btn_next".}
proc iterEnd*(i: XcbXkbSaDeviceBtnIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_device_btn_end".}
proc next*(i: ptr XcbXkbSaLockDeviceBtnIterator) {.importc: "xcb_xkb_sa_lock_device_btn_next".}
proc iterEnd*(i: XcbXkbSaLockDeviceBtnIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_lock_device_btn_end".}
proc next*(i: ptr XcbXkbSaDeviceValuatorIterator) {.importc: "xcb_xkb_sa_device_valuator_next".}
proc iterEnd*(i: XcbXkbSaDeviceValuatorIterator): XcbGenericIterator {.importc: "xcb_xkb_sa_device_valuator_end".}
proc next*(i: ptr XcbXkbSiActionIterator) {.importc: "xcb_xkb_si_action_next".}
proc iterEnd*(i: XcbXkbSiActionIterator): XcbGenericIterator {.importc: "xcb_xkb_si_action_end".}
proc next*(i: ptr XcbXkbSymInterpretIterator) {.importc: "xcb_xkb_sym_interpret_next".}
proc iterEnd*(i: XcbXkbSymInterpretIterator): XcbGenericIterator {.importc: "xcb_xkb_sym_interpret_end".}
proc next*(i: ptr XcbXkbActionIterator) {.importc: "xcb_xkb_action_next".}
proc iterEnd*(i: XcbXkbActionIterator): XcbGenericIterator {.importc: "xcb_xkb_action_end".}
proc xkbUseExtension*(c: ptr XcbConnection; wantedMajor: uint16; wantedMinor: uint16): XcbXkbUseExtensionCookie {.importc: "xcb_xkb_use_extension".}
proc xkbUseExtensionUnchecked*(c: ptr XcbConnection; wantedMajor: uint16; wantedMinor: uint16): XcbXkbUseExtensionCookie {.importc: "xcb_xkb_use_extension_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbUseExtensionCookie; e: ptr ptr XcbGenericError): ptr XcbXkbUseExtensionReply {.importc: "xcb_xkb_use_extension_reply".}
proc serialize*(buffer: ptr pointer; affectWhich: uint16; clear: uint16; selectAll: uint16; aux: ptr XcbXkbSelectEventsDetails): cint {.importc: "xcb_xkb_select_events_details_serialize".}
proc unpack*(buffer: pointer; affectWhich: uint16; clear: uint16; selectAll: uint16; aux: ptr XcbXkbSelectEventsDetails): cint {.importc: "xcb_xkb_select_events_details_unpack".}
proc selectEventsDetailsSizeof*(buffer: pointer; affectWhich: uint16; clear: uint16; selectAll: uint16): cint {.importc: "xcb_xkb_select_events_details_sizeof".}
proc selectEventsSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_select_events_sizeof".}
proc selectEventsChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectWhich: uint16; clear: uint16; selectAll: uint16; affectMap: uint16; map: uint16; details: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_select_events_checked".}
proc selectEvents*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectWhich: uint16; clear: uint16; selectAll: uint16; affectMap: uint16; map: uint16; details: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_select_events".}
proc selectEventsAuxChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectWhich: uint16; clear: uint16; selectAll: uint16; affectMap: uint16; map: uint16; details: ptr XcbXkbSelectEventsDetails): XcbVoidCookie {.discardable, importc: "xcb_xkb_select_events_aux_checked".}
proc selectEventsAux*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectWhich: uint16; clear: uint16; selectAll: uint16; affectMap: uint16; map: uint16; details: ptr XcbXkbSelectEventsDetails): XcbVoidCookie {.discardable, importc: "xcb_xkb_select_events_aux".}
proc details*(R: ptr XcbXkbSelectEventsRequest): pointer {.importc: "xcb_xkb_select_events_details".}
proc bellChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; bellClass: XcbXkbBellClassSpec; bellID: XcbXkbIdSpec; percent: int8; forceSound: uint8; eventOnly: uint8; pitch: int16; duration: int16; name: XcbAtom; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xkb_bell_checked".}
proc bell*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; bellClass: XcbXkbBellClassSpec; bellID: XcbXkbIdSpec; percent: int8; forceSound: uint8; eventOnly: uint8; pitch: int16; duration: int16; name: XcbAtom; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_xkb_bell".}
proc getState*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetStateCookie {.importc: "xcb_xkb_get_state".}
proc getStateUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetStateCookie {.importc: "xcb_xkb_get_state_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetStateCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetStateReply {.importc: "xcb_xkb_get_state_reply".}
proc latchLockStateChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectModLocks: uint8; modLocks: uint8; lockGroup: uint8; groupLock: uint8; affectModLatches: uint8; latchGroup: uint8; groupLatch: uint16): XcbVoidCookie {.discardable, importc: "xcb_xkb_latch_lock_state_checked".}
proc latchLockState*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectModLocks: uint8; modLocks: uint8; lockGroup: uint8; groupLock: uint8; affectModLatches: uint8; latchGroup: uint8; groupLatch: uint16): XcbVoidCookie {.discardable, importc: "xcb_xkb_latch_lock_state".}
proc getControls*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetControlsCookie {.importc: "xcb_xkb_get_controls".}
proc getControlsUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetControlsCookie {.importc: "xcb_xkb_get_controls_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetControlsCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetControlsReply {.importc: "xcb_xkb_get_controls_reply".}
proc setControlsChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectInternalRealMods: uint8; internalRealMods: uint8; affectIgnoreLockRealMods: uint8; ignoreLockRealMods: uint8; affectInternalVirtualMods: uint16; internalVirtualMods: uint16; affectIgnoreLockVirtualMods: uint16; ignoreLockVirtualMods: uint16; mouseKeysDfltBtn: uint8; groupsWrap: uint8; accessXOptions: uint16; affectEnabledControls: uint32; enabledControls: uint32; changeControls: uint32; repeatDelay: uint16; repeatInterval: uint16; slowKeysDelay: uint16; debounceDelay: uint16; mouseKeysDelay: uint16; mouseKeysInterval: uint16; mouseKeysTimeToMax: uint16; mouseKeysMaxSpeed: uint16; mouseKeysCurve: int16; accessXTimeout: uint16; accessXTimeoutMask: uint32; accessXTimeoutValues: uint32; accessXTimeoutOptionsMask: uint16; accessXTimeoutOptionsValues: uint16; perKeyRepeat: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_controls_checked".}
proc setControls*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; affectInternalRealMods: uint8; internalRealMods: uint8; affectIgnoreLockRealMods: uint8; ignoreLockRealMods: uint8; affectInternalVirtualMods: uint16; internalVirtualMods: uint16; affectIgnoreLockVirtualMods: uint16; ignoreLockVirtualMods: uint16; mouseKeysDfltBtn: uint8; groupsWrap: uint8; accessXOptions: uint16; affectEnabledControls: uint32; enabledControls: uint32; changeControls: uint32; repeatDelay: uint16; repeatInterval: uint16; slowKeysDelay: uint16; debounceDelay: uint16; mouseKeysDelay: uint16; mouseKeysInterval: uint16; mouseKeysTimeToMax: uint16; mouseKeysMaxSpeed: uint16; mouseKeysCurve: int16; accessXTimeout: uint16; accessXTimeoutMask: uint32; accessXTimeoutValues: uint32; accessXTimeoutOptionsMask: uint16; accessXTimeoutOptionsValues: uint16; perKeyRepeat: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_controls".}
proc typesRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_types_rtrn_length".}
proc typesRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbKeyTypeIterator {.importc: "xcb_xkb_get_map_map_types_rtrn_iterator".}
proc symsRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_syms_rtrn_length".}
proc symsRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbKeySymMapIterator {.importc: "xcb_xkb_get_map_map_syms_rtrn_iterator".}
proc actsRtrnCount*(S: ptr XcbXkbGetMapMap): ptr uint8 {.importc: "xcb_xkb_get_map_map_acts_rtrn_count".}
proc actsRtrnCountLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_acts_rtrn_count_length".}
proc actsRtrnCountEnd*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbGenericIterator {.importc: "xcb_xkb_get_map_map_acts_rtrn_count_end".}
proc actsRtrnActs*(S: ptr XcbXkbGetMapMap): ptr XcbXkbAction {.importc: "xcb_xkb_get_map_map_acts_rtrn_acts".}
proc actsRtrnActsLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_acts_rtrn_acts_length".}
proc actsRtrnActsIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbActionIterator {.importc: "xcb_xkb_get_map_map_acts_rtrn_acts_iterator".}
proc behaviorsRtrn*(S: ptr XcbXkbGetMapMap): ptr XcbXkbSetBehavior {.importc: "xcb_xkb_get_map_map_behaviors_rtrn".}
proc behaviorsRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_behaviors_rtrn_length".}
proc behaviorsRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbSetBehaviorIterator {.importc: "xcb_xkb_get_map_map_behaviors_rtrn_iterator".}
proc vmodsRtrn*(S: ptr XcbXkbGetMapMap): ptr uint8 {.importc: "xcb_xkb_get_map_map_vmods_rtrn".}
proc vmodsRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_vmods_rtrn_length".}
proc vmodsRtrnEnd*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbGenericIterator {.importc: "xcb_xkb_get_map_map_vmods_rtrn_end".}
proc explicitRtrn*(S: ptr XcbXkbGetMapMap): ptr XcbXkbSetExplicit {.importc: "xcb_xkb_get_map_map_explicit_rtrn".}
proc explicitRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_explicit_rtrn_length".}
proc explicitRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbSetExplicitIterator {.importc: "xcb_xkb_get_map_map_explicit_rtrn_iterator".}
proc modmapRtrn*(S: ptr XcbXkbGetMapMap): ptr XcbXkbKeyModMap {.importc: "xcb_xkb_get_map_map_modmap_rtrn".}
proc modmapRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_modmap_rtrn_length".}
proc modmapRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbKeyModMapIterator {.importc: "xcb_xkb_get_map_map_modmap_rtrn_iterator".}
proc vmodmapRtrn*(S: ptr XcbXkbGetMapMap): ptr XcbXkbKeyVModMap {.importc: "xcb_xkb_get_map_map_vmodmap_rtrn".}
proc vmodmapRtrnLength*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_vmodmap_rtrn_length".}
proc vmodmapRtrnIterator*(R: ptr XcbXkbGetMapReply; S: ptr XcbXkbGetMapMap): XcbXkbKeyVModMapIterator {.importc: "xcb_xkb_get_map_map_vmodmap_rtrn_iterator".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbGetMapMap): cint {.importc: "xcb_xkb_get_map_map_unpack".}
proc getMapMapSizeof*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16): cint {.importc: "xcb_xkb_get_map_map_sizeof".}
proc getMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_map_sizeof".}
proc getMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; full: uint16; partial: uint16; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; firstKeyAction: XcbKeycode; nKeyActions: uint8; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; virtualMods: uint16; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8): XcbXkbGetMapCookie {.importc: "xcb_xkb_get_map".}
proc getMapUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; full: uint16; partial: uint16; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; firstKeyAction: XcbKeycode; nKeyActions: uint8; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; virtualMods: uint16; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8): XcbXkbGetMapCookie {.importc: "xcb_xkb_get_map_unchecked".}
proc getMapMap*(R: ptr XcbXkbGetMapReply): pointer {.importc: "xcb_xkb_get_map_map".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetMapCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetMapReply {.importc: "xcb_xkb_get_map_reply".}
proc typesLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_types_length".}
proc typesIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbSetKeyTypeIterator {.importc: "xcb_xkb_set_map_values_types_iterator".}
proc symsLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_syms_length".}
proc symsIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbKeySymMapIterator {.importc: "xcb_xkb_set_map_values_syms_iterator".}
proc actionsCount*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_set_map_values_actions_count".}
proc actionsCountLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_actions_count_length".}
proc actionsCountEnd*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbGenericIterator {.importc: "xcb_xkb_set_map_values_actions_count_end".}
proc actions*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[XcbXkbAction] {.importc: "xcb_xkb_set_map_values_actions".}
proc actionsLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_actions_length".}
proc actionsIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbActionIterator {.importc: "xcb_xkb_set_map_values_actions_iterator".}
proc behaviors*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[XcbXkbSetBehavior] {.importc: "xcb_xkb_set_map_values_behaviors".}
proc behaviorsLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_behaviors_length".}
proc behaviorsIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbSetBehaviorIterator {.importc: "xcb_xkb_set_map_values_behaviors_iterator".}
proc vmods*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_set_map_values_vmods".}
proc vmodsLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_vmods_length".}
proc vmodsEnd*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbGenericIterator {.importc: "xcb_xkb_set_map_values_vmods_end".}
proc explicit*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[XcbXkbSetExplicit] {.importc: "xcb_xkb_set_map_values_explicit".}
proc explicitLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_explicit_length".}
proc explicitIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbSetExplicitIterator {.importc: "xcb_xkb_set_map_values_explicit_iterator".}
proc modmap*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[XcbXkbKeyModMap] {.importc: "xcb_xkb_set_map_values_modmap".}
proc modmapLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_modmap_length".}
proc modmapIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbKeyModMapIterator {.importc: "xcb_xkb_set_map_values_modmap_iterator".}
proc vmodmap*(S: ptr XcbXkbSetMapValues): ptr UncheckedArray[XcbXkbKeyVModMap] {.importc: "xcb_xkb_set_map_values_vmodmap".}
proc vmodmapLength*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_vmodmap_length".}
proc vmodmapIterator*(R: ptr XcbXkbSetMapRequest; S: ptr XcbXkbSetMapValues): XcbXkbKeyVModMapIterator {.importc: "xcb_xkb_set_map_values_vmodmap_iterator".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbSetMapValues): cint {.importc: "xcb_xkb_set_map_values_unpack".}
proc setMapValuesSizeof*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16): cint {.importc: "xcb_xkb_set_map_values_sizeof".}
proc setMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_map_sizeof".}
proc setMapChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; present: uint16; flags: uint16; minKeyCode: XcbKeycode; maxKeyCode: XcbKeycode; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; totalSyms: uint16; firstKeyAction: XcbKeycode; nKeyActions: uint8; totalActions: uint16; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; totalKeyBehaviors: uint8; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; totalKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; totalModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8; totalVModMapKeys: uint8; virtualMods: uint16; values: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_map_checked".}
proc setMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; present: uint16; flags: uint16; minKeyCode: XcbKeycode; maxKeyCode: XcbKeycode; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; totalSyms: uint16; firstKeyAction: XcbKeycode; nKeyActions: uint8; totalActions: uint16; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; totalKeyBehaviors: uint8; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; totalKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; totalModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8; totalVModMapKeys: uint8; virtualMods: uint16; values: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_map".}
proc setMapAuxChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; present: uint16; flags: uint16; minKeyCode: XcbKeycode; maxKeyCode: XcbKeycode; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; totalSyms: uint16; firstKeyAction: XcbKeycode; nKeyActions: uint8; totalActions: uint16; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; totalKeyBehaviors: uint8; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; totalKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; totalModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8; totalVModMapKeys: uint8; virtualMods: uint16; values: ptr XcbXkbSetMapValues): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_map_aux_checked".}
proc setMapAux*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; present: uint16; flags: uint16; minKeyCode: XcbKeycode; maxKeyCode: XcbKeycode; firstType: uint8; nTypes: uint8; firstKeySym: XcbKeycode; nKeySyms: uint8; totalSyms: uint16; firstKeyAction: XcbKeycode; nKeyActions: uint8; totalActions: uint16; firstKeyBehavior: XcbKeycode; nKeyBehaviors: uint8; totalKeyBehaviors: uint8; firstKeyExplicit: XcbKeycode; nKeyExplicit: uint8; totalKeyExplicit: uint8; firstModMapKey: XcbKeycode; nModMapKeys: uint8; totalModMapKeys: uint8; firstVModMapKey: XcbKeycode; nVModMapKeys: uint8; totalVModMapKeys: uint8; virtualMods: uint16; values: ptr XcbXkbSetMapValues): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_map_aux".}
proc values*(R: ptr XcbXkbSetMapRequest): pointer {.importc: "xcb_xkb_set_map_values".}
proc getCompatMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_compat_map_sizeof".}
proc getCompatMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; groups: uint8; getAllSI: uint8; firstSI: uint16; nSI: uint16): XcbXkbGetCompatMapCookie {.importc: "xcb_xkb_get_compat_map".}
proc getCompatMapUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; groups: uint8; getAllSI: uint8; firstSI: uint16; nSI: uint16): XcbXkbGetCompatMapCookie {.importc: "xcb_xkb_get_compat_map_unchecked".}
proc siRtrn*(R: ptr XcbXkbGetCompatMapReply): ptr UncheckedArray[XcbXkbSymInterpret] {.importc: "xcb_xkb_get_compat_map_si_rtrn".}
proc siRtrnLength*(R: ptr XcbXkbGetCompatMapReply): cint {.importc: "xcb_xkb_get_compat_map_si_rtrn_length".}
proc siRtrnIterator*(R: ptr XcbXkbGetCompatMapReply): XcbXkbSymInterpretIterator {.importc: "xcb_xkb_get_compat_map_si_rtrn_iterator".}
proc groupRtrn*(R: ptr XcbXkbGetCompatMapReply): ptr UncheckedArray[XcbXkbModDef] {.importc: "xcb_xkb_get_compat_map_group_rtrn".}
proc groupRtrnLength*(R: ptr XcbXkbGetCompatMapReply): cint {.importc: "xcb_xkb_get_compat_map_group_rtrn_length".}
proc groupRtrnIterator*(R: ptr XcbXkbGetCompatMapReply): XcbXkbModDefIterator {.importc: "xcb_xkb_get_compat_map_group_rtrn_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetCompatMapCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetCompatMapReply {.importc: "xcb_xkb_get_compat_map_reply".}
proc setCompatMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_compat_map_sizeof".}
proc setCompatMapChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; recomputeActions: uint8; truncateSI: uint8; groups: uint8; firstSI: uint16; nSI: uint16; si: ptr XcbXkbSymInterpret; groupMaps: ptr XcbXkbModDef): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_compat_map_checked".}
proc setCompatMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; recomputeActions: uint8; truncateSI: uint8; groups: uint8; firstSI: uint16; nSI: uint16; si: ptr XcbXkbSymInterpret; groupMaps: ptr XcbXkbModDef): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_compat_map".}
proc si*(R: ptr XcbXkbSetCompatMapRequest): ptr UncheckedArray[XcbXkbSymInterpret] {.importc: "xcb_xkb_set_compat_map_si".}
proc siLength*(R: ptr XcbXkbSetCompatMapRequest): cint {.importc: "xcb_xkb_set_compat_map_si_length".}
proc siIterator*(R: ptr XcbXkbSetCompatMapRequest): XcbXkbSymInterpretIterator {.importc: "xcb_xkb_set_compat_map_si_iterator".}
proc groupMaps*(R: ptr XcbXkbSetCompatMapRequest): ptr UncheckedArray[XcbXkbModDef] {.importc: "xcb_xkb_set_compat_map_group_maps".}
proc groupMapsLength*(R: ptr XcbXkbSetCompatMapRequest): cint {.importc: "xcb_xkb_set_compat_map_group_maps_length".}
proc groupMapsIterator*(R: ptr XcbXkbSetCompatMapRequest): XcbXkbModDefIterator {.importc: "xcb_xkb_set_compat_map_group_maps_iterator".}
proc getIndicatorState*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetIndicatorStateCookie {.importc: "xcb_xkb_get_indicator_state".}
proc getIndicatorStateUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec): XcbXkbGetIndicatorStateCookie {.importc: "xcb_xkb_get_indicator_state_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetIndicatorStateCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetIndicatorStateReply {.importc: "xcb_xkb_get_indicator_state_reply".}
proc getIndicatorMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_indicator_map_sizeof".}
proc getIndicatorMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32): XcbXkbGetIndicatorMapCookie {.importc: "xcb_xkb_get_indicator_map".}
proc getIndicatorMapUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32): XcbXkbGetIndicatorMapCookie {.importc: "xcb_xkb_get_indicator_map_unchecked".}
proc maps*(R: ptr XcbXkbGetIndicatorMapReply): ptr UncheckedArray[XcbXkbIndicatorMap] {.importc: "xcb_xkb_get_indicator_map_maps".}
proc mapsLength*(R: ptr XcbXkbGetIndicatorMapReply): cint {.importc: "xcb_xkb_get_indicator_map_maps_length".}
proc mapsIterator*(R: ptr XcbXkbGetIndicatorMapReply): XcbXkbIndicatorMapIterator {.importc: "xcb_xkb_get_indicator_map_maps_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetIndicatorMapCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetIndicatorMapReply {.importc: "xcb_xkb_get_indicator_map_reply".}
proc setIndicatorMapSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_indicator_map_sizeof".}
proc setIndicatorMapChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32; maps: ptr XcbXkbIndicatorMap): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_indicator_map_checked".}
proc setIndicatorMap*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32; maps: ptr XcbXkbIndicatorMap): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_indicator_map".}
proc maps*(R: ptr XcbXkbSetIndicatorMapRequest): ptr UncheckedArray[XcbXkbIndicatorMap] {.importc: "xcb_xkb_set_indicator_map_maps".}
proc mapsLength*(R: ptr XcbXkbSetIndicatorMapRequest): cint {.importc: "xcb_xkb_set_indicator_map_maps_length".}
proc mapsIterator*(R: ptr XcbXkbSetIndicatorMapRequest): XcbXkbIndicatorMapIterator {.importc: "xcb_xkb_set_indicator_map_maps_iterator".}
proc getNamedIndicator*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec; indicator: XcbAtom): XcbXkbGetNamedIndicatorCookie {.importc: "xcb_xkb_get_named_indicator".}
proc getNamedIndicatorUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec; indicator: XcbAtom): XcbXkbGetNamedIndicatorCookie {.importc: "xcb_xkb_get_named_indicator_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetNamedIndicatorCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetNamedIndicatorReply {.importc: "xcb_xkb_get_named_indicator_reply".}
proc setNamedIndicatorChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec; indicator: XcbAtom; setState: uint8; on: uint8; setMap: uint8; createMap: uint8; map_flags: uint8; map_whichGroups: uint8; map_groups: uint8; map_whichMods: uint8; map_realMods: uint8; map_vmods: uint16; map_ctrls: uint32): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_named_indicator_checked".}
proc setNamedIndicator*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec; indicator: XcbAtom; setState: uint8; on: uint8; setMap: uint8; createMap: uint8; map_flags: uint8; map_whichGroups: uint8; map_groups: uint8; map_whichMods: uint8; map_realMods: uint8; map_vmods: uint16; map_ctrls: uint32): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_named_indicator".}
proc typeNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_type_names".}
proc typeNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_type_names_length".}
proc typeNamesEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_type_names_end".}
proc nLevelsPerType*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_get_names_value_list_n_levels_per_type".}
proc nLevelsPerTypeLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_n_levels_per_type_length".}
proc nLevelsPerTypeEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_n_levels_per_type_end".}
proc ktLevelNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_kt_level_names".}
proc ktLevelNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_kt_level_names_length".}
proc ktLevelNamesEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_kt_level_names_end".}
proc indicatorNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_indicator_names".}
proc indicatorNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_indicator_names_length".}
proc indicatorNamesEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_indicator_names_end".}
proc virtualModNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_virtual_mod_names".}
proc virtualModNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_virtual_mod_names_length".}
proc virtualModNamesEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_virtual_mod_names_end".}
proc groups*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_groups".}
proc groupsLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_groups_length".}
proc groupsEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_groups_end".}
proc keyNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbXkbKeyName] {.importc: "xcb_xkb_get_names_value_list_key_names".}
proc keyNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_key_names_length".}
proc keyNamesIterator*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbXkbKeyNameIterator {.importc: "xcb_xkb_get_names_value_list_key_names_iterator".}
proc keyAliases*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbXkbKeyAlias] {.importc: "xcb_xkb_get_names_value_list_key_aliases".}
proc keyAliasesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_key_aliases_length".}
proc keyAliasesIterator*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbXkbKeyAliasIterator {.importc: "xcb_xkb_get_names_value_list_key_aliases_iterator".}
proc radioGroupNames*(S: ptr XcbXkbGetNamesValueList): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_names_value_list_radio_group_names".}
proc radioGroupNamesLength*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_radio_group_names_length".}
proc radioGroupNamesEnd*(R: ptr XcbXkbGetNamesReply; S: ptr XcbXkbGetNamesValueList): XcbGenericIterator {.importc: "xcb_xkb_get_names_value_list_radio_group_names_end".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbGetNamesValueList): cint {.importc: "xcb_xkb_get_names_value_list_unpack".}
proc getNamesValueListSizeof*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32): cint {.importc: "xcb_xkb_get_names_value_list_sizeof".}
proc getNamesSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_names_sizeof".}
proc getNames*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32): XcbXkbGetNamesCookie {.importc: "xcb_xkb_get_names".}
proc getNamesUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; which: uint32): XcbXkbGetNamesCookie {.importc: "xcb_xkb_get_names_unchecked".}
proc valueList*(R: ptr XcbXkbGetNamesReply): pointer {.importc: "xcb_xkb_get_names_value_list".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetNamesCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetNamesReply {.importc: "xcb_xkb_get_names_reply".}
proc typeNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_type_names".}
proc typeNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_type_names_length".}
proc typeNamesEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_type_names_end".}
proc nLevelsPerType*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_set_names_values_n_levels_per_type".}
proc nLevelsPerTypeLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_n_levels_per_type_length".}
proc nLevelsPerTypeEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_n_levels_per_type_end".}
proc ktLevelNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_kt_level_names".}
proc ktLevelNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_kt_level_names_length".}
proc ktLevelNamesEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_kt_level_names_end".}
proc indicatorNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_indicator_names".}
proc indicatorNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_indicator_names_length".}
proc indicatorNamesEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_indicator_names_end".}
proc virtualModNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_virtual_mod_names".}
proc virtualModNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_virtual_mod_names_length".}
proc virtualModNamesEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_virtual_mod_names_end".}
proc groups*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_groups".}
proc groupsLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_groups_length".}
proc groupsEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_groups_end".}
proc keyNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbXkbKeyName] {.importc: "xcb_xkb_set_names_values_key_names".}
proc keyNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_key_names_length".}
proc keyNamesIterator*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbXkbKeyNameIterator {.importc: "xcb_xkb_set_names_values_key_names_iterator".}
proc keyAliases*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbXkbKeyAlias] {.importc: "xcb_xkb_set_names_values_key_aliases".}
proc keyAliasesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_key_aliases_length".}
proc keyAliasesIterator*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbXkbKeyAliasIterator {.importc: "xcb_xkb_set_names_values_key_aliases_iterator".}
proc radioGroupNames*(S: ptr XcbXkbSetNamesValues): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_set_names_values_radio_group_names".}
proc radioGroupNamesLength*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_radio_group_names_length".}
proc radioGroupNamesEnd*(R: ptr XcbXkbSetNamesRequest; S: ptr XcbXkbSetNamesValues): XcbGenericIterator {.importc: "xcb_xkb_set_names_values_radio_group_names_end".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbSetNamesValues): cint {.importc: "xcb_xkb_set_names_values_unpack".}
proc setNamesValuesSizeof*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32): cint {.importc: "xcb_xkb_set_names_values_sizeof".}
proc setNamesSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_names_sizeof".}
proc setNamesChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; virtualMods: uint16; which: uint32; firstType: uint8; nTypes: uint8; firstKTLevelt: uint8; nKTLevels: uint8; indicators: uint32; groupNames: uint8; nRadioGroups: uint8; firstKey: XcbKeycode; nKeys: uint8; nKeyAliases: uint8; totalKTLevelNames: uint16; values: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_names_checked".}
proc setNames*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; virtualMods: uint16; which: uint32; firstType: uint8; nTypes: uint8; firstKTLevelt: uint8; nKTLevels: uint8; indicators: uint32; groupNames: uint8; nRadioGroups: uint8; firstKey: XcbKeycode; nKeys: uint8; nKeyAliases: uint8; totalKTLevelNames: uint16; values: pointer): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_names".}
proc setNamesAuxChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; virtualMods: uint16; which: uint32; firstType: uint8; nTypes: uint8; firstKTLevelt: uint8; nKTLevels: uint8; indicators: uint32; groupNames: uint8; nRadioGroups: uint8; firstKey: XcbKeycode; nKeys: uint8; nKeyAliases: uint8; totalKTLevelNames: uint16; values: ptr XcbXkbSetNamesValues): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_names_aux_checked".}
proc setNamesAux*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; virtualMods: uint16; which: uint32; firstType: uint8; nTypes: uint8; firstKTLevelt: uint8; nKTLevels: uint8; indicators: uint32; groupNames: uint8; nRadioGroups: uint8; firstKey: XcbKeycode; nKeys: uint8; nKeyAliases: uint8; totalKTLevelNames: uint16; values: ptr XcbXkbSetNamesValues): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_names_aux".}
proc setNamesValues*(R: ptr XcbXkbSetNamesRequest): pointer {.importc: "xcb_xkb_set_names_values".}
proc perClientFlags*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; change: uint32; value: uint32; ctrlsToChange: uint32; autoCtrls: uint32; autoCtrlsValues: uint32): XcbXkbPerClientFlagsCookie {.importc: "xcb_xkb_per_client_flags".}
proc perClientFlagsUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; change: uint32; value: uint32; ctrlsToChange: uint32; autoCtrls: uint32; autoCtrlsValues: uint32): XcbXkbPerClientFlagsCookie {.importc: "xcb_xkb_per_client_flags_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbPerClientFlagsCookie; e: ptr ptr XcbGenericError): ptr XcbXkbPerClientFlagsReply {.importc: "xcb_xkb_per_client_flags_reply".}
proc listComponentsSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_list_components_sizeof".}
proc listComponents*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; maxNames: uint16): XcbXkbListComponentsCookie {.importc: "xcb_xkb_list_components".}
proc listComponentsUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; maxNames: uint16): XcbXkbListComponentsCookie {.importc: "xcb_xkb_list_components_unchecked".}
proc keymapsLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_keymaps_length".}
proc keymapsIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_keymaps_iterator".}
proc keycodesLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_keycodes_length".}
proc keycodesIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_keycodes_iterator".}
proc typesLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_types_length".}
proc typesIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_types_iterator".}
proc compatMapsLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_compat_maps_length".}
proc compatMapsIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_compat_maps_iterator".}
proc symbolsLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_symbols_length".}
proc symbolsIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_symbols_iterator".}
proc geometriesLength*(R: ptr XcbXkbListComponentsReply): cint {.importc: "xcb_xkb_list_components_geometries_length".}
proc geometriesIterator*(R: ptr XcbXkbListComponentsReply): XcbXkbListingIterator {.importc: "xcb_xkb_list_components_geometries_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbListComponentsCookie; e: ptr ptr XcbGenericError): ptr XcbXkbListComponentsReply {.importc: "xcb_xkb_list_components_reply".}
proc typesRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length".}
proc typesRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeyTypeIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator".}
proc symsRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length".}
proc symsRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeySymMapIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator".}
proc actsRtrnCount*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count".}
proc actsRtrnCountLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length".}
proc actsRtrnCountEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end".}
proc actsRtrnActs*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbAction] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts".}
proc actsRtrnActsLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length".}
proc actsRtrnActsIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbActionIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator".}
proc behaviorsRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbSetBehavior] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn".}
proc behaviorsRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length".}
proc behaviorsRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbSetBehaviorIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator".}
proc vmodsRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn".}
proc vmodsRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length".}
proc vmodsRtrnEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end".}
proc explicitRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbSetExplicit] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn".}
proc explicitRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length".}
proc explicitRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbSetExplicitIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator".}
proc modmapRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbKeyModMap] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn".}
proc modmapRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length".}
proc modmapRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeyModMapIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator".}
proc vmodmapRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbKeyVModMap] {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn".}
proc vmodmapRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length".}
proc vmodmapRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeyVModMapIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbGetKbdByNameRepliesTypesMap): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16; aux: ptr XcbXkbGetKbdByNameRepliesTypesMap): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_unpack".}
proc getKbdByNameRepliesTypesMapSizeof*(buffer: pointer; nTypes: uint8; nKeySyms: uint8; nKeyActions: uint8; totalActions: uint16; totalKeyBehaviors: uint8; virtualMods: uint16; totalKeyExplicit: uint8; totalModMapKeys: uint8; totalVModMapKeys: uint8; present: uint16): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_types_map_sizeof".}
proc typeNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names".}
proc typeNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length".}
proc typeNamesEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end".}
proc nLevelsPerType*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[uint8] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type".}
proc nLevelsPerTypeLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length".}
proc nLevelsPerTypeEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end".}
proc ktLevelNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names".}
proc ktLevelNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length".}
proc ktLevelNamesEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end".}
proc indicatorNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names".}
proc indicatorNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length".}
proc indicatorNamesEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end".}
proc virtualModNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names".}
proc virtualModNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length".}
proc virtualModNamesEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end".}
proc groups*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups".}
proc groupsLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length".}
proc groupsEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end".}
proc keyNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbKeyName] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names".}
proc keyNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length".}
proc keyNamesIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeyNameIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator".}
proc keyAliases*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbKeyAlias] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases".}
proc keyAliasesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length".}
proc keyAliasesIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbKeyAliasIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator".}
proc radioGroupNames*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbAtom] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names".}
proc radioGroupNamesLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length".}
proc radioGroupNamesEnd*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbGenericIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end".}
proc serialize*(buffer: ptr pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbGetKbdByNameRepliesKeyNamesValueList): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize".}
proc unpack*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32; aux: ptr XcbXkbGetKbdByNameRepliesKeyNamesValueList): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack".}
proc getKbdByNameRepliesKeyNamesValueListSizeof*(buffer: pointer; nTypes: uint8; indicators: uint32; virtualMods: uint16; groupNames: uint8; nKeys: uint8; nKeyAliases: uint8; nRadioGroups: uint8; which: uint32): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof".}
proc compatMapSiRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbSymInterpret] {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn".}
proc compatMapSiRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length".}
proc compatMapSiRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbSymInterpretIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator".}
proc compatMapGroupRtrn*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbModDef] {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn".}
proc compatMapGroupRtrnLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length".}
proc compatMapGroupRtrnIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbModDefIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator".}
proc indicatorMapsMaps*(S: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbIndicatorMap] {.importc: "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps".}
proc indicatorMapsMapsLength*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length".}
proc indicatorMapsMapsIterator*(R: ptr XcbXkbGetKbdByNameReply; S: ptr XcbXkbGetKbdByNameReplies): XcbXkbIndicatorMapIterator {.importc: "xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator".}
proc keyNamesValueList*(R: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbGetKbdByNameRepliesKeyNamesValueList] {.importc: "xcb_xkb_get_kbd_by_name_replies_key_names_value_list".}
proc geometryLabelFont*(R: ptr XcbXkbGetKbdByNameReplies): ptr UncheckedArray[XcbXkbCountedString16] {.importc: "xcb_xkb_get_kbd_by_name_replies_geometry_label_font".}
proc serialize*(buffer: ptr pointer; reported: uint16; aux: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_serialize".}
proc unpack*(buffer: pointer; reported: uint16; aux: ptr XcbXkbGetKbdByNameReplies): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_unpack".}
proc getKbdByNameRepliesSizeof*(buffer: pointer; reported: uint16): cint {.importc: "xcb_xkb_get_kbd_by_name_replies_sizeof".}
proc getKbdByNameSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_kbd_by_name_sizeof".}
proc getKbdByName*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; need: uint16; want: uint16; load: uint8): XcbXkbGetKbdByNameCookie {.importc: "xcb_xkb_get_kbd_by_name".}
proc getKbdByNameUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; need: uint16; want: uint16; load: uint8): XcbXkbGetKbdByNameCookie {.importc: "xcb_xkb_get_kbd_by_name_unchecked".}
proc getKbdByNameReplies*(R: ptr XcbXkbGetKbdByNameReply): pointer {.importc: "xcb_xkb_get_kbd_by_name_replies".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetKbdByNameCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetKbdByNameReply {.importc: "xcb_xkb_get_kbd_by_name_reply".}
proc getDeviceInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_get_device_info_sizeof".}
proc getDeviceInfo*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; wanted: uint16; allButtons: uint8; firstButton: uint8; nButtons: uint8; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec): XcbXkbGetDeviceInfoCookie {.importc: "xcb_xkb_get_device_info".}
proc getDeviceInfoUnchecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; wanted: uint16; allButtons: uint8; firstButton: uint8; nButtons: uint8; ledClass: XcbXkbLedClassSpec; ledID: XcbXkbIdSpec): XcbXkbGetDeviceInfoCookie {.importc: "xcb_xkb_get_device_info_unchecked".}
proc name*(R: ptr XcbXkbGetDeviceInfoReply): ptr UncheckedArray[XcbXkbString8] {.importc: "xcb_xkb_get_device_info_name".}
proc nameLength*(R: ptr XcbXkbGetDeviceInfoReply): cint {.importc: "xcb_xkb_get_device_info_name_length".}
proc nameEnd*(R: ptr XcbXkbGetDeviceInfoReply): XcbGenericIterator {.importc: "xcb_xkb_get_device_info_name_end".}
proc btnActions*(R: ptr XcbXkbGetDeviceInfoReply): ptr UncheckedArray[XcbXkbAction] {.importc: "xcb_xkb_get_device_info_btn_actions".}
proc btnActionsLength*(R: ptr XcbXkbGetDeviceInfoReply): cint {.importc: "xcb_xkb_get_device_info_btn_actions_length".}
proc btnActionsIterator*(R: ptr XcbXkbGetDeviceInfoReply): XcbXkbActionIterator {.importc: "xcb_xkb_get_device_info_btn_actions_iterator".}
proc ledsLength*(R: ptr XcbXkbGetDeviceInfoReply): cint {.importc: "xcb_xkb_get_device_info_leds_length".}
proc ledsIterator*(R: ptr XcbXkbGetDeviceInfoReply): XcbXkbDeviceLedInfoIterator {.importc: "xcb_xkb_get_device_info_leds_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbGetDeviceInfoCookie; e: ptr ptr XcbGenericError): ptr XcbXkbGetDeviceInfoReply {.importc: "xcb_xkb_get_device_info_reply".}
proc setDeviceInfoSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_device_info_sizeof".}
proc setDeviceInfoChecked*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; firstBtn: uint8; nBtns: uint8; change: uint16; nDeviceLedFBs: uint16; btnActions: ptr XcbXkbAction; leds: ptr XcbXkbDeviceLedInfo): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_device_info_checked".}
proc setDeviceInfo*(c: ptr XcbConnection; deviceSpec: XcbXkbDeviceSpec; firstBtn: uint8; nBtns: uint8; change: uint16; nDeviceLedFBs: uint16; btnActions: ptr XcbXkbAction; leds: ptr XcbXkbDeviceLedInfo): XcbVoidCookie {.discardable, importc: "xcb_xkb_set_device_info".}
proc btnActions*(R: ptr XcbXkbSetDeviceInfoRequest): ptr UncheckedArray[XcbXkbAction] {.importc: "xcb_xkb_set_device_info_btn_actions".}
proc btnActionsLength*(R: ptr XcbXkbSetDeviceInfoRequest): cint {.importc: "xcb_xkb_set_device_info_btn_actions_length".}
proc btnActionsIterator*(R: ptr XcbXkbSetDeviceInfoRequest): XcbXkbActionIterator {.importc: "xcb_xkb_set_device_info_btn_actions_iterator".}
proc ledsLength*(R: ptr XcbXkbSetDeviceInfoRequest): cint {.importc: "xcb_xkb_set_device_info_leds_length".}
proc ledsIterator*(R: ptr XcbXkbSetDeviceInfoRequest): XcbXkbDeviceLedInfoIterator {.importc: "xcb_xkb_set_device_info_leds_iterator".}
proc setDebuggingFlagsSizeof*(buffer: pointer): cint {.importc: "xcb_xkb_set_debugging_flags_sizeof".}
proc setDebuggingFlags*(c: ptr XcbConnection; msgLength: uint16; affectFlags: uint32; flags: uint32; affectCtrls: uint32; ctrls: uint32; message: ptr XcbXkbString8): XcbXkbSetDebuggingFlagsCookie {.importc: "xcb_xkb_set_debugging_flags".}
proc setDebuggingFlagsUnchecked*(c: ptr XcbConnection; msgLength: uint16; affectFlags: uint32; flags: uint32; affectCtrls: uint32; ctrls: uint32; message: ptr XcbXkbString8): XcbXkbSetDebuggingFlagsCookie {.importc: "xcb_xkb_set_debugging_flags_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXkbSetDebuggingFlagsCookie; e: ptr ptr XcbGenericError): ptr XcbXkbSetDebuggingFlagsReply {.importc: "xcb_xkb_set_debugging_flags_reply".}

{.pop.}
