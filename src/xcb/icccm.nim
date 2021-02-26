import ./xcb

{.passl: "-lxcb-icccm".}
{.push header: "xcb/xcb_icccm.h".}

type
  XcbIcccmGetTextPropertyReply* {.importc: "xcb_icccm_get_text_property_reply_t", bycopy.} = object
    reply* {.importc: "_reply".}: ptr XcbGetPropertyReply
    encoding*: XcbAtom
    nameLen* {.importc: "name_len".}: uint32
    name*: cstring
    format*: uint8

  XcbIcccmGetWmColormapWindowsReply* {.importc: "xcb_icccm_get_wm_colormap_windows_reply_t", bycopy.} = object
    windowsLen* {.importc: "windows_len".}: uint32
    windows*: ptr XcbWindow
    reply* {.importc: "_reply".}: ptr XcbGetPropertyReply

  XcbIcccmGetWmClassReply* {.importc: "xcb_icccm_get_wm_class_reply_t", bycopy.} = object
    instanceName* {.importc: "instance_name".}: cstring
    className* {.importc: "class_name".}: cstring
    reply* {.importc: "_reply".}: ptr XcbGetPropertyReply

  XcbIcccmSizeHintsFlags* {.importc: "xcb_icccm_size_hints_flags_t".} = enum
    xcbIcccmSizeHintUsPosition = 1 shl 0, xcbIcccmSizeHintUsSize = 1 shl 1,
    xcbIcccmSizeHintPPosition = 1 shl 2, xcbIcccmSizeHintPSize = 1 shl 3,
    xcbIcccmSizeHintPMinSize = 1 shl 4,
    xcbIcccmSizeHintPMaxSize = 1 shl 5,
    xcbIcccmSizeHintPResizeInc = 1 shl 6,
    xcbIcccmSizeHintPAspect = 1 shl 7, xcbIcccmSizeHintBaseSize = 1 shl 8,
    xcbIcccmSizeHintPWinGravity = 1 shl 9

  XcbSizeHints* {.importc: "xcb_size_hints_t", bycopy.} = object
    flags*: uint32
    x*: int32
    y*: int32
    width*: int32
    height*: int32
    minWidth* {.importc: "min_width".}: int32
    minHeight* {.importc: "min_height".}: int32
    maxWidth* {.importc: "max_width".}: int32
    maxHeight* {.importc: "max_height".}: int32
    widthInc* {.importc: "width_inc".}: int32
    heightInc* {.importc: "height_inc".}: int32
    minAspectNum* {.importc: "min_aspect_num".}: int32
    minAspectDen* {.importc: "min_aspect_den".}: int32
    maxAspectNum* {.importc: "max_aspect_num".}: int32
    maxAspectDen* {.importc: "max_aspect_den".}: int32
    baseWidth* {.importc: "base_width".}: int32
    baseHeight* {.importc: "base_height".}: int32
    winGravity* {.importc: "win_gravity".}: uint32

  XcbIcccmWmHints* {.importc: "xcb_icccm_wm_hints_t", bycopy.} = object
    flags*: int32
    input*: uint32
    initialState* {.importc: "initial_state".}: int32
    iconPixmap* {.importc: "icon_pixmap".}: XcbPixmap
    iconWindow* {.importc: "icon_window".}: XcbWindow
    iconX* {.importc: "icon_x".}: int32
    iconY* {.importc: "icon_y".}: int32
    iconMask* {.importc: "icon_mask".}: XcbPixmap
    windowGroup* {.importc: "window_group".}: XcbWindow

  XcbIcccmWmState* {.importc: "xcb_icccm_wm_state_t".} = enum
    xcbIcccmWmStateWithdrawn = 0, xcbIcccmWmStateNormal = 1,
    xcbIcccmWmStateIconic = 3

  XcbIcccmWm* {.importc: "xcb_icccm_wm_t".} = enum
    xcbIcccmWmHintInput = 1 shl 0,
    xcbIcccmWmHintState = 1 shl 1,
    xcbIcccmWmHintIconPixmap = 1 shl 2,
    xcbIcccmWmHintIconWindow = 1 shl 3,
    xcbIcccmWmHintIconPosition = 1 shl 4,
    xcbIcccmWmHintIconMask = 1 shl 5,
    xcbIcccmWmHintWindowGroup = 1 shl 6,
    xcbIcccmWmHintXUrgency = 1 shl 8

  XcbIcccmGetWmProtocolsReply* {.importc: "xcb_icccm_get_wm_protocols_reply_t", bycopy.} = object
    atomsLen* {.importc: "atoms_len".}: uint32
    atoms*: ptr XcbAtom
    reply* {.importc: "_reply".}: ptr XcbGetPropertyReply

