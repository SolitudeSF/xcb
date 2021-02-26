import ./xcb

{.passl: "-lxcb-util".}
{.push header: "xcb/xcb_aux.h".}

type
  XcbParamsCw* {.importc: "xcb_params_cw_t", bycopy.} = object
    backPixmap* {.importc: "back_pixmap".}: uint32
    backPixel* {.importc: "back_pixel".}: uint32
    borderPixmap* {.importc: "border_pixmap".}: uint32
    borderPixel* {.importc: "border_pixel".}: uint32
    bitGravity* {.importc: "bit_gravity".}: uint32
    winGravity* {.importc: "win_gravity".}: uint32
    backingStore* {.importc: "backing_store".}: uint32
    backingPlanes* {.importc: "backing_planes".}: uint32
    backingPixel* {.importc: "backing_pixel".}: uint32
    overrideRedirect* {.importc: "override_redirect".}: uint32
    saveUnder* {.importc: "save_under".}: uint32
    eventMask* {.importc: "event_mask".}: uint32
    dontPropagate* {.importc: "dont_propagate".}: uint32
    colormap*: uint32
    cursor*: uint32

  XcbParamsConfigureWindow* {.importc: "xcb_params_configure_window_t", bycopy.} = object
    x*: int32
    y*: int32
    width*: uint32
    height*: uint32
    borderWidth* {.importc: "border_width".}: uint32
    sibling*: uint32
    stackMode* {.importc: "stack_mode".}: uint32

  XcbParamsGc* {.importc: "xcb_params_gc_t", bycopy.} = object
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
    tile*: uint32
    stipple*: uint32
    tileStippleOriginX* {.importc: "tile_stipple_origin_x".}: uint32
    tileStippleOriginY* {.importc: "tile_stipple_origin_y".}: uint32
    font*: uint32
    subwindowMode* {.importc: "subwindow_mode".}: uint32
    graphicsExposures* {.importc: "graphics_exposures".}: uint32
    clipOriginX* {.importc: "clip_originX".}: uint32
    clipOriginY* {.importc: "clip_originY".}: uint32
    mask*: uint32
    dashOffset* {.importc: "dash_offset".}: uint32
    dashList* {.importc: "dash_list".}: uint32
    arcMode* {.importc: "arc_mode".}: uint32

  XcbParamsKeyboard* {.importc: "xcb_params_keyboard_t", bycopy.} = object
    keyClickPercent* {.importc: "key_click_percent".}: uint32
    bellPercent* {.importc: "bell_percent".}: uint32
    bellPitch* {.importc: "bell_pitch".}: uint32
    bellDuration* {.importc: "bell_duration".}: uint32
    led*: uint32
    ledMode* {.importc: "led_mode".}: uint32
    key*: uint32
    autoRepeatMode* {.importc: "auto_repeat_mode".}: uint32

{.push cdecl.}

proc auxCreateWindow*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x, y: int16; width, height, borderWidth, class: uint16; visual: XcbVisualid; mask: uint32; params: ptr XcbParamsCw): XcbVoidCookie {.discardable, importc: "xcb_aux_create_window".}
proc auxCreateWindowChecked*(c: ptr XcbConnection; depth: uint8; wid: XcbWindow; parent: XcbWindow; x, y: int16; width, height, borderWidth, class: uint16; visual: XcbVisualid; mask: uint32; params: ptr XcbParamsCw): XcbVoidCookie {.discardable, importc: "xcb_aux_create_window_checked".}
proc auxChangeWindowAttributes*(c: ptr XcbConnection; window: XcbWindow; mask: uint32; params: ptr XcbParamsCw): XcbVoidCookie {.discardable, importc: "xcb_aux_change_window_attributes".}
proc auxChangeWindowAttributesChecked*(c: ptr XcbConnection; window: XcbWindow; mask: uint32; params: ptr XcbParamsCw): XcbVoidCookie {.discardable, importc: "xcb_aux_change_window_attributes_checked".}
proc auxConfigureWindow*(c: ptr XcbConnection; window: XcbWindow; mask: uint16; params: ptr XcbParamsConfigureWindow): XcbVoidCookie {.discardable, importc: "xcb_aux_configure_window".}
proc auxCreateGc*(c: ptr XcbConnection; cid: XcbGcontext; drawable: XcbDrawable; mask: uint32; params: ptr XcbParamsGc): XcbVoidCookie {.discardable, importc: "xcb_aux_create_gc".}
proc auxCreateGcChecked*(c: ptr XcbConnection; gid: XcbGcontext; drawable: XcbDrawable; mask: uint32; params: ptr XcbParamsGc): XcbVoidCookie {.discardable, importc: "xcb_aux_create_gc_checked".}
proc auxChangeGc*(c: ptr XcbConnection; gc: XcbGcontext; mask: uint32; params: ptr XcbParamsGc): XcbVoidCookie {.discardable, importc: "xcb_aux_change_gc".}
proc auxChangeGcChecked*(c: ptr XcbConnection; gc: XcbGcontext; mask: uint32; params: ptr XcbParamsGc): XcbVoidCookie {.discardable, importc: "xcb_aux_change_gc_checked".}
proc auxGetDepth*(c: ptr XcbConnection; screen: ptr XcbScreen): uint8 {.importc: "xcb_aux_get_depth".}
proc auxGetDepthOfVisual*(screen: ptr XcbScreen; id: XcbVisualid): uint8 {.importc: "xcb_aux_get_depth_of_visual".}
proc auxGetScreen*(c: ptr XcbConnection; screen: cint): ptr XcbScreen {.importc: "xcb_aux_get_screen".}
proc auxGetVisualtype*(c: ptr XcbConnection; screen: cint; vid: XcbVisualid): ptr XcbVisualtype {.importc: "xcb_aux_get_visualtype".}
proc auxFindVisualById*(screen: ptr XcbScreen; id: XcbVisualid): ptr XcbVisualtype {.importc: "xcb_aux_find_visual_by_id".}
proc auxFindVisualByAttrs*(screen: ptr XcbScreen; class: int8; depth: int8): ptr XcbVisualtype {.importc: "xcb_aux_find_visual_by_attrs".}
proc auxSync*(c: ptr XcbConnection) {.importc: "xcb_aux_sync".}
proc auxChangeKeyboardControl*(c: ptr XcbConnection; mask: uint32; params: ptr XcbParamsKeyboard): XcbVoidCookie {.discardable, importc: "xcb_aux_change_keyboard_control".}
proc xcbAuxParseColor*(colorName: cstring; red, green, blue: ptr uint16): cint {.importc: "xcb_aux_parse_color".}
proc auxSetLineAttributesChecked*(dpy: ptr XcbConnection; gc: XcbGcontext; linewidth: uint16; linestyle, capstyle, joinstyle: int32): XcbVoidCookie {.discardable, importc: "xcb_aux_set_line_attributes_checked".}
proc auxClearWindow*(dpy: ptr XcbConnection; w: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_aux_clear_window".}

{.pop.}
{.pop.}
