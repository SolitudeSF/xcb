import ./xcb

{.passl: "-lxcb-ewmh".}
{.push header: "xcb/xcb_ewmh.h".}

type
  XcbEwmhConnection* {.importc: "xcb_ewmh_connection_t", bycopy.} = object
    connection*: ptr XcbConnection
    screens*: ptr UncheckedArray[ptr XcbScreen]
    nbScreens* {.importc: "nb_screens".}: cint
    netWmCmSn* {.importc: "NET_WM_CM_Sn".}: ptr XcbAtom
    netSupported* {.importc: "NET_SUPPORTED".}: XcbAtom
    netClientList* {.importc: "NET_CLIENT_LIST".}: XcbAtom
    netClientListStacking* {.importc: "NET_CLIENT_LIST_STACKING".}: XcbAtom
    netNumberOfDesktops* {.importc: "NET_NUMBER_OF_DESKTOPS".}: XcbAtom
    netDesktopGeometry* {.importc: "NET_DESKTOP_GEOMETRY".}: XcbAtom
    netDesktopViewport* {.importc: "NET_DESKTOP_VIEWPORT".}: XcbAtom
    netCurrentDesktop* {.importc: "NET_CURRENT_DESKTOP".}: XcbAtom
    netDesktopNames* {.importc: "NET_DESKTOP_NAMES".}: XcbAtom
    netActiveWindow* {.importc: "NET_ACTIVE_WINDOW".}: XcbAtom
    netWorkarea* {.importc: "NET_WORKAREA".}: XcbAtom
    netSupportingWmCheck* {.importc: "NET_SUPPORTING_WM_CHECK".}: XcbAtom
    netVirtualRoots* {.importc: "NET_VIRTUAL_ROOTS".}: XcbAtom
    netDesktopLayout* {.importc: "NET_DESKTOP_LAYOUT".}: XcbAtom
    netShowingDesktop* {.importc: "NET_SHOWING_DESKTOP".}: XcbAtom
    netCloseWindow* {.importc: "NET_CLOSE_WINDOW".}: XcbAtom
    netMoveresizeWindow* {.importc: "NET_MOVERESIZE_WINDOW".}: XcbAtom
    netWmMoveresize* {.importc: "NET_WM_MOVERESIZE".}: XcbAtom
    netRestackWindow* {.importc: "NET_RESTACK_WINDOW".}: XcbAtom
    netRequestFrameExtents* {.importc: "NET_REQUEST_FRAME_EXTENTS".}: XcbAtom
    netWmName* {.importc: "NET_WM_NAME".}: XcbAtom
    netWmVisibleName* {.importc: "NET_WM_VISIBLE_NAME".}: XcbAtom
    netWmIconName* {.importc: "NET_WM_ICON_NAME".}: XcbAtom
    netWmVisibleIconName* {.importc: "NET_WM_VISIBLE_ICON_NAME".}: XcbAtom
    netWmDesktop* {.importc: "NET_WM_DESKTOP".}: XcbAtom
    netWmWindowType* {.importc: "NET_WM_WINDOW_TYPE".}: XcbAtom
    netWmState* {.importc: "NET_WM_STATE".}: XcbAtom
    netWmAllowedActions* {.importc: "NET_WM_ALLOWED_ACTIONS".}: XcbAtom
    netWmStrut* {.importc: "NET_WM_STRUT".}: XcbAtom
    netWmStrutPartial* {.importc: "NET_WM_STRUT_PARTIAL".}: XcbAtom
    netWmIconGeometry* {.importc: "NET_WM_ICON_GEOMETRY".}: XcbAtom
    netWmIcon* {.importc: "NET_WM_ICON".}: XcbAtom
    netWmPid* {.importc: "NET_WM_PID".}: XcbAtom
    netWmHandledIcons* {.importc: "NET_WM_HANDLED_ICONS".}: XcbAtom
    netWmUserTime* {.importc: "NET_WM_USER_TIME".}: XcbAtom
    netWmUserTimeWindow* {.importc: "NET_WM_USER_TIME_WINDOW".}: XcbAtom
    netFrameExtents* {.importc: "NET_FRAME_EXTENTS".}: XcbAtom
    netWmPing* {.importc: "NET_WM_PING".}: XcbAtom
    netWmSyncRequest* {.importc: "NET_WM_SYNC_REQUEST".}: XcbAtom
    netWmSyncRequestCounter* {.importc: "NET_WM_SYNC_REQUEST_COUNTER".}: XcbAtom
    netWmFullscreenMonitors* {.importc: "NET_WM_FULLSCREEN_MONITORS".}: XcbAtom
    netWmFullPlacement* {.importc: "NET_WM_FULL_PLACEMENT".}: XcbAtom
    utf8String* {.importc: "UTF8_STRING".}: XcbAtom
    wmProtocols* {.importc: "WM_PROTOCOLS".}: XcbAtom
    manager*: XcbAtom
    netWmWindowTypeDesktop* {.importc: "NET_WM_WINDOW_TYPE_DESKTOP".}: XcbAtom
    netWmWindowTypeDock* {.importc: "NET_WM_WINDOW_TYPE_DOCK".}: XcbAtom
    netWmWindowTypeToolbar* {.importc: "NET_WM_WINDOW_TYPE_TOOLBAR".}: XcbAtom
    netWmWindowTypeMenu* {.importc: "NET_WM_WINDOW_TYPE_MENU".}: XcbAtom
    netWmWindowTypeUtility* {.importc: "NET_WM_WINDOW_TYPE_UTILITY".}: XcbAtom
    netWmWindowTypeSplash* {.importc: "NET_WM_WINDOW_TYPE_SPLASH".}: XcbAtom
    netWmWindowTypeDialog* {.importc: "NET_WM_WINDOW_TYPE_DIALOG".}: XcbAtom
    netWmWindowTypeDropdownMenu* {.importc: "NET_WM_WINDOW_TYPE_DROPDOWN_MENU".}: XcbAtom
    netWmWindowTypePopupMenu* {.importc: "NET_WM_WINDOW_TYPE_POPUP_MENU".}: XcbAtom
    netWmWindowTypeTooltip* {.importc: "NET_WM_WINDOW_TYPE_TOOLTIP".}: XcbAtom
    netWmWindowTypeNotification* {.importc: "NET_WM_WINDOW_TYPE_NOTIFICATION".}: XcbAtom
    netWmWindowTypeCombo* {.importc: "NET_WM_WINDOW_TYPE_COMBO".}: XcbAtom
    netWmWindowTypeDnd* {.importc: "NET_WM_WINDOW_TYPE_DND".}: XcbAtom
    netWmWindowTypeNormal* {.importc: "NET_WM_WINDOW_TYPE_NORMAL".}: XcbAtom
    netWmStateModal* {.importc: "NET_WM_STATE_MODAL".}: XcbAtom
    netWmStateSticky* {.importc: "NET_WM_STATE_STICKY".}: XcbAtom
    netWmStateMaximizedVert* {.importc: "NET_WM_STATE_MAXIMIZED_VERT".}: XcbAtom
    netWmStateMaximizedHorz* {.importc: "NET_WM_STATE_MAXIMIZED_HORZ".}: XcbAtom
    netWmStateShaded* {.importc: "NET_WM_STATE_SHADED".}: XcbAtom
    netWmStateSkipTaskbar* {.importc: "NET_WM_STATE_SKIP_TASKBAR".}: XcbAtom
    netWmStateSkipPager* {.importc: "NET_WM_STATE_SKIP_PAGER".}: XcbAtom
    netWmStateHidden* {.importc: "NET_WM_STATE_HIDDEN".}: XcbAtom
    netWmStateFullscreen* {.importc: "NET_WM_STATE_FULLSCREEN".}: XcbAtom
    netWmStateAbove* {.importc: "NET_WM_STATE_ABOVE".}: XcbAtom
    netWmStateBelow* {.importc: "NET_WM_STATE_BELOW".}: XcbAtom
    netWmStateDemandsAttention* {.importc: "NET_WM_STATE_DEMANDS_ATTENTION".}: XcbAtom
    netWmActionMove* {.importc: "NET_WM_ACTION_MOVE".}: XcbAtom
    netWmActionResize* {.importc: "NET_WM_ACTION_RESIZE".}: XcbAtom
    netWmActionMinimize* {.importc: "NET_WM_ACTION_MINIMIZE".}: XcbAtom
    netWmActionShade* {.importc: "NET_WM_ACTION_SHADE".}: XcbAtom
    netWmActionStick* {.importc: "NET_WM_ACTION_STICK".}: XcbAtom
    netWmActionMaximizeHorz* {.importc: "NET_WM_ACTION_MAXIMIZE_HORZ".}: XcbAtom
    netWmActionMaximizeVert* {.importc: "NET_WM_ACTION_MAXIMIZE_VERT".}: XcbAtom
    netWmActionFullscreen* {.importc: "NET_WM_ACTION_FULLSCREEN".}: XcbAtom
    netWmActionChangeDesktop* {.importc: "NET_WM_ACTION_CHANGE_DESKTOP".}: XcbAtom
    netWmActionClose* {.importc: "NET_WM_ACTION_CLOSE".}: XcbAtom
    netWmActionAbove* {.importc: "NET_WM_ACTION_ABOVE".}: XcbAtom
    netWmActionBelow* {.importc: "NET_WM_ACTION_BELOW".}: XcbAtom

  XcbEwmhGetAtomsReply* {.importc: "xcb_ewmh_get_atoms_reply_t", bycopy.} = object
    atomsLen* {.importc: "atoms_len".}: uint32
    atoms*: ptr XcbAtom
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply

  XcbEwmhGetWindowsReply* {.importc: "xcb_ewmh_get_windows_reply_t", bycopy.} = object
    windowsLen* {.importc: "windows_len".}: uint32
    windows*: ptr XcbWindow
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply

  XcbEwmhGetUtf8StringsReply* {.importc: "xcb_ewmh_get_utf8_strings_reply_t", bycopy.} = object
    stringsLen* {.importc: "strings_len".}: uint32
    strings*: cstring
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply

  XcbEwmhCoordinates* {.importc: "xcb_ewmh_coordinates_t", bycopy.} = object
    x*: uint32
    y*: uint32

  XcbEwmhGetDesktopViewportReply* {.importc: "xcb_ewmh_get_desktop_viewport_reply_t", bycopy.} = object
    desktopViewportLen* {.importc: "desktop_viewport_len".}: uint32
    desktopViewport* {.importc: "desktop_viewport".}: ptr XcbEwmhCoordinates
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply

  XcbEwmhGeometry* {.importc: "xcb_ewmh_geometry_t", bycopy.} = object
    x*: uint32
    y*: uint32
    width*: uint32
    height*: uint32

  XcbEwmhGetWorkareaReply* {.importc: "xcb_ewmh_get_workarea_reply_t", bycopy.} = object
    workareaLen* {.importc: "workarea_len".}: uint32
    workarea*: ptr XcbEwmhGeometry
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply


  XcbEwmhClientSourceType* {.importc: "xcb_ewmh_client_source_type_t".} = enum
    xcbEwmhClientSourceTypeNone = 0,
    xcbEwmhClientSourceTypeNormal = 1,
    xcbEwmhClientSourceTypeOther = 2

  XcbEwmhDesktopLayoutOrientation* {.importc: "xcb_ewmh_desktop_layout_orientation_t".} = enum
    xcbEwmhWmOrientationHorz = 0,
    xcbEwmhWmOrientationVert = 1

  XcbEwmhDesktopLayoutStartingCorner* {.importc: "xcb_ewmh_desktop_layout_starting_corner_t".} = enum
    xcbEwmhWmTopleft = 0,
    xcbEwmhWmTopright = 1,
    xcbEwmhWmBottomright = 2,
    xcbEwmhWmBottomleft = 3

  XcbEwmhGetDesktopLayoutReply* {.importc: "xcb_ewmh_get_desktop_layout_reply_t", bycopy.} = object
    orientation*: uint32
    columns*: uint32
    rows*: uint32
    startingCorner* {.importc: "starting_corner".}: uint32

  XcbEwmhMoveresizeWindowOptFlags* {.importc: "xcb_ewmh_moveresize_window_opt_flags_t".} = enum
    xcbEwmhMoveresizeWindowX = 1 shl 8,
    xcbEwmhMoveresizeWindowY = 1 shl 9,
    xcbEwmhMoveresizeWindowWidth = 1 shl 10,
    xcbEwmhMoveresizeWindowHeight = 1 shl 11

  XcbEwmhMoveresizeDirection* {.importc: "xcb_ewmh_moveresize_direction_t".} = enum
    xcbEwmhWmMoveresizeSizeTopleft = 0,
    xcbEwmhWmMoveresizeSizeTop = 1,
    xcbEwmhWmMoveresizeSizeTopright = 2,
    xcbEwmhWmMoveresizeSizeRight = 3,
    xcbEwmhWmMoveresizeSizeBottomright = 4,
    xcbEwmhWmMoveresizeSizeBottom = 5,
    xcbEwmhWmMoveresizeSizeBottomleft = 6,
    xcbEwmhWmMoveresizeSizeLeft = 7,
    xcbEwmhWmMoveresizeMove = 8,
    xcbEwmhWmMoveresizeSizeKeyboard = 9,
    xcbEwmhWmMoveresizeMoveKeyboard = 10,
    xcbEwmhWmMoveresizeCancel = 11

  XcbEwmhWmStateAction* {.importc: "xcb_ewmh_wm_state_action_t".} = enum
    xcbEwmhWmStateRemove = 0,
    xcbEwmhWmStateAdd = 1,
    xcbEwmhWmStateToggle = 2

  XcbEwmhWmStrutPartial* {.importc: "xcb_ewmh_wm_strut_partial_t", bycopy.} = object
    left*: uint32
    right*: uint32
    top*: uint32
    bottom*: uint32
    leftStartY* {.importc: "left_start_y".}: uint32
    leftEndY* {.importc: "left_end_y".}: uint32
    rightStartY* {.importc: "right_start_y".}: uint32
    rightEndY* {.importc: "right_end_y".}: uint32
    topStartX* {.importc: "top_start_x".}: uint32
    topEndX* {.importc: "top_end_x".}: uint32
    bottomStartX* {.importc: "bottom_start_x".}: uint32
    bottomEndX* {.importc: "bottom_end_x".}: uint32

  XcbEwmhWmIconIterator* {.importc: "xcb_ewmh_wm_icon_iterator_t", bycopy.} = object
    width*: uint32
    height*: uint32
    data*: ptr UncheckedArray[uint32]
    rem*: cuint
    index*: cuint

  XcbEwmhGetWmIconReply* {.importc: "xcb_ewmh_get_wm_icon_reply_t", bycopy.} = object
    numIcons* {.importc: "num_icons".}: cuint
    reply* {.importc: "reply".}: ptr XcbGetPropertyReply

  XcbEwmhGetExtentsReply* {.importc: "xcb_ewmh_get_extents_reply_t", bycopy.} = object
    left*: uint32
    right*: uint32
    top*: uint32
    bottom*: uint32

  XcbEwmhGetWmFullscreenMonitorsReply* {.importc: "xcb_ewmh_get_wm_fullscreen_monitors_reply_t", bycopy.} = object
    top*: uint32
    bottom*: uint32
    left*: uint32
    right*: uint32