{.pop.}

const
  xcbIcccmNumWmSizeHintsElements* = 18
  xcbIcccmNumWmHintsElements* = 9
  xcbIcccmWmAllHints* = XCB_ICCCM_WM_HINT_INPUT.ord or XCB_ICCCM_WM_HINT_STATE.ord or
      XCB_ICCCM_WM_HINT_ICON_PIXMAP.ord or XCB_ICCCM_WM_HINT_ICON_WINDOW.ord or
      XCB_ICCCM_WM_HINT_ICON_POSITION.ord or XCB_ICCCM_WM_HINT_ICON_MASK.ord or
      XCB_ICCCM_WM_HINT_WINDOW_GROUP.ord

{.push cdecl, header: "xcb/xcb_icccm.h".}

proc getTextProperty*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_text_property".}
proc getTextPropertyUnchecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_text_property_unchecked".}
proc getTextPropertyReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbIcccmGetTextPropertyReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_text_property_reply".}
proc wipe*(prop: ptr XcbIcccmGetTextPropertyReply) {.importc: "xcb_icccm_get_text_property_reply_wipe".}
proc setWmNameChecked*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_name_checked".}
proc setWmName*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_name".}
proc getWmName*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_name".}
proc getWmNameUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_name_unchecked".}
proc getWmNameReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbIcccmGetTextPropertyReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_name_reply".}
proc setWmIconNameChecked*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_icon_name_checked".}
proc setWmIconName*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_icon_name".}
proc getWmIconName*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_icon_name".}
proc getWmIconNameUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_icon_name_unchecked".}
proc getWmIconNameReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbIcccmGetTextPropertyReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_icon_name_reply".}
proc setWmColormapWindowsChecked*(c: ptr XcbConnection; window: XcbWindow; wmColormapWindowsAtom: XcbAtom; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_colormap_windows_checked".}
proc setWmColormapWindows*(c: ptr XcbConnection; window: XcbWindow; wmColormapWindowsAtom: XcbAtom; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_colormap_windows".}
proc getWmColormapWindows*(c: ptr XcbConnection; window: XcbWindow; wmColormapWindowsAtom: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_colormap_windows".}
proc getWmColormapWindowsUnchecked*(c: ptr XcbConnection; window: XcbWindow; wmColormapWindowsAtom: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_colormap_windows_unchecked".}
proc getWmColormapWindowsFromReply*(reply: ptr XcbGetPropertyReply; colormapWindows: ptr XcbIcccmGetWmColormapWindowsReply): uint8 {.importc: "xcb_icccm_get_wm_colormap_windows_from_reply".}
proc getWmColormapWindowsReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; windows: ptr XcbIcccmGetWmColormapWindowsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_colormap_windows_reply".}
proc wipe*(windows: ptr XcbIcccmGetWmColormapWindowsReply) {.importc: "xcb_icccm_get_wm_colormap_windows_reply_wipe".}
proc setWmClientMachineChecked*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_client_machine_checked".}
proc setWmClientMachine*(c: ptr XcbConnection; window: XcbWindow; encoding: XcbAtom; format: uint8; nameLen: uint32; name: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_client_machine".}
proc getWmClientMachine*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_client_machine".}
proc getWmClientMachineUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_client_machine_unchecked".}
proc getWmClientMachineReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbIcccmGetTextPropertyReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_client_machine_reply".}
proc setWmClassChecked*(c: ptr XcbConnection; window: XcbWindow; classLen: uint32; className: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_class_checked".}
proc setWmClass*(c: ptr XcbConnection; window: XcbWindow; classLen: uint32; className: cstring): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_class".}
proc getWmClass*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_class".}
proc getWmClassUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_class_unchecked".}
proc getWmClassFromReply*(prop: ptr XcbIcccmGetWmClassReply; reply: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_icccm_get_wm_class_from_reply".}
proc getWmClassReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbIcccmGetWmClassReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_class_reply".}
proc wipe*(prop: ptr XcbIcccmGetWmClassReply) {.importc: "xcb_icccm_get_wm_class_reply_wipe".}
proc setWmTransientForChecked*(c: ptr XcbConnection; window: XcbWindow; transientForWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_transient_for_checked".}
proc setWmTransientFor*(c: ptr XcbConnection; window: XcbWindow; transientForWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_transient_for".}
proc getWmTransientFor*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_transient_for".}
proc getWmTransientForUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_transient_for_unchecked".}
proc getWmTransientForFromReply*(prop: ptr XcbWindow; reply: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_icccm_get_wm_transient_for_from_reply".}
proc getWmTransientForReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; prop: ptr XcbWindow; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_transient_for_reply".}
proc setPosition*(hints: ptr XcbSizeHints; userSpecified: cint; x: int32; y: int32) {.importc: "xcb_icccm_size_hints_set_position".}
proc setSize*(hints: ptr XcbSizeHints; userSpecified: cint; width: int32; height: int32) {.importc: "xcb_icccm_size_hints_set_size".}
proc setMinSize*(hints: ptr XcbSizeHints; minWidth: int32; minHeight: int32) {.importc: "xcb_icccm_size_hints_set_min_size".}
proc setMaxSize*(hints: ptr XcbSizeHints; maxWidth: int32; maxHeight: int32) {.importc: "xcb_icccm_size_hints_set_max_size".}
proc setResizeInc*(hints: ptr XcbSizeHints; widthInc: int32; heightInc: int32) {.importc: "xcb_icccm_size_hints_set_resize_inc".}
proc setAspect*(hints: ptr XcbSizeHints; minAspectNum: int32; minAspectDen: int32; maxAspectNum: int32; maxAspectDen: int32) {.importc: "xcb_icccm_size_hints_set_aspect".}
proc setBaseSize*(hints: ptr XcbSizeHints; baseWidth: int32; baseHeight: int32) {.importc: "xcb_icccm_size_hints_set_base_size".}
proc setWinGravity*(hints: ptr XcbSizeHints; winGravity: XcbGravity) {.importc: "xcb_icccm_size_hints_set_win_gravity".}
proc setWmSizeHintsChecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom; hints: ptr XcbSizeHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_size_hints_checked".}
proc setWmSizeHints*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom; hints: ptr XcbSizeHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_size_hints".}
proc getWmSizeHints*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_size_hints".}
proc getWmSizeHintsUnchecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_size_hints_unchecked".}
proc getWmSizeHintsReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; hints: ptr XcbSizeHints; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_size_hints_reply".}
proc setWmNormalHintsChecked*(c: ptr XcbConnection; window: XcbWindow; hints: ptr XcbSizeHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_normal_hints_checked".}
proc setWmNormalHints*(c: ptr XcbConnection; window: XcbWindow; hints: ptr XcbSizeHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_normal_hints".}
proc getWmNormalHints*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_normal_hints".}
proc getWmNormalHintsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_normal_hints_unchecked".}
proc getWmSizeHintsFromReply*(hints: ptr XcbSizeHints; reply: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_icccm_get_wm_size_hints_from_reply".}
proc getWmNormalHintsReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; hints: ptr XcbSizeHints; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_normal_hints_reply".}
proc getUrgency*(hints: ptr XcbIcccmWmHints): uint32 {.importc: "xcb_icccm_wm_hints_get_urgency".}
proc setInput*(hints: ptr XcbIcccmWmHints; input: uint8) {.importc: "xcb_icccm_wm_hints_set_input".}
proc setIconic*(hints: ptr XcbIcccmWmHints) {.importc: "xcb_icccm_wm_hints_set_iconic".}
proc setNormal*(hints: ptr XcbIcccmWmHints) {.importc: "xcb_icccm_wm_hints_set_normal".}
proc setWithdrawn*(hints: ptr XcbIcccmWmHints) {.importc: "xcb_icccm_wm_hints_set_withdrawn".}
proc setNone*(hints: ptr XcbIcccmWmHints) {.importc: "xcb_icccm_wm_hints_set_none".}
proc setIconPixmap*(hints: ptr XcbIcccmWmHints; iconPixmap: XcbPixmap) {.importc: "xcb_icccm_wm_hints_set_icon_pixmap".}
proc setIconMask*(hints: ptr XcbIcccmWmHints; iconMask: XcbPixmap) {.importc: "xcb_icccm_wm_hints_set_icon_mask".}
proc setIconWindow*(hints: ptr XcbIcccmWmHints; iconWindow: XcbWindow) {.importc: "xcb_icccm_wm_hints_set_icon_window".}
proc setWindowGroup*(hints: ptr XcbIcccmWmHints; windowGroup: XcbWindow) {.importc: "xcb_icccm_wm_hints_set_window_group".}
proc setUrgency*(hints: ptr XcbIcccmWmHints) {.importc: "xcb_icccm_wm_hints_set_urgency".}
proc setWmHintsChecked*(c: ptr XcbConnection; window: XcbWindow; hints: ptr XcbIcccmWmHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_hints_checked".}
proc setWmHints*(c: ptr XcbConnection; window: XcbWindow; hints: ptr XcbIcccmWmHints): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_hints".}
proc getWmHints*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_hints".}
proc getWmHintsUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_hints_unchecked".}
proc getWmHintsFromReply*(hints: ptr XcbIcccmWmHints; reply: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_icccm_get_wm_hints_from_reply".}
proc getWmHintsReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; hints: ptr XcbIcccmWmHints; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_hints_reply".}
proc setWmProtocolsChecked*(c: ptr XcbConnection; window: XcbWindow; wmProtocols: XcbAtom; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_protocols_checked".}
proc setWmProtocols*(c: ptr XcbConnection; window: XcbWindow; wmProtocols: XcbAtom; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_icccm_set_wm_protocols".}
proc getWmProtocols*(c: ptr XcbConnection; window: XcbWindow; wmProtocolAtom: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_protocols".}
proc getWmProtocolsUnchecked*(c: ptr XcbConnection; window: XcbWindow; wmProtocolAtom: XcbAtom): XcbGetPropertyCookie {.importc: "xcb_icccm_get_wm_protocols_unchecked".}
proc getWmProtocolsFromReply*(reply: ptr XcbGetPropertyReply; protocols: ptr XcbIcccmGetWmProtocolsReply): uint8 {.importc: "xcb_icccm_get_wm_protocols_from_reply".}
proc getWmProtocolsReply*(c: ptr XcbConnection; cookie: XcbGetPropertyCookie; protocols: ptr XcbIcccmGetWmProtocolsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_icccm_get_wm_protocols_reply".}
proc wipe*(protocols: ptr XcbIcccmGetWmProtocolsReply) {.importc: "xcb_icccm_get_wm_protocols_reply_wipe".}

{.pop.}
