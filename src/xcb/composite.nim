import ./xcb, ./xfixes

const
  xcbCompositeMajorVersion* = 0
  xcbCompositeMinorVersion* = 4
  xcbCompositeQueryVersion* = 0
  xcbCompositeRedirectWindow* = 1
  xcbCompositeRedirectSubwindows* = 2
  xcbCompositeUnredirectWindow* = 3
  xcbCompositeUnredirectSubwindows* = 4
  xcbCompositeCreateRegionFromBorderClip* = 5
  xcbCompositeNameWindowPixmap* = 6
  xcbCompositeGetOverlayWindow* = 7
  xcbCompositeReleaseOverlayWindow* = 8

{.passl: "-lxcb-composite".}
{.push header: "xcb/composite.h".}

var xcbCompositeId* {.extern: "xcb_composite_id".}: XcbExtension

type
  XcbCompositeRedirect* {.importc: "xcb_composite_redirect_t".} = enum
    xcbCompositeRedirectAutomatic = 0, xcbCompositeRedirectManual = 1

  XcbCompositeQueryVersionCookie* {.importc: "xcb_composite_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbCompositeQueryVersionRequest* {.importc: "xcb_composite_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint32
    clientMinorVersion* {.importc: "client_minor_version".}: uint32

  XcbCompositeQueryVersionReply* {.importc: "xcb_composite_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbCompositeRedirectWindowRequest* {.importc: "xcb_composite_redirect_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    update*: uint8
    pad0: array[3, uint8]

  XcbCompositeRedirectSubwindowsRequest* {.importc: "xcb_composite_redirect_subwindows_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    update*: uint8
    pad0: array[3, uint8]

  XcbCompositeUnredirectWindowRequest* {.importc: "xcb_composite_unredirect_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    update*: uint8
    pad0: array[3, uint8]

  XcbCompositeUnredirectSubwindowsRequest* {.importc: "xcb_composite_unredirect_subwindows_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    update*: uint8
    pad0: array[3, uint8]

  XcbCompositeCreateRegionFromBorderClipRequest* {.importc: "xcb_composite_create_region_from_border_clip_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    region*: XcbXfixesRegion
    window*: XcbWindow

  XcbCompositeNameWindowPixmapRequest* {.importc: "xcb_composite_name_window_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    pixmap*: XcbPixmap

  XcbCompositeGetOverlayWindowCookie* {.importc: "xcb_composite_get_overlay_window_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbCompositeGetOverlayWindowRequest* {.importc: "xcb_composite_get_overlay_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbCompositeGetOverlayWindowReply* {.importc: "xcb_composite_get_overlay_window_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    overlayWin* {.importc: "overlay_win".}: XcbWindow
    pad1: array[20, uint8]

  XcbCompositeReleaseOverlayWindowRequest* {.importc: "xcb_composite_release_overlay_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

{.push cdecl.}

proc compositeQueryVersion*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbCompositeQueryVersionCookie {.importc: "xcb_composite_query_version".}
proc compositeQueryVersionUnchecked*(c: ptr XcbConnection; clientMajorVersion: uint32; clientMinorVersion: uint32): XcbCompositeQueryVersionCookie {.importc: "xcb_composite_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbCompositeQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbCompositeQueryVersionReply {.importc: "xcb_composite_query_version_reply".}
proc redirectWindowChecked*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_redirect_window_checked".}
proc redirectWindow*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_redirect_window".}
proc redirectSubwindowsChecked*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_redirect_subwindows_checked".}
proc redirectSubwindows*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_redirect_subwindows".}
proc unredirectWindowChecked*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_unredirect_window_checked".}
proc unredirectWindow*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_unredirect_window".}
proc unredirectSubwindowsChecked*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_unredirect_subwindows_checked".}
proc unredirectSubwindows*(c: ptr XcbConnection; window: XcbWindow; update: uint8): XcbVoidCookie {.discardable, importc: "xcb_composite_unredirect_subwindows".}
proc createRegionFromBorderClipChecked*(c: ptr XcbConnection; region: XcbXfixesRegion; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_composite_create_region_from_border_clip_checked".}
proc createRegionFromBorderClip*(c: ptr XcbConnection; region: XcbXfixesRegion; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_composite_create_region_from_border_clip".}
proc nameWindowPixmapChecked*(c: ptr XcbConnection; window: XcbWindow; pixmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_composite_name_window_pixmap_checked".}
proc nameWindowPixmap*(c: ptr XcbConnection; window: XcbWindow; pixmap: XcbPixmap): XcbVoidCookie {.discardable, importc: "xcb_composite_name_window_pixmap".}
proc getOverlayWindow*(c: ptr XcbConnection; window: XcbWindow): XcbCompositeGetOverlayWindowCookie {.importc: "xcb_composite_get_overlay_window".}
proc getOverlayWindowUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbCompositeGetOverlayWindowCookie {.importc: "xcb_composite_get_overlay_window_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbCompositeGetOverlayWindowCookie; e: ptr ptr XcbGenericError): ptr XcbCompositeGetOverlayWindowReply {.importc: "xcb_composite_get_overlay_window_reply".}
proc releaseOverlayWindowChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_composite_release_overlay_window_checked".}
proc releaseOverlayWindow*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_composite_release_overlay_window".}

{.pop.}
{.pop.}