{.push cdecl.}

proc initAtoms*(c: ptr XcbConnection; ewmh: ptr XcbEwmhConnection): ptr XcbInternAtomCookie {.importc: "xcb_ewmh_init_atoms".}
proc initAtomsReplies*(ewmh: ptr XcbEwmhConnection; ewmhCookies: ptr XcbInternAtomCookie; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_init_atoms_replies".}
proc sendClientMessage*(c: ptr XcbConnection; window: XcbWindow; dest: XcbWindow; atom: XcbAtom; dataLen: uint32; data: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_send_client_message".}
proc getWindow*(window: ptr XcbWindow; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_window_from_reply".}
proc getWindowReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; window: ptr XcbWindow; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_window_reply".}
proc getCardinal*(cardinal: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_cardinal_from_reply".}
proc getCardinalReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; cardinal: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_cardinal_reply".}
proc getAtoms*(atoms: ptr XcbEwmhGetAtomsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_atoms_from_reply".}
proc getAtomsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; atoms: ptr XcbEwmhGetAtomsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_atoms_reply".}
proc wipe*(data: ptr XcbEwmhGetAtomsReply) {.importc: "xcb_ewmh_get_atoms_reply_wipe".}
proc getWindows*(atoms: ptr XcbEwmhGetWindowsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_windows_from_reply".}
proc getUtf8Strings*(ewmh: ptr XcbEwmhConnection; data: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_utf8_strings_from_reply".}
proc getUtf8StringsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; data: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_utf8_strings_reply".}
proc getWindowsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; atoms: ptr XcbEwmhGetWindowsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_windows_reply".}
proc wipe*(data: ptr XcbEwmhGetWindowsReply) {.importc: "xcb_ewmh_get_windows_reply_wipe".}
proc wipe*(data: ptr XcbEwmhGetUtf8StringsReply) {.importc: "xcb_ewmh_get_utf8_strings_reply_wipe".}
proc setSupported*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_supported".}
proc setSupportedChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_supported_checked".}
proc getSupportedUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_supported_unchecked".}
proc getSupported*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_supported".}
proc setClientList*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_client_list".}
proc setClientListChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_client_list_checked".}
proc getClientListUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_client_list_unchecked".}
proc getClientList*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_client_list".}
proc setClientListStacking*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_client_list_stacking".}
proc setClientListStackingChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_client_list_stacking_checked".}
proc getClientListStackingUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_client_list_stacking_unchecked".}
proc getClientListStacking*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_client_list_stacking".}
proc setNumberOfDesktops*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; numberOfDesktops: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_number_of_desktops".}
proc setNumberOfDesktopsChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; numberOfDesktops: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_number_of_desktops_checked".}
proc getNumberOfDesktopsUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_number_of_desktops_unchecked".}
proc getNumberOfDesktops*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_number_of_desktops".}
proc setDesktopGeometry*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newWidth: uint32; newHeight: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_geometry".}
proc setDesktopGeometryChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newWidth: uint32; newHeight: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_geometry_checked".}
proc getDesktopGeometryUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_geometry_unchecked".}
proc getDesktopGeometry*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_geometry".}
proc requestChangeDesktopGeometry*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newWidth: uint32; newHeight: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_desktop_geometry".}
proc getDesktopGeometry*(width: ptr uint32; height: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_desktop_geometry_from_reply".}
proc getDesktopGeometryReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; width: ptr uint32; height: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_desktop_geometry_reply".}
proc setDesktopViewport*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbEwmhCoordinates): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_viewport".}
proc setDesktopViewportChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbEwmhCoordinates): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_viewport_checked".}
proc getDesktopViewportUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_viewport_unchecked".}
proc getDesktopViewport*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_viewport".}
proc requestChangeDesktopViewport*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; x: uint32; y: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_desktop_viewport".}
proc getDesktopViewport*(vp: ptr XcbEwmhGetDesktopViewportReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_desktop_viewport_from_reply".}
proc getDesktopViewportReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; vp: ptr XcbEwmhGetDesktopViewportReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_desktop_viewport_reply".}
proc wipe*(r: ptr XcbEwmhGetDesktopViewportReply) {.importc: "xcb_ewmh_get_desktop_viewport_reply_wipe".}
proc setCurrentDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newCurrentDesktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_current_desktop".}
proc setCurrentDesktopChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newCurrentDesktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_current_desktop_checked".}
proc getCurrentDesktopUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_current_desktop_unchecked".}
proc getCurrentDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_current_desktop".}
proc requestChangeCurrentDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newDesktop: uint32; timestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_current_desktop".}
proc setDesktopNames*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_names".}
proc setDesktopNamesChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_names_checked".}
proc getDesktopNamesUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_names_unchecked".}
proc getDesktopNames*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_names".}
proc setActiveWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newActiveWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_active_window".}
proc setActiveWindowChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newActiveWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_active_window_checked".}
proc requestChangeActiveWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; windowToActivate: XcbWindow; sourceIndication: XcbEwmhClientSourceType; timestamp: XcbTimestamp; currentActiveWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_active_window".}
proc getActiveWindowUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_active_window_unchecked".}
proc getActiveWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_active_window".}
proc setWorkarea*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbEwmhGeometry): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_workarea".}
proc setWorkareaChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbEwmhGeometry): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_workarea_checked".}
proc getWorkareaUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_workarea_unchecked".}
proc getWorkarea*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_workarea".}
proc getWorkarea*(wa: ptr XcbEwmhGetWorkareaReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_workarea_from_reply".}
proc getWorkareaReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; wa: ptr XcbEwmhGetWorkareaReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_workarea_reply".}
proc wipe*(r: ptr XcbEwmhGetWorkareaReply) {.importc: "xcb_ewmh_get_workarea_reply_wipe".}
proc setSupportingWmCheck*(ewmh: ptr XcbEwmhConnection; parentWindow: XcbWindow; childWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_supporting_wm_check".}
proc setSupportingWmCheckChecked*(ewmh: ptr XcbEwmhConnection; parentWindow: XcbWindow; childWindow: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_supporting_wm_check_checked".}
proc getSupportingWmCheckUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_supporting_wm_check_unchecked".}
proc getSupportingWmCheck*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_supporting_wm_check".}
proc setVirtualRoots*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_virtual_roots".}
proc setVirtualRootsChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; listLen: uint32; list: ptr XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_virtual_roots_checked".}
proc getVirtualRootsUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_virtual_roots_unchecked".}
proc getVirtualRoots*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_virtual_roots".}
proc setDesktopLayout*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; orientation: XcbEwmhDesktopLayoutOrientation; columns: uint32; rows: uint32; startingCorner: XcbEwmhDesktopLayoutStartingCorner): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_layout".}
proc setDesktopLayoutChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; orientation: XcbEwmhDesktopLayoutOrientation; columns: uint32; rows: uint32; startingCorner: XcbEwmhDesktopLayoutStartingCorner): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_desktop_layout_checked".}
proc getDesktopLayoutUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_layout_unchecked".}
proc getDesktopLayout*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_desktop_layout".}
proc getDesktopLayout*(desktopLayouts: ptr XcbEwmhGetDesktopLayoutReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_desktop_layout_from_reply".}
proc getDesktopLayoutReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; desktopLayouts: ptr XcbEwmhGetDesktopLayoutReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_desktop_layout_reply".}
proc setShowingDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; desktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_showing_desktop".}
proc setShowingDesktopChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; desktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_showing_desktop_checked".}
proc getShowingDesktopUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_showing_desktop_unchecked".}
proc getShowingDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_showing_desktop".}
proc requestCloseWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; windowToClose: XcbWindow; timestamp: XcbTimestamp; sourceIndication: XcbEwmhClientSourceType): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_close_window".}
proc requestMoveresizeWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; moveresizeWindow: XcbWindow; gravity: XcbGravity; sourceIndication: XcbEwmhClientSourceType; flags: XcbEwmhMoveresizeWindowOptFlags; x: uint32; y: uint32; width: uint32; height: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_moveresize_window".}
proc requestWmMoveresize*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; moveresizeWindow: XcbWindow; xRoot: uint32; yRoot: uint32; direction: XcbEwmhMoveresizeDirection; button: XcbButtonIndex; sourceIndication: XcbEwmhClientSourceType): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_wm_moveresize".}
proc requestRestackWindow*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; windowToRestack: XcbWindow; siblingWindow: XcbWindow; detail: XcbStackMode): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_restack_window".}
proc setWmName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_name".}
proc setWmNameChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_name_checked".}
proc getWmNameUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_name_unchecked".}
proc getWmName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_name".}
proc setWmVisibleName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_visible_name".}
proc setWmVisibleNameChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_visible_name_checked".}
proc getWmVisibleNameUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_visible_name_unchecked".}
proc getWmVisibleName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_visible_name".}
proc setWmIconName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_icon_name".}
proc setWmIconNameChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_icon_name_checked".}
proc getWmIconNameUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon_name_unchecked".}
proc getWmIconName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon_name".}
proc setWmVisibleIconName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_visible_icon_name".}
proc setWmVisibleIconNameChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; stringsLen: uint32; strings: cstring): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_visible_icon_name_checked".}
proc getWmVisibleIconNameUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_visible_icon_name_unchecked".}
proc getWmVisibleIconName*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_visible_icon_name".}
proc setWmDesktop*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; desktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_desktop".}
proc setWmDesktopChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; desktop: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_desktop_checked".}
proc getWmDesktopUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_desktop_unchecked".}
proc getWmDesktop*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_desktop".}
proc requestChangeWmDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; clientWindow: XcbWindow; newDesktop: uint32; sourceIndication: XcbEwmhClientSourceType): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_wm_desktop".}
proc setWmWindowType*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_window_type".}
proc setWmWindowTypeChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_window_type_checked".}
proc getWmWindowTypeUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_window_type_unchecked".}
proc getWmWindowType*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_window_type".}
proc getWmWindowType*(wtypes: ptr XcbEwmhGetAtomsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_window_type_from_reply".}
proc getWmWindowTypeReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; name: ptr XcbEwmhGetAtomsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_window_type_reply".}
proc setWmState*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_state".}
proc setWmStateChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_state_checked".}
proc getWmStateUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_state_unchecked".}
proc getWmState*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_state".}
proc getWmState*(wtypes: ptr XcbEwmhGetAtomsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_state_from_reply".}
proc getWmStateReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; name: ptr XcbEwmhGetAtomsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_state_reply".}
proc requestChangeWmState*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; clientWindow: XcbWindow; action: XcbEwmhWmStateAction; firstProperty: XcbAtom; secondProperty: XcbAtom; sourceIndication: XcbEwmhClientSourceType): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_wm_state".}
proc setWmAllowedActions*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_allowed_actions".}
proc setWmAllowedActionsChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; listLen: uint32; list: ptr XcbAtom): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_allowed_actions_checked".}
proc getWmAllowedActionsUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_allowed_actions_unchecked".}
proc getWmAllowedActions*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_allowed_actions".}
proc getWmAllowedActions*(wtypes: ptr XcbEwmhGetAtomsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_allowed_actions_from_reply".}
proc getWmAllowedActionsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; name: ptr XcbEwmhGetAtomsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_allowed_actions_reply".}
proc setWmStrut*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_strut".}
proc setWmStrutChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_strut_checked".}
proc getWmStrutUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_strut_unchecked".}
proc getWmStrut*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_strut".}
proc getWmStrut*(struts: ptr XcbEwmhGetExtentsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_strut_from_reply".}
proc getWmStrutReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; struts: ptr XcbEwmhGetExtentsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_strut_reply".}
proc setWmStrutPartial*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; wmStrut: XcbEwmhWmStrutPartial): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_strut_partial".}
proc setWmStrutPartialChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; wmStrut: XcbEwmhWmStrutPartial): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_strut_partial_checked".}
proc getWmStrutPartialUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_strut_partial_unchecked".}
proc getWmStrutPartial*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_strut_partial".}
proc getWmStrutPartial*(struts: ptr XcbEwmhWmStrutPartial; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_strut_partial_from_reply".}
proc getWmStrutPartialReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; struts: ptr XcbEwmhWmStrutPartial; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_strut_partial_reply".}
proc setWmIconGeometry*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_icon_geometry".}
proc setWmIconGeometryChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_icon_geometry_checked".}
proc getWmIconGeometryUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon_geometry_unchecked".}
proc getWmIconGeometry*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon_geometry".}
proc getWmIconGeometry*(icons: ptr XcbEwmhGeometry; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_icon_geometry_from_reply".}
proc getWmIconGeometryReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; icons: ptr XcbEwmhGeometry; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_icon_geometry_reply".}
proc appendWmIconChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; width: uint32; height: uint32; imgLen: uint32; img: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_append_wm_icon_checked".}
proc appendWmIcon*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; width: uint32; height: uint32; imgLen: uint32; img: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_append_wm_icon".}
proc getWmIconUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon_unchecked".}
proc getWmIcon*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_icon".}
proc getWmIcon*(wmIcon: ptr XcbEwmhGetWmIconReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_icon_from_reply".}
proc getWmIconReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; wmIcon: ptr XcbEwmhGetWmIconReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_icon_reply".}
proc getWmIconIterator*(wmIcon: ptr XcbEwmhGetWmIconReply): XcbEwmhWmIconIterator {.importc: "xcb_ewmh_get_wm_icon_iterator".}
proc getWmIconLength*(wmIcon: ptr XcbEwmhGetWmIconReply): cuint {.importc: "xcb_ewmh_get_wm_icon_length".}
proc next*(`iterator`: ptr XcbEwmhWmIconIterator) {.importc: "xcb_ewmh_get_wm_icon_next".}
proc wipe*(wmIcon: ptr XcbEwmhGetWmIconReply) {.importc: "xcb_ewmh_get_wm_icon_reply_wipe".}
proc setWmPid*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; pid: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_pid".}
proc setWmPidChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; pid: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_pid_checked".}
proc getWmPidUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_pid_unchecked".}
proc getWmPid*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_pid".}
proc setWmHandledIcons*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; handledIcons: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_handled_icons".}
proc setWmHandledIconsChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; handledIcons: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_handled_icons_checked".}
proc getWmHandledIconsUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_handled_icons_unchecked".}
proc getWmHandledIcons*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_handled_icons".}
proc setWmUserTime*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; xtime: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_user_time".}
proc setWmUserTimeChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; pid: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_user_time_checked".}
proc getWmUserTimeUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_user_time_unchecked".}
proc getWmUserTime*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_user_time".}
proc setWmUserTimeWindow*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; xtime: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_user_time_window".}
proc setWmUserTimeWindowChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; pid: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_user_time_window_checked".}
proc getWmUserTimeWindowUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_user_time_window_unchecked".}
proc getWmUserTimeWindow*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_user_time_window".}
proc setFrameExtents*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_frame_extents".}
proc setFrameExtentsChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; left: uint32; right: uint32; top: uint32; bottom: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_frame_extents_checked".}
proc getFrameExtentsUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_frame_extents_unchecked".}
proc getFrameExtents*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_frame_extents".}
proc getFrameExtents*(frameExtents: ptr XcbEwmhGetExtentsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_frame_extents_from_reply".}
proc getFrameExtentsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; frameExtents: ptr XcbEwmhGetExtentsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_frame_extents_reply".}
proc sendWmPing*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; timestamp: XcbTimestamp): XcbVoidCookie {.discardable, importc: "xcb_ewmh_send_wm_ping".}
proc setWmSyncRequestCounter*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; wmSyncRequestCounterAtom: XcbAtom; low: uint32; high: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_sync_request_counter".}
proc setWmSyncRequestCounterChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; wmSyncRequestCounterAtom: XcbAtom; low: uint32; high: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_sync_request_counter_checked".}
proc getWmSyncRequestCounterUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_sync_request_counter_unchecked".}
proc getWmSyncRequestCounter*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_sync_request_counter".}
proc getWmSyncRequestCounter*(counter: ptr uint64; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_sync_request_counter_from_reply".}
proc getWmSyncRequestCounterReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; counter: ptr uint64; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_sync_request_counter_reply".}
proc sendWmSyncRequest*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; wmProtocolsAtom: XcbAtom; wmSyncRequestAtom: XcbAtom; timestamp: XcbTimestamp; counter: uint64): XcbVoidCookie {.discardable, importc: "xcb_ewmh_send_wm_sync_request".}
proc setWmFullscreenMonitors*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; top: uint32; bottom: uint32; left: uint32; right: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_fullscreen_monitors".}
proc setWmFullscreenMonitorsChecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow; top: uint32; bottom: uint32; left: uint32; right: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_fullscreen_monitors_checked".}
proc getWmFullscreenMonitorsUnchecked*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_fullscreen_monitors_unchecked".}
proc getWmFullscreenMonitors*(ewmh: ptr XcbEwmhConnection; window: XcbWindow): XcbGetPropertyCookie {.importc: "xcb_ewmh_get_wm_fullscreen_monitors".}
proc getWmFullscreenMonitors*(monitors: ptr XcbEwmhGetWmFullscreenMonitorsReply; r: ptr XcbGetPropertyReply): uint8 {.importc: "xcb_ewmh_get_wm_fullscreen_monitors_from_reply".}
proc getWmFullscreenMonitorsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; monitors: ptr XcbEwmhGetWmFullscreenMonitorsReply; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_fullscreen_monitors_reply".}
proc requestChangeWmFullscreenMonitors*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; window: XcbWindow; top: uint32; bottom: uint32; left: uint32; right: uint32; sourceIndication: XcbEwmhClientSourceType): XcbVoidCookie {.discardable, importc: "xcb_ewmh_request_change_wm_fullscreen_monitors".}
proc setWmCmOwner*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; owner: XcbWindow; timestamp: XcbTimestamp; selectionData1: uint32; selectionData2: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_cm_owner".}
proc setWmCmOwnerChecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; owner: XcbWindow; timestamp: XcbTimestamp; selectionData1: uint32; selectionData2: uint32): XcbVoidCookie {.discardable, importc: "xcb_ewmh_set_wm_cm_owner_checked".}
proc getWmCmOwnerUnchecked*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetSelectionOwnerCookie {.importc: "xcb_ewmh_get_wm_cm_owner_unchecked".}
proc getWmCmOwner*(ewmh: ptr XcbEwmhConnection; screenNbr: cint): XcbGetSelectionOwnerCookie {.importc: "xcb_ewmh_get_wm_cm_owner".}
proc getWmCmOwner*(owner: ptr XcbWindow; r: ptr XcbGetSelectionOwnerReply): uint8 {.importc: "xcb_ewmh_get_wm_cm_owner_from_reply".}
proc getWmCmOwnerReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetSelectionOwnerCookie; owner: ptr XcbWindow; e: ptr ptr XcbGenericError): uint8 {.importc: "xcb_ewmh_get_wm_cm_owner_reply".}

{.pop.}
{.pop.}

proc wipe*(ewmh: ptr XcbEwmhConnection) {.inline.} =
  # free ewmh.screens
  # free ewmh.NETWMCMSn
  discard

proc getWmHandledIcons*(handledIcons: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(handledIcons, r)

proc getWmHandledIconsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; handledIcons: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, handledIcons, e)

proc getSupported*(supported: ptr XcbEwmhGetAtomsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getAtoms(supported, r)

proc getSupportedReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; supported: ptr XcbEwmhGetAtomsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getAtomsReply(ewmh, cookie, supported, e)

proc getClientList*(clients: ptr XcbEwmhGetWindowsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getWindows(clients, r)

proc getClientListReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; clients: ptr XcbEwmhGetWindowsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getWindowsReply(ewmh, cookie, clients, e)

proc getClientListStacking*(clients: ptr XcbEwmhGetWindowsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getWindows(clients, r)

proc getClientListStackingReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; clients: ptr XcbEwmhGetWindowsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getWindowsReply(ewmh, cookie, clients, e)

proc getNumberOfDesktops*(numberOfDesktops: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(numberOfDesktops, r)

proc getNumberOfDesktopsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; numberOfDesktops: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, numberOfDesktops, e)

proc requestChangeNumberOfDesktops*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; newNumberOfDesktops: uint32): XcbVoidCookie {.discardable, inline.} =
  sendClientMessage(ewmh.connection, xcbNone.XcbWindow, ewmh.screens[screenNbr].root, ewmh.netNumberOfDesktops, sizeof(newNumberOfDesktops).uint32, unsafeAddr(newNumberOfDesktops))

proc getCurrentDesktop*(currentDesktop: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(currentDesktop, r)

proc getCurrentDesktopReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; currentDesktop: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, currentDesktop, e)

proc getDesktopNames*(ewmh: ptr XcbEwmhConnection; names: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getUtf8Strings(ewmh, names, r)

proc getDesktopNamesReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; names: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getUtf8StringsReply(ewmh, cookie, names, e)

proc getActiveWindow*(activeWindow: ptr XcbWindow; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getWindow(activeWindow, r)

proc getActiveWindowReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; activeWindow: ptr XcbWindow; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getWindowReply(ewmh, cookie, activeWindow, e)

proc getSupportingWmCheck*(window: ptr XcbWindow; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getWindow(window, r)

proc getSupportingWmCheckReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; window: ptr XcbWindow; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getWindowReply(ewmh, cookie, window, e)

proc getVirtualRoots*(virtualRoots: ptr XcbEwmhGetWindowsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getWindows(virtualRoots, r)

proc getVirtualRootsReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; virtualRoots: ptr XcbEwmhGetWindowsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getWindowsReply(ewmh, cookie, virtualRoots, e)

proc getShowingDesktop*(desktop: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(desktop, r)

proc getShowingDesktopReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; desktop: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, desktop, e)

proc requestChangeShowingDesktop*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; enter: uint32): XcbVoidCookie {.discardable, inline.} =
  sendClientMessage(ewmh.connection, xcbNone.XcbWindow, ewmh.screens[screenNbr].root, ewmh.netShowingDesktop, enter.sizeof.uint32, unsafeAddr enter)

proc requestFrameExtents*(ewmh: ptr XcbEwmhConnection; screenNbr: cint; clientWindow: XcbWindow): XcbVoidCookie {.discardable, inline.} =
  sendClientMessage(ewmh.connection, clientWindow, ewmh.screens[screenNbr].root, ewmh.netRequestFrameExtents, 0, nil)

proc getWmName*(ewmh: ptr XcbEwmhConnection; data: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getUtf8Strings(ewmh, data, r)

proc getWmNameReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; data: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getUtf8StringsReply(ewmh, cookie, data, e)

proc getWmVisibleName*(ewmh: ptr XcbEwmhConnection; data: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getUtf8Strings(ewmh, data, r)

proc getWmVisibleNameReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; data: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getUtf8StringsReply(ewmh, cookie, data, e)

proc getWmIconName*(ewmh: ptr XcbEwmhConnection; data: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getUtf8Strings(ewmh, data, r)

proc getWmIconNameReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; data: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getUtf8StringsReply(ewmh, cookie, data, e)

proc getWmVisibleIconName*(ewmh: ptr XcbEwmhConnection; data: ptr XcbEwmhGetUtf8StringsReply; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getUtf8Strings(ewmh, data, r)

proc getWmVisibleIconNameReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; data: ptr XcbEwmhGetUtf8StringsReply; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getUtf8StringsReply(ewmh, cookie, data, e)

proc getWmDesktop*(desktop: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(desktop, r)

proc getWmDesktopReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; desktop: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, desktop, e)

proc setWmIconChecked*(ewmh: ptr XcbEwmhConnection; mode: uint8; window: XcbWindow; dataLen: uint32; data: ptr uint32): XcbVoidCookie {.discardable, inline.} =
  changePropertyChecked(ewmh.connection, mode, window, ewmh.netWmIcon, xcb_atom_cardinal.XcbAtom, 32, dataLen, data)

proc setWmIcon*(ewmh: ptr XcbEwmhConnection; mode: uint8; window: XcbWindow; dataLen: uint32; data: ptr uint32): XcbVoidCookie {.discardable, inline.} =
  changeProperty(ewmh.connection, mode, window, ewmh.netWmIcon, xcb_atom_cardinal.XcbAtom, 32, dataLen, data)

proc getWmPid*(pid: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(pid, r)

proc getWmPidReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; pid: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, pid, e)

proc getWmUserTime*(xtime: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(xtime, r)

proc getWmUserTimeReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; xtime: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, xtime, e)

proc getWmUserTimeWindow*(xtime: ptr uint32; r: ptr XcbGetPropertyReply): uint8 {.inline.} =
  getCardinal(xtime, r)

proc getWmUserTimeWindowReply*(ewmh: ptr XcbEwmhConnection; cookie: XcbGetPropertyCookie; xtime: ptr uint32; e: ptr ptr XcbGenericError): uint8 {.inline.} =
  getCardinalReply(ewmh, cookie, xtime, e)
