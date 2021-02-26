import ./xcb, ./render

{.passl: "-lxcb-render-util".}
{.push header: "xcb/xcb_renderutil.h".}

type
  XcbRenderUtilCompositeTextStream* {.importc: "xcb_shm_segment_info_t", incompleteStruct.} = object

  XcbPictFormat* {.importc: "xcb_pict_format_t".} = enum
    xcbPictFormatId = 1 shl 0, xcbPictFormatType = 1 shl 1,
    xcbPictFormatDepth = 1 shl 2, xcbPictFormatRed = 1 shl 3,
    xcbPictFormatRedMask = 1 shl 4, xcbPictFormatGreen = 1 shl 5,
    xcbPictFormatGreenMask = 1 shl 6, xcbPictFormatBlue = 1 shl 7,
    xcbPictFormatBlueMask = 1 shl 8, xcbPictFormatAlpha = 1 shl 9,
    xcbPictFormatAlphaMask = 1 shl 10, xcbPictFormatColormap = 1 shl 11

  XcbPictStandard* {.importc: "xcb_pict_standard_t".} = enum
    xcbPictStandardArgb32, xcbPictStandardRgb24, xcbPictStandardA8,
    xcbPictStandardA4, xcbPictStandardA1

{.push cdecl.}

proc findVisualFormat*(formats: ptr XcbRenderQueryPictFormatsReply; visual: XcbVisualid): ptr XcbRenderPictvisual {.importc: "xcb_render_util_find_visual_format".}
proc findFormat*(formats: ptr XcbRenderQueryPictFormatsReply; mask: culong; ptemplate: ptr XcbRenderPictforminfo; count: cint): ptr XcbRenderPictforminfo {.importc: "xcb_render_util_find_format".}
proc findStandardFormat*(formats: ptr XcbRenderQueryPictFormatsReply; format: XcbPictStandard): ptr XcbRenderPictforminfo {.importc: "xcb_render_util_find_standard_format".}
proc renderUtilQueryVersion*(c: ptr XcbConnection): ptr XcbRenderQueryVersionReply {.importc: "xcb_render_util_query_version".}
proc queryFormats*(c: ptr XcbConnection): ptr XcbRenderQueryPictFormatsReply {.importc: "xcb_render_util_query_formats".}
proc renderUtilDisconnect*(c: ptr XcbConnection): cint {.importc: "xcb_render_util_disconnect".}
proc compositeTextStream*(initialGlyphset: XcbRenderGlyphset; totalGlyphs: uint32; totalGlyphsetChanges: uint32): ptr XcbRenderUtilCompositeTextStream {.importc: "xcb_render_util_composite_text_stream".}
proc glyphs8*(stream: ptr XcbRenderUtilCompositeTextStream; dx: int16; dy: int16; count: uint32; glyphs: ptr uint8) {.importc: "xcb_render_util_glyphs_8".}
proc glyphs16*(stream: ptr XcbRenderUtilCompositeTextStream; dx: int16; dy: int16; count: uint32; glyphs: ptr uint16) {.importc: "xcb_render_util_glyphs_16".}
proc glyphs32*(stream: ptr XcbRenderUtilCompositeTextStream; dx: int16; dy: int16; count: uint32; glyphs: ptr uint32) {.importc: "xcb_render_util_glyphs_32".}
proc changeGlyphset*(stream: ptr XcbRenderUtilCompositeTextStream; glyphset: XcbRenderGlyphset) {.importc: "xcb_render_util_change_glyphset".}
proc compositeText*(xc: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; maskFormat: XcbRenderPictformat; srcX: int16; srcY: int16; stream: ptr XcbRenderUtilCompositeTextStream): XcbVoidCookie {.discardable, importc: "xcb_render_util_composite_text".}
proc compositeTextChecked*(xc: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; maskFormat: XcbRenderPictformat; srcX: int16; srcY: int16; stream: ptr XcbRenderUtilCompositeTextStream): XcbVoidCookie {.discardable, importc: "xcb_render_util_composite_text_checked".}
proc free*(stream: ptr XcbRenderUtilCompositeTextStream) {.importc: "xcb_render_util_composite_text_free".}

{.pop.}
{.pop.}
