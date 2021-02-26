import ./xcb

const
  xcbRenderMajorVersion* = 0
  xcbRenderMinorVersion* = 11
  xcbRenderPictFormat* = 0
  xcbRenderPicture* = 1
  xcbRenderPictOp* = 2
  xcbRenderGlyphSet* = 3
  xcbRenderGlyph* = 4
  xcbRenderQueryVersion* = 0
  xcbRenderQueryPictFormats* = 1
  xcbRenderQueryPictIndexValues* = 2
  xcbRenderCreatePicture* = 4
  xcbRenderChangePicture* = 5
  xcbRenderSetPictureClipRectangles* = 6
  xcbRenderFreePicture* = 7
  xcbRenderComposite* = 8
  xcbRenderTrapezoids* = 10
  xcbRenderTriangles* = 11
  xcbRenderTriStrip* = 12
  xcbRenderTriFan* = 13
  xcbRenderCreateGlyphSet* = 17
  xcbRenderReferenceGlyphSet* = 18
  xcbRenderFreeGlyphSet* = 19
  xcbRenderAddGlyphs* = 20
  xcbRenderFreeGlyphs* = 22
  xcbRenderCompositeGlyphs8* = 23
  xcbRenderCompositeGlyphs16* = 24
  xcbRenderCompositeGlyphs32* = 25
  xcbRenderFillRectangles* = 26
  xcbRenderCreateCursor* = 27
  xcbRenderSetPictureTransform* = 28
  xcbRenderQueryFilters* = 29
  xcbRenderSetPictureFilter* = 30
  xcbRenderCreateAnimCursor* = 31
  xcbRenderAddTraps* = 32
  xcbRenderCreateSolidFill* = 33
  xcbRenderCreateLinearGradient* = 34
  xcbRenderCreateRadialGradient* = 35
  xcbRenderCreateConicalGradient* = 36

{.passl: "-lxcb-render".}
{.push header: "xcb/render.h".}

var xcbRenderId* {.extern: "xcb_render_id".}: XcbExtension

type
  XcbRenderGlyph* {.importc: "xcb_render_glyph_t".} = distinct uint32
  XcbRenderGlyphset* {.importc: "xcb_render_glyphset_t".} = distinct uint32
  XcbRenderPicture* {.importc: "xcb_render_picture_t".} = distinct uint32
  XcbRenderPictformat* {.importc: "xcb_render_pictformat_t".} = distinct uint32
  XcbRenderFixed* {.importc: "xcb_render_fixed_t".} = distinct int32

  XcbRenderPictType* {.importc: "xcb_render_pict_type_t".} = enum
    xcbRenderPictTypeIndexed = 0, xcbRenderPictTypeDirect = 1

  XcbRenderPictureEnum* {.importc: "xcb_render_picture_enum_t".} = enum
    xcbRenderPictureNone = 0

  XcbRenderPictOp* {.importc: "xcb_render_pict_op_t".} = enum
    xcbRenderPictOpClear = 0, xcbRenderPictOpSrc = 1,
    xcbRenderPictOpDst = 2, xcbRenderPictOpOver = 3,
    xcbRenderPictOpOverReverse = 4, xcbRenderPictOpIn = 5,
    xcbRenderPictOpInReverse = 6, xcbRenderPictOpOut = 7,
    xcbRenderPictOpOutReverse = 8, xcbRenderPictOpAtop = 9,
    xcbRenderPictOpAtopReverse = 10, xcbRenderPictOpXor = 11,
    xcbRenderPictOpAdd = 12, xcbRenderPictOpSaturate = 13,
    xcbRenderPictOpDisjointClear = 16, xcbRenderPictOpDisjointSrc = 17,
    xcbRenderPictOpDisjointDst = 18, xcbRenderPictOpDisjointOver = 19,
    xcbRenderPictOpDisjointOverReverse = 20,
    xcbRenderPictOpDisjointIn = 21,
    xcbRenderPictOpDisjointInReverse = 22,
    xcbRenderPictOpDisjointOut = 23,
    xcbRenderPictOpDisjointOutReverse = 24,
    xcbRenderPictOpDisjointAtop = 25,
    xcbRenderPictOpDisjointAtopReverse = 26,
    xcbRenderPictOpDisjointXor = 27, xcbRenderPictOpConjointClear = 32,
    xcbRenderPictOpConjointSrc = 33, xcbRenderPictOpConjointDst = 34,
    xcbRenderPictOpConjointOver = 35,
    xcbRenderPictOpConjointOverReverse = 36,
    xcbRenderPictOpConjointIn = 37,
    xcbRenderPictOpConjointInReverse = 38,
    xcbRenderPictOpConjointOut = 39,
    xcbRenderPictOpConjointOutReverse = 40,
    xcbRenderPictOpConjointAtop = 41,
    xcbRenderPictOpConjointAtopReverse = 42,
    xcbRenderPictOpConjointXor = 43, xcbRenderPictOpMultiply = 48,
    xcbRenderPictOpScreen = 49, xcbRenderPictOpOverlay = 50,
    xcbRenderPictOpDarken = 51, xcbRenderPictOpLighten = 52,
    xcbRenderPictOpColorDodge = 53, xcbRenderPictOpColorBurn = 54,
    xcbRenderPictOpHardLight = 55, xcbRenderPictOpSoftLight = 56,
    xcbRenderPictOpDifference = 57, xcbRenderPictOpExclusion = 58,
    xcbRenderPictOpHslHue = 59, xcbRenderPictOpHslSaturation = 60,
    xcbRenderPictOpHslColor = 61, xcbRenderPictOpHslLuminosity = 62

  XcbRenderPolyEdge* {.importc: "xcb_render_poly_edge_t".} = enum
    xcbRenderPolyEdgeSharp = 0, xcbRenderPolyEdgeSmooth = 1

  XcbRenderPolyMode* {.importc: "xcb_render_poly_mode_t".} = enum
    xcbRenderPolyModePrecise = 0, xcbRenderPolyModeImprecise = 1

  XcbRenderCp* {.importc: "xcb_render_cp_t".} = enum
    xcbRenderCpRepeat = 1, xcbRenderCpAlphaMap = 2,
    xcbRenderCpAlphaXOrigin = 4, xcbRenderCpAlphaYOrigin = 8,
    xcbRenderCpClipXOrigin = 16, xcbRenderCpClipYOrigin = 32,
    xcbRenderCpClipMask = 64, xcbRenderCpGraphicsExposure = 128,
    xcbRenderCpSubwindowMode = 256, xcbRenderCpPolyEdge = 512,
    xcbRenderCpPolyMode = 1024, xcbRenderCpDither = 2048,
    xcbRenderCpComponentAlpha = 4096

  XcbRenderSubPixel* {.importc: "xcb_render_sub_pixel_t".} = enum
    xcbRenderSubPixelUnknown = 0, xcbRenderSubPixelHorizontalRgb = 1,
    xcbRenderSubPixelHorizontalBgr = 2, xcbRenderSubPixelVerticalRgb = 3,
    xcbRenderSubPixelVerticalBgr = 4, xcbRenderSubPixelNone = 5

  XcbRenderRepeat* {.importc: "xcb_render_repeat_t".} = enum
    xcbRenderRepeatNone = 0, xcbRenderRepeatNormal = 1,
    xcbRenderRepeatPad = 2, xcbRenderRepeatReflect = 3

  XcbRenderGlyphIterator* {.importc: "xcb_render_glyph_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderGlyph]
    rem*: cint
    index*: cint

  XcbRenderGlyphsetIterator* {.importc: "xcb_render_glyphset_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderGlyphset]
    rem*: cint
    index*: cint

  XcbRenderPictureIterator* {.importc: "xcb_render_picture_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPicture]
    rem*: cint
    index*: cint

  XcbRenderPictformatIterator* {.importc: "xcb_render_pictformat_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPictformat]
    rem*: cint
    index*: cint

  XcbRenderFixedIterator* {.importc: "xcb_render_fixed_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderFixed]
    rem*: cint
    index*: cint

  XcbRenderPictFormatError* {.importc: "xcb_render_pict_format_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRenderPictureError* {.importc: "xcb_render_picture_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRenderPictOpError* {.importc: "xcb_render_pict_op_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRenderGlyphSetError* {.importc: "xcb_render_glyph_set_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRenderGlyphError* {.importc: "xcb_render_glyph_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbRenderDirectformat* {.importc: "xcb_render_directformat_t", bycopy.} = object
    redShift* {.importc: "red_shift".}: uint16
    redMask* {.importc: "red_mask".}: uint16
    greenShift* {.importc: "green_shift".}: uint16
    greenMask* {.importc: "green_mask".}: uint16
    blueShift* {.importc: "blue_shift".}: uint16
    blueMask* {.importc: "blue_mask".}: uint16
    alphaShift* {.importc: "alpha_shift".}: uint16
    alphaMask* {.importc: "alpha_mask".}: uint16

  XcbRenderDirectformatIterator* {.importc: "xcb_render_directformat_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderDirectformat]
    rem*: cint
    index*: cint

  XcbRenderPictforminfo* {.importc: "xcb_render_pictforminfo_t", bycopy.} = object
    id*: XcbRenderPictformat
    `type`*: uint8
    depth*: uint8
    pad0: array[2, uint8]
    direct*: XcbRenderDirectformat
    colormap*: XcbColormap

  XcbRenderPictforminfoIterator* {.importc: "xcb_render_pictforminfo_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPictforminfo]
    rem*: cint
    index*: cint

  XcbRenderPictvisual* {.importc: "xcb_render_pictvisual_t", bycopy.} = object
    visual*: XcbVisualid
    format*: XcbRenderPictformat

  XcbRenderPictvisualIterator* {.importc: "xcb_render_pictvisual_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPictvisual]
    rem*: cint
    index*: cint

  XcbRenderPictdepth* {.importc: "xcb_render_pictdepth_t", bycopy.} = object
    depth*: uint8
    pad0: uint8
    numVisuals* {.importc: "num_visuals".}: uint16
    pad1: array[4, uint8]

  XcbRenderPictdepthIterator* {.importc: "xcb_render_pictdepth_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPictdepth]
    rem*: cint
    index*: cint

  XcbRenderPictscreen* {.importc: "xcb_render_pictscreen_t", bycopy.} = object
    numDepths* {.importc: "num_depths".}: uint32
    fallback*: XcbRenderPictformat

  XcbRenderPictscreenIterator* {.importc: "xcb_render_pictscreen_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPictscreen]
    rem*: cint
    index*: cint

  XcbRenderIndexvalue* {.importc: "xcb_render_indexvalue_t", bycopy.} = object
    pixel*: uint32
    red*: uint16
    green*: uint16
    blue*: uint16
    alpha*: uint16

  XcbRenderIndexvalueIterator* {.importc: "xcb_render_indexvalue_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderIndexvalue]
    rem*: cint
    index*: cint

  XcbRenderColor* {.importc: "xcb_render_color_t", bycopy.} = object
    red*: uint16
    green*: uint16
    blue*: uint16
    alpha*: uint16

  XcbRenderColorIterator* {.importc: "xcb_render_color_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderColor]
    rem*: cint
    index*: cint

  XcbRenderPointfix* {.importc: "xcb_render_pointfix_t", bycopy.} = object
    x*: XcbRenderFixed
    y*: XcbRenderFixed

  XcbRenderPointfixIterator* {.importc: "xcb_render_pointfix_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderPointfix]
    rem*: cint
    index*: cint

  XcbRenderLinefix* {.importc: "xcb_render_linefix_t", bycopy.} = object
    p1*: XcbRenderPointfix
    p2*: XcbRenderPointfix

  XcbRenderLinefixIterator* {.importc: "xcb_render_linefix_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderLinefix]
    rem*: cint
    index*: cint

  XcbRenderTriangle* {.importc: "xcb_render_triangle_t", bycopy.} = object
    p1*: XcbRenderPointfix
    p2*: XcbRenderPointfix
    p3*: XcbRenderPointfix

  XcbRenderTriangleIterator* {.importc: "xcb_render_triangle_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderTriangle]
    rem*: cint
    index*: cint

  XcbRenderTrapezoid* {.importc: "xcb_render_trapezoid_t", bycopy.} = object
    top*: XcbRenderFixed
    bottom*: XcbRenderFixed
    left*: XcbRenderLinefix
    right*: XcbRenderLinefix

  XcbRenderTrapezoidIterator* {.importc: "xcb_render_trapezoid_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderTrapezoid]
    rem*: cint
    index*: cint

  XcbRenderGlyphinfo* {.importc: "xcb_render_glyphinfo_t", bycopy.} = object
    width*: uint16
    height*: uint16
    x*: int16
    y*: int16
    xOff* {.importc: "x_off".}: int16
    yOff* {.importc: "y_off".}: int16

  XcbRenderGlyphinfoIterator* {.importc: "xcb_render_glyphinfo_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderGlyphinfo]
    rem*: cint
    index*: cint

  XcbRenderQueryVersionCookie* {.importc: "xcb_render_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRenderQueryVersionRequest* {.importc: "xcb_render_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajorVersion* {.importc: "client_major_version".}: uint32
    clientMinorVersion* {.importc: "client_minor_version".}: uint32

  XcbRenderQueryVersionReply* {.importc: "xcb_render_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbRenderQueryPictFormatsCookie* {.importc: "xcb_render_query_pict_formats_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRenderQueryPictFormatsRequest* {.importc: "xcb_render_query_pict_formats_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbRenderQueryPictFormatsReply* {.importc: "xcb_render_query_pict_formats_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numFormats* {.importc: "num_formats".}: uint32
    numScreens* {.importc: "num_screens".}: uint32
    numDepths* {.importc: "num_depths".}: uint32
    numVisuals* {.importc: "num_visuals".}: uint32
    numSubpixel* {.importc: "num_subpixel".}: uint32
    pad1: array[4, uint8]

  XcbRenderQueryPictIndexValuesCookie* {.importc: "xcb_render_query_pict_index_values_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRenderQueryPictIndexValuesRequest* {.importc: "xcb_render_query_pict_index_values_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    format*: XcbRenderPictformat

  XcbRenderQueryPictIndexValuesReply* {.importc: "xcb_render_query_pict_index_values_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numValues* {.importc: "num_values".}: uint32
    pad1: array[20, uint8]

  XcbRenderCreatePictureValueList* {.importc: "xcb_render_create_picture_value_list_t", bycopy.} = object
    repeat*: uint32
    alphamap*: XcbRenderPicture
    alphaxorigin*: int32
    alphayorigin*: int32
    clipxorigin*: int32
    clipyorigin*: int32
    clipmask*: XcbPixmap
    graphicsexposure*: uint32
    subwindowmode*: uint32
    polyedge*: uint32
    polymode*: uint32
    dither*: XcbAtom
    componentalpha*: uint32

  XcbRenderCreatePictureRequest* {.importc: "xcb_render_create_picture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pid*: XcbRenderPicture
    drawable*: XcbDrawable
    format*: XcbRenderPictformat
    valueMask* {.importc: "value_mask".}: uint32

  XcbRenderChangePictureValueList* {.importc: "xcb_render_change_picture_value_list_t", bycopy.} = object
    repeat*: uint32
    alphamap*: XcbRenderPicture
    alphaxorigin*: int32
    alphayorigin*: int32
    clipxorigin*: int32
    clipyorigin*: int32
    clipmask*: XcbPixmap
    graphicsexposure*: uint32
    subwindowmode*: uint32
    polyedge*: uint32
    polymode*: uint32
    dither*: XcbAtom
    componentalpha*: uint32

  XcbRenderChangePictureRequest* {.importc: "xcb_render_change_picture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    valueMask* {.importc: "value_mask".}: uint32

  XcbRenderSetPictureClipRectanglesRequest* {.importc: "xcb_render_set_picture_clip_rectangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    clipXOrigin* {.importc: "clip_x_origin".}: int16
    clipYOrigin* {.importc: "clip_y_origin".}: int16

  XcbRenderFreePictureRequest* {.importc: "xcb_render_free_picture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture

  XcbRenderCompositeRequest* {.importc: "xcb_render_composite_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    mask*: XcbRenderPicture
    dst*: XcbRenderPicture
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16
    maskX* {.importc: "mask_x".}: int16
    maskY* {.importc: "mask_y".}: int16
    dstX* {.importc: "dst_x".}: int16
    dstY* {.importc: "dst_y".}: int16
    width*: uint16
    height*: uint16

  XcbRenderTrapezoidsRequest* {.importc: "xcb_render_trapezoids_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderTrianglesRequest* {.importc: "xcb_render_triangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderTriStripRequest* {.importc: "xcb_render_tri_strip_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderTriFanRequest* {.importc: "xcb_render_tri_fan_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderCreateGlyphSetRequest* {.importc: "xcb_render_create_glyph_set_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    gsid*: XcbRenderGlyphset
    format*: XcbRenderPictformat

  XcbRenderReferenceGlyphSetRequest* {.importc: "xcb_render_reference_glyph_set_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    gsid*: XcbRenderGlyphset
    existing*: XcbRenderGlyphset

  XcbRenderFreeGlyphSetRequest* {.importc: "xcb_render_free_glyph_set_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glyphset*: XcbRenderGlyphset

  XcbRenderAddGlyphsRequest* {.importc: "xcb_render_add_glyphs_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glyphset*: XcbRenderGlyphset
    glyphsLen* {.importc: "glyphs_len".}: uint32

  XcbRenderFreeGlyphsRequest* {.importc: "xcb_render_free_glyphs_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glyphset*: XcbRenderGlyphset

  XcbRenderCompositeGlyphs8Request* {.importc: "xcb_render_composite_glyphs8_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    glyphset*: XcbRenderGlyphset
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderCompositeGlyphs16Request* {.importc: "xcb_render_composite_glyphs16_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    glyphset*: XcbRenderGlyphset
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderCompositeGlyphs32Request* {.importc: "xcb_render_composite_glyphs32_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    src*: XcbRenderPicture
    dst*: XcbRenderPicture
    maskFormat* {.importc: "mask_format".}: XcbRenderPictformat
    glyphset*: XcbRenderGlyphset
    srcX* {.importc: "src_x".}: int16
    srcY* {.importc: "src_y".}: int16

  XcbRenderFillRectanglesRequest* {.importc: "xcb_render_fill_rectangles_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    op*: uint8
    pad0: array[3, uint8]
    dst*: XcbRenderPicture
    color*: XcbRenderColor

  XcbRenderCreateCursorRequest* {.importc: "xcb_render_create_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cid*: XcbCursor
    source*: XcbRenderPicture
    x*: uint16
    y*: uint16

  XcbRenderTransform* {.importc: "xcb_render_transform_t", bycopy.} = object
    matrix11*: XcbRenderFixed
    matrix12*: XcbRenderFixed
    matrix13*: XcbRenderFixed
    matrix21*: XcbRenderFixed
    matrix22*: XcbRenderFixed
    matrix23*: XcbRenderFixed
    matrix31*: XcbRenderFixed
    matrix32*: XcbRenderFixed
    matrix33*: XcbRenderFixed

  XcbRenderTransformIterator* {.importc: "xcb_render_transform_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderTransform]
    rem*: cint
    index*: cint

  XcbRenderSetPictureTransformRequest* {.importc: "xcb_render_set_picture_transform_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    transform*: XcbRenderTransform

  XcbRenderQueryFiltersCookie* {.importc: "xcb_render_query_filters_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRenderQueryFiltersRequest* {.importc: "xcb_render_query_filters_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable

  XcbRenderQueryFiltersReply* {.importc: "xcb_render_query_filters_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAliases* {.importc: "num_aliases".}: uint32
    numFilters* {.importc: "num_filters".}: uint32
    pad1: array[16, uint8]

  XcbRenderSetPictureFilterRequest* {.importc: "xcb_render_set_picture_filter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    filterLen* {.importc: "filter_len".}: uint16
    pad0: array[2, uint8]

  XcbRenderAnimcursorelt* {.importc: "xcb_render_animcursorelt_t", bycopy.} = object
    cursor*: XcbCursor
    delay*: uint32

  XcbRenderAnimcursoreltIterator* {.importc: "xcb_render_animcursorelt_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderAnimcursorelt]
    rem*: cint
    index*: cint

  XcbRenderCreateAnimCursorRequest* {.importc: "xcb_render_create_anim_cursor_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cid*: XcbCursor

  XcbRenderSpanfix* {.importc: "xcb_render_spanfix_t", bycopy.} = object
    l*: XcbRenderFixed
    r*: XcbRenderFixed
    y*: XcbRenderFixed

  XcbRenderSpanfixIterator* {.importc: "xcb_render_spanfix_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderSpanfix]
    rem*: cint
    index*: cint

  XcbRenderTrap* {.importc: "xcb_render_trap_t", bycopy.} = object
    top*: XcbRenderSpanfix
    bot*: XcbRenderSpanfix

  XcbRenderTrapIterator* {.importc: "xcb_render_trap_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRenderTrap]
    rem*: cint
    index*: cint

  XcbRenderAddTrapsRequest* {.importc: "xcb_render_add_traps_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    xOff* {.importc: "x_off".}: int16
    yOff* {.importc: "y_off".}: int16

  XcbRenderCreateSolidFillRequest* {.importc: "xcb_render_create_solid_fill_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    color*: XcbRenderColor

  XcbRenderCreateLinearGradientRequest* {.importc: "xcb_render_create_linear_gradient_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    p1*: XcbRenderPointfix
    p2*: XcbRenderPointfix
    numStops* {.importc: "num_stops".}: uint32

  XcbRenderCreateRadialGradientRequest* {.importc: "xcb_render_create_radial_gradient_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    inner*: XcbRenderPointfix
    outer*: XcbRenderPointfix
    innerRadius* {.importc: "inner_radius".}: XcbRenderFixed
    outerRadius* {.importc: "outer_radius".}: XcbRenderFixed
    numStops* {.importc: "num_stops".}: uint32

  XcbRenderCreateConicalGradientRequest* {.importc: "xcb_render_create_conical_gradient_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    picture*: XcbRenderPicture
    center*: XcbRenderPointfix
    angle*: XcbRenderFixed
    numStops* {.importc: "num_stops".}: uint32

{.push cdecl.}

proc next*(i: ptr XcbRenderGlyphIterator) {.importc: "xcb_render_glyph_next".}
proc iterEnd*(i: XcbRenderGlyphIterator): XcbGenericIterator {.importc: "xcb_render_glyph_end".}
proc next*(i: ptr XcbRenderGlyphsetIterator) {.importc: "xcb_render_glyphset_next".}
proc iterEnd*(i: XcbRenderGlyphsetIterator): XcbGenericIterator {.importc: "xcb_render_glyphset_end".}
proc next*(i: ptr XcbRenderPictureIterator) {.importc: "xcb_render_picture_next".}
proc iterEnd*(i: XcbRenderPictureIterator): XcbGenericIterator {.importc: "xcb_render_picture_end".}
proc next*(i: ptr XcbRenderPictformatIterator) {.importc: "xcb_render_pictformat_next".}
proc iterEnd*(i: XcbRenderPictformatIterator): XcbGenericIterator {.importc: "xcb_render_pictformat_end".}
proc next*(i: ptr XcbRenderFixedIterator) {.importc: "xcb_render_fixed_next".}
proc iterEnd*(i: XcbRenderFixedIterator): XcbGenericIterator {.importc: "xcb_render_fixed_end".}
proc next*(i: ptr XcbRenderDirectformatIterator) {.importc: "xcb_render_directformat_next".}
proc iterEnd*(i: XcbRenderDirectformatIterator): XcbGenericIterator {.importc: "xcb_render_directformat_end".}
proc next*(i: ptr XcbRenderPictforminfoIterator) {.importc: "xcb_render_pictforminfo_next".}
proc iterEnd*(i: XcbRenderPictforminfoIterator): XcbGenericIterator {.importc: "xcb_render_pictforminfo_end".}
proc next*(i: ptr XcbRenderPictvisualIterator) {.importc: "xcb_render_pictvisual_next".}
proc iterEnd*(i: XcbRenderPictvisualIterator): XcbGenericIterator {.importc: "xcb_render_pictvisual_end".}
proc pictdepthSizeof*(buffer: pointer): cint {.importc: "xcb_render_pictdepth_sizeof".}
proc visuals*(R: ptr XcbRenderPictdepth): ptr UncheckedArray[XcbRenderPictvisual] {.importc: "xcb_render_pictdepth_visuals".}
proc visualsLength*(R: ptr XcbRenderPictdepth): cint {.importc: "xcb_render_pictdepth_visuals_length".}
proc visualsIterator*(R: ptr XcbRenderPictdepth): XcbRenderPictvisualIterator {.importc: "xcb_render_pictdepth_visuals_iterator".}
proc next*(i: ptr XcbRenderPictdepthIterator) {.importc: "xcb_render_pictdepth_next".}
proc iterEnd*(i: XcbRenderPictdepthIterator): XcbGenericIterator {.importc: "xcb_render_pictdepth_end".}
proc pictscreenSizeof*(buffer: pointer): cint {.importc: "xcb_render_pictscreen_sizeof".}
proc depthsLength*(R: ptr XcbRenderPictscreen): cint {.importc: "xcb_render_pictscreen_depths_length".}
proc depthsIterator*(R: ptr XcbRenderPictscreen): XcbRenderPictdepthIterator {.importc: "xcb_render_pictscreen_depths_iterator".}
proc next*(i: ptr XcbRenderPictscreenIterator) {.importc: "xcb_render_pictscreen_next".}
proc iterEnd*(i: XcbRenderPictscreenIterator): XcbGenericIterator {.importc: "xcb_render_pictscreen_end".}
proc next*(i: ptr XcbRenderIndexvalueIterator) {.importc: "xcb_render_indexvalue_next".}
proc iterEnd*(i: XcbRenderIndexvalueIterator): XcbGenericIterator {.importc: "xcb_render_indexvalue_end".}
proc next*(i: ptr XcbRenderColorIterator) {.importc: "xcb_render_color_next".}
proc iterEnd*(i: XcbRenderColorIterator): XcbGenericIterator {.importc: "xcb_render_color_end".}
proc next*(i: ptr XcbRenderPointfixIterator) {.importc: "xcb_render_pointfix_next".}
proc iterEnd*(i: XcbRenderPointfixIterator): XcbGenericIterator {.importc: "xcb_render_pointfix_end".}
proc next*(i: ptr XcbRenderLinefixIterator) {.importc: "xcb_render_linefix_next".}
proc iterEnd*(i: XcbRenderLinefixIterator): XcbGenericIterator {.importc: "xcb_render_linefix_end".}
proc next*(i: ptr XcbRenderTriangleIterator) {.importc: "xcb_render_triangle_next".}
proc iterEnd*(i: XcbRenderTriangleIterator): XcbGenericIterator {.importc: "xcb_render_triangle_end".}
proc next*(i: ptr XcbRenderTrapezoidIterator) {.importc: "xcb_render_trapezoid_next".}
proc iterEnd*(i: XcbRenderTrapezoidIterator): XcbGenericIterator {.importc: "xcb_render_trapezoid_end".}
proc next*(i: ptr XcbRenderGlyphinfoIterator) {.importc: "xcb_render_glyphinfo_next".}
proc iterEnd*(i: XcbRenderGlyphinfoIterator): XcbGenericIterator {.importc: "xcb_render_glyphinfo_end".}
proc renderQueryVersion*(c: ptr XcbConnection; client_major_version: uint32; client_minor_version: uint32): XcbRenderQueryVersionCookie {.importc: "xcb_render_query_version".}
proc renderQueryVersionUnchecked*(c: ptr XcbConnection; client_major_version: uint32; client_minor_version: uint32): XcbRenderQueryVersionCookie {.importc: "xcb_render_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRenderQueryVersionCookie;  e: ptr ptr XcbGenericError): ptr XcbRenderQueryVersionReply {.importc: "xcb_render_query_version_reply".}
proc queryPictFormatsSizeof*(buffer: pointer): cint {.importc: "xcb_render_query_pict_formats_sizeof".}
proc queryPictFormats*(c: ptr XcbConnection): XcbRenderQueryPictFormatsCookie {.importc: "xcb_render_query_pict_formats".}
proc queryPictFormatsUnchecked*(c: ptr XcbConnection): XcbRenderQueryPictFormatsCookie {.importc: "xcb_render_query_pict_formats_unchecked".}
proc formats*(R: ptr XcbRenderQueryPictFormatsReply): ptr UncheckedArray[XcbRenderPictforminfo] {.importc: "xcb_render_query_pict_formats_formats".}
proc formatsLength*(R: ptr XcbRenderQueryPictFormatsReply): cint {.importc: "xcb_render_query_pict_formats_formats_length".}
proc formatsIterator*(R: ptr XcbRenderQueryPictFormatsReply): XcbRenderPictforminfoIterator {.importc: "xcb_render_query_pict_formats_formats_iterator".}
proc screensLength*(R: ptr XcbRenderQueryPictFormatsReply): cint {.importc: "xcb_render_query_pict_formats_screens_length".}
proc screensIterator*(R: ptr XcbRenderQueryPictFormatsReply): XcbRenderPictscreenIterator {.importc: "xcb_render_query_pict_formats_screens_iterator".}
proc subpixels*(R: ptr XcbRenderQueryPictFormatsReply): ptr UncheckedArray[uint32] {.importc: "xcb_render_query_pict_formats_subpixels".}
proc subpixelsLength*(R: ptr XcbRenderQueryPictFormatsReply): cint {.importc: "xcb_render_query_pict_formats_subpixels_length".}
proc subpixelsEnd*(R: ptr XcbRenderQueryPictFormatsReply): XcbGenericIterator {.importc: "xcb_render_query_pict_formats_subpixels_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRenderQueryPictFormatsCookie;  e: ptr ptr XcbGenericError): ptr XcbRenderQueryPictFormatsReply {.importc: "xcb_render_query_pict_formats_reply".}
proc queryPictIndexValuesSizeof*(buffer: pointer): cint {.importc: "xcb_render_query_pict_index_values_sizeof".}
proc queryPictIndexValues*(c: ptr XcbConnection; format: XcbRenderPictformat): XcbRenderQueryPictIndexValuesCookie {.importc: "xcb_render_query_pict_index_values".}
proc queryPictIndexValuesUnchecked*(c: ptr XcbConnection; format: XcbRenderPictformat): XcbRenderQueryPictIndexValuesCookie {.importc: "xcb_render_query_pict_index_values_unchecked".}
proc values*(R: ptr XcbRenderQueryPictIndexValuesReply): ptr UncheckedArray[XcbRenderIndexvalue] {.importc: "xcb_render_query_pict_index_values_values".}
proc valuesLength*(R: ptr XcbRenderQueryPictIndexValuesReply): cint {.importc: "xcb_render_query_pict_index_values_values_length".}
proc valuesIterator*(R: ptr XcbRenderQueryPictIndexValuesReply): XcbRenderIndexvalueIterator {.importc: "xcb_render_query_pict_index_values_values_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbRenderQueryPictIndexValuesCookie;  e: ptr ptr XcbGenericError): ptr XcbRenderQueryPictIndexValuesReply {.importc: "xcb_render_query_pict_index_values_reply".}
proc serialize*(buffer: ptr pointer; value_mask: uint32; aux: ptr XcbRenderCreatePictureValueList): cint {.importc: "xcb_render_create_picture_value_list_serialize".}
proc unpack*(buffer: pointer; value_mask: uint32; aux: ptr XcbRenderCreatePictureValueList): cint {.importc: "xcb_render_create_picture_value_list_unpack".}
proc createPictureValueListSizeof*(buffer: pointer; value_mask: uint32): cint {.importc: "xcb_render_create_picture_value_list_sizeof".}
proc createPictureSizeof*(buffer: pointer): cint {.importc: "xcb_render_create_picture_sizeof".}
proc createPictureChecked*(c: ptr XcbConnection; pid: XcbRenderPicture; drawable: XcbDrawable; format: XcbRenderPictformat; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_render_create_picture_checked".}
proc createPicture*(c: ptr XcbConnection; pid: XcbRenderPicture; drawable: XcbDrawable; format: XcbRenderPictformat; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_render_create_picture".}
proc createPictureAuxChecked*(c: ptr XcbConnection; pid: XcbRenderPicture; drawable: XcbDrawable; format: XcbRenderPictformat; value_mask: uint32; value_list: ptr XcbRenderCreatePictureValueList): XcbVoidCookie {.discardable, importc: "xcb_render_create_picture_aux_checked".}
proc createPictureAux*(c: ptr XcbConnection; pid: XcbRenderPicture; drawable: XcbDrawable; format: XcbRenderPictformat; value_mask: uint32; value_list: ptr XcbRenderCreatePictureValueList): XcbVoidCookie {.discardable, importc: "xcb_render_create_picture_aux".}
proc valueList*(R: ptr XcbRenderCreatePictureRequest): pointer {.importc: "xcb_render_create_picture_value_list".}
proc serialize*(buffer: ptr pointer; value_mask: uint32; aux: ptr XcbRenderChangePictureValueList): cint {.importc: "xcb_render_change_picture_value_list_serialize".}
proc unpack*(buffer: pointer; value_mask: uint32; aux: ptr XcbRenderChangePictureValueList): cint {.importc: "xcb_render_change_picture_value_list_unpack".}
proc changePictureValueListSizeof*(buffer: pointer; value_mask: uint32): cint {.importc: "xcb_render_change_picture_value_list_sizeof".}
proc changePictureSizeof*(buffer: pointer): cint {.importc: "xcb_render_change_picture_sizeof".}
proc changePictureChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_render_change_picture_checked".}
proc changePicture*(c: ptr XcbConnection; picture: XcbRenderPicture; value_mask: uint32; value_list: pointer): XcbVoidCookie {.discardable, importc: "xcb_render_change_picture".}
proc changePictureAuxChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; value_mask: uint32; value_list: ptr XcbRenderChangePictureValueList): XcbVoidCookie {.discardable, importc: "xcb_render_change_picture_aux_checked".}
proc changePictureAux*(c: ptr XcbConnection; picture: XcbRenderPicture; value_mask: uint32; value_list: ptr XcbRenderChangePictureValueList): XcbVoidCookie {.discardable, importc: "xcb_render_change_picture_aux".}
proc valueList*(R: ptr XcbRenderChangePictureRequest): pointer {.importc: "xcb_render_change_picture_value_list".}
proc setPictureClipRectanglesSizeof*(buffer: pointer; rectangles_len: uint32): cint {.importc: "xcb_render_set_picture_clip_rectangles_sizeof".}
proc setPictureClipRectanglesChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; clip_x_origin: int16; clip_y_origin: int16; rectangles_len: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_clip_rectangles_checked".}
proc setPictureClipRectangles*(c: ptr XcbConnection; picture: XcbRenderPicture; clip_x_origin: int16; clip_y_origin: int16; rectangles_len: uint32; rectangles: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_clip_rectangles".}
proc rectangles*(R: ptr XcbRenderSetPictureClipRectanglesRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_render_set_picture_clip_rectangles_rectangles".}
proc rectanglesLength*(R: ptr XcbRenderSetPictureClipRectanglesRequest): cint {.importc: "xcb_render_set_picture_clip_rectangles_rectangles_length".}
proc rectanglesIterator*(R: ptr XcbRenderSetPictureClipRectanglesRequest): XcbRectangleIterator {.importc: "xcb_render_set_picture_clip_rectangles_rectangles_iterator".}
proc freeChecked*(c: ptr XcbConnection; picture: XcbRenderPicture): XcbVoidCookie {.discardable, importc: "xcb_render_free_picture_checked".}
proc free*(c: ptr XcbConnection; picture: XcbRenderPicture): XcbVoidCookie {.discardable, importc: "xcb_render_free_picture".}
proc compositeChecked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; mask: XcbRenderPicture; dst: XcbRenderPicture; src_x: int16; src_y: int16; mask_x: int16; mask_y: int16; dst_x: int16; dst_y: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_render_composite_checked".}
proc composite*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; mask: XcbRenderPicture; dst: XcbRenderPicture; src_x: int16; src_y: int16; mask_x: int16; mask_y: int16; dst_x: int16; dst_y: int16; width: uint16; height: uint16): XcbVoidCookie {.discardable, importc: "xcb_render_composite".}
proc trapezoidsSizeof*(buffer: pointer; traps_len: uint32): cint {.importc: "xcb_render_trapezoids_sizeof".}
proc trapezoidsChecked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; traps_len: uint32; traps: ptr XcbRenderTrapezoid): XcbVoidCookie {.discardable, importc: "xcb_render_trapezoids_checked".}
proc trapezoids*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; traps_len: uint32; traps: ptr XcbRenderTrapezoid): XcbVoidCookie {.discardable, importc: "xcb_render_trapezoids".}
proc traps*(R: ptr XcbRenderTrapezoidsRequest): ptr UncheckedArray[XcbRenderTrapezoid] {.importc: "xcb_render_trapezoids_traps".}
proc trapsLength*(R: ptr XcbRenderTrapezoidsRequest): cint {.importc: "xcb_render_trapezoids_traps_length".}
proc trapsIterator*(R: ptr XcbRenderTrapezoidsRequest): XcbRenderTrapezoidIterator {.importc: "xcb_render_trapezoids_traps_iterator".}
proc trianglesSizeof*(buffer: pointer; triangles_len: uint32): cint {.importc: "xcb_render_triangles_sizeof".}
proc trianglesChecked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; triangles_len: uint32; triangles: ptr XcbRenderTriangle): XcbVoidCookie {.discardable, importc: "xcb_render_triangles_checked".}
proc triangles*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; triangles_len: uint32; triangles: ptr XcbRenderTriangle): XcbVoidCookie {.discardable, importc: "xcb_render_triangles".}
proc triangles*(R: ptr XcbRenderTrianglesRequest): ptr UncheckedArray[XcbRenderTriangle] {.importc: "xcb_render_triangles_triangles".}
proc trianglesLength*(R: ptr XcbRenderTrianglesRequest): cint {.importc: "xcb_render_triangles_triangles_length".}
proc trianglesIterator*(R: ptr XcbRenderTrianglesRequest): XcbRenderTriangleIterator {.importc: "xcb_render_triangles_triangles_iterator".}
proc triStripSizeof*(buffer: pointer; points_len: uint32): cint {.importc: "xcb_render_tri_strip_sizeof".}
proc triStripChecked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; points_len: uint32; points: ptr XcbRenderPointfix): XcbVoidCookie {.discardable, importc: "xcb_render_tri_strip_checked".}
proc triStrip*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; points_len: uint32; points: ptr XcbRenderPointfix): XcbVoidCookie {.discardable, importc: "xcb_render_tri_strip".}
proc points*(R: ptr XcbRenderTriStripRequest): ptr UncheckedArray[XcbRenderPointfix] {.importc: "xcb_render_tri_strip_points".}
proc pointsLength*(R: ptr XcbRenderTriStripRequest): cint {.importc: "xcb_render_tri_strip_points_length".}
proc pointsIterator*(R: ptr XcbRenderTriStripRequest): XcbRenderPointfixIterator {.importc: "xcb_render_tri_strip_points_iterator".}
proc triFanSizeof*(buffer: pointer; points_len: uint32): cint {.importc: "xcb_render_tri_fan_sizeof".}
proc triFanChecked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; points_len: uint32; points: ptr XcbRenderPointfix): XcbVoidCookie {.discardable, importc: "xcb_render_tri_fan_checked".}
proc triFan*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; src_x: int16; src_y: int16; points_len: uint32; points: ptr XcbRenderPointfix): XcbVoidCookie {.discardable, importc: "xcb_render_tri_fan".}
proc points*(R: ptr XcbRenderTriFanRequest): ptr UncheckedArray[XcbRenderPointfix] {.importc: "xcb_render_tri_fan_points".}
proc pointsLength*(R: ptr XcbRenderTriFanRequest): cint {.importc: "xcb_render_tri_fan_points_length".}
proc pointsIterator*(R: ptr XcbRenderTriFanRequest): XcbRenderPointfixIterator {.importc: "xcb_render_tri_fan_points_iterator".}
proc createGlyphSetChecked*(c: ptr XcbConnection; gsid: XcbRenderGlyphset; format: XcbRenderPictformat): XcbVoidCookie {.discardable, importc: "xcb_render_create_glyph_set_checked".}
proc createGlyphSet*(c: ptr XcbConnection; gsid: XcbRenderGlyphset; format: XcbRenderPictformat): XcbVoidCookie {.discardable, importc: "xcb_render_create_glyph_set".}
proc referenceGlyphSetChecked*(c: ptr XcbConnection; gsid: XcbRenderGlyphset; existing: XcbRenderGlyphset): XcbVoidCookie {.discardable, importc: "xcb_render_reference_glyph_set_checked".}
proc referenceGlyphSet*(c: ptr XcbConnection; gsid: XcbRenderGlyphset; existing: XcbRenderGlyphset): XcbVoidCookie {.discardable, importc: "xcb_render_reference_glyph_set".}
proc freeChecked*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset): XcbVoidCookie {.discardable, importc: "xcb_render_free_glyph_set_checked".}
proc free*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset): XcbVoidCookie {.discardable, importc: "xcb_render_free_glyph_set".}
proc addGlyphsSizeof*(buffer: pointer; data_len: uint32): cint {.importc: "xcb_render_add_glyphs_sizeof".}
proc addGlyphsChecked*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset; glyphs_len: uint32; glyphids: ptr uint32; glyphs: ptr XcbRenderGlyphinfo; data_len: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_add_glyphs_checked".}
proc addGlyphs*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset; glyphs_len: uint32; glyphids: ptr uint32; glyphs: ptr XcbRenderGlyphinfo; data_len: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_add_glyphs".}
proc glyphIds*(R: ptr XcbRenderAddGlyphsRequest): ptr UncheckedArray[uint32] {.importc: "xcb_render_add_glyphs_glyphids".}
proc glyphIdsLength*(R: ptr XcbRenderAddGlyphsRequest): cint {.importc: "xcb_render_add_glyphs_glyphids_length".}
proc glyphIdsEnd*(R: ptr XcbRenderAddGlyphsRequest): XcbGenericIterator {.importc: "xcb_render_add_glyphs_glyphids_end".}
proc glyphs*(R: ptr XcbRenderAddGlyphsRequest): ptr UncheckedArray[XcbRenderGlyphinfo] {.importc: "xcb_render_add_glyphs_glyphs".}
proc glyphsLength*(R: ptr XcbRenderAddGlyphsRequest): cint {.importc: "xcb_render_add_glyphs_glyphs_length".}
proc glyphsIterator*(R: ptr XcbRenderAddGlyphsRequest): XcbRenderGlyphinfoIterator {.importc: "xcb_render_add_glyphs_glyphs_iterator".}
proc data*(R: ptr XcbRenderAddGlyphsRequest): ptr UncheckedArray[uint8] {.importc: "xcb_render_add_glyphs_data".}
proc dataLength*(R: ptr XcbRenderAddGlyphsRequest): cint {.importc: "xcb_render_add_glyphs_data_length".}
proc dataEnd*(R: ptr XcbRenderAddGlyphsRequest): XcbGenericIterator {.importc: "xcb_render_add_glyphs_data_end".}
proc freeGlyphsSizeof*(buffer: pointer; glyphs_len: uint32): cint {.importc: "xcb_render_free_glyphs_sizeof".}
proc freeChecked*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset; glyphs_len: uint32; glyphs: ptr XcbRenderGlyph): XcbVoidCookie {.discardable, importc: "xcb_render_free_glyphs_checked".}
proc free*(c: ptr XcbConnection; glyphset: XcbRenderGlyphset; glyphs_len: uint32; glyphs: ptr XcbRenderGlyph): XcbVoidCookie {.discardable, importc: "xcb_render_free_glyphs".}
proc glyphs*(R: ptr XcbRenderFreeGlyphsRequest): ptr UncheckedArray[XcbRenderGlyph] {.importc: "xcb_render_free_glyphs_glyphs".}
proc glyphsLength*(R: ptr XcbRenderFreeGlyphsRequest): cint {.importc: "xcb_render_free_glyphs_glyphs_length".}
proc glyphsEnd*(R: ptr XcbRenderFreeGlyphsRequest): XcbGenericIterator {.importc: "xcb_render_free_glyphs_glyphs_end".}
proc compositeGlyphs8Sizeof*(buffer: pointer; glyphcmds_len: uint32): cint {.importc: "xcb_render_composite_glyphs_8_sizeof".}
proc compositeGlyphs8Checked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_8_checked".}
proc compositeGlyphs8*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_8".}
proc cmds*(R: ptr XcbRenderCompositeGlyphs8Request): ptr UncheckedArray[uint8] {.importc: "xcb_render_composite_glyphs_8_glyphcmds".}
proc cmdsLength*(R: ptr XcbRenderCompositeGlyphs8Request): cint {.importc: "xcb_render_composite_glyphs_8_glyphcmds_length".}
proc cmdsEnd*(R: ptr XcbRenderCompositeGlyphs8Request): XcbGenericIterator {.importc: "xcb_render_composite_glyphs_8_glyphcmds_end".}
proc compositeGlyphs16Sizeof*(buffer: pointer; glyphcmds_len: uint32): cint {.importc: "xcb_render_composite_glyphs_16_sizeof".}
proc compositeGlyphs16Checked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_16_checked".}
proc compositeGlyphs16*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_16".}
proc cmds*(R: ptr XcbRenderCompositeGlyphs16Request): ptr UncheckedArray[uint8] {.importc: "xcb_render_composite_glyphs_16_glyphcmds".}
proc cmdsLength*(R: ptr XcbRenderCompositeGlyphs16Request): cint {.importc: "xcb_render_composite_glyphs_16_glyphcmds_length".}
proc cmdsEnd*(R: ptr XcbRenderCompositeGlyphs16Request): XcbGenericIterator {.importc: "xcb_render_composite_glyphs_16_glyphcmds_end".}
proc compositeGlyphs32Sizeof*(buffer: pointer; glyphcmds_len: uint32): cint {.importc: "xcb_render_composite_glyphs_32_sizeof".}
proc compositeGlyphs32Checked*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_32_checked".}
proc compositeGlyphs32*(c: ptr XcbConnection; op: uint8; src: XcbRenderPicture; dst: XcbRenderPicture; mask_format: XcbRenderPictformat; glyphset: XcbRenderGlyphset; src_x: int16; src_y: int16; glyphcmds_len: uint32; glyphcmds: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_render_composite_glyphs_32".}
proc cmds*(R: ptr XcbRenderCompositeGlyphs32Request): ptr UncheckedArray[uint8] {.importc: "xcb_render_composite_glyphs_32_glyphcmds".}
proc cmdsLength*(R: ptr XcbRenderCompositeGlyphs32Request): cint {.importc: "xcb_render_composite_glyphs_32_glyphcmds_length".}
proc cmdsEnd*(R: ptr XcbRenderCompositeGlyphs32Request): XcbGenericIterator {.importc: "xcb_render_composite_glyphs_32_glyphcmds_end".}
proc fillRectanglesSizeof*(buffer: pointer; rects_len: uint32): cint {.importc: "xcb_render_fill_rectangles_sizeof".}
proc fillRectanglesChecked*(c: ptr XcbConnection; op: uint8; dst: XcbRenderPicture; color: XcbRenderColor; rects_len: uint32; rects: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_render_fill_rectangles_checked".}
proc fillRectangles*(c: ptr XcbConnection; op: uint8; dst: XcbRenderPicture; color: XcbRenderColor; rects_len: uint32; rects: ptr XcbRectangle): XcbVoidCookie {.discardable, importc: "xcb_render_fill_rectangles".}
proc rects*(R: ptr XcbRenderFillRectanglesRequest): ptr UncheckedArray[XcbRectangle] {.importc: "xcb_render_fill_rectangles_rects".}
proc rectsLength*(R: ptr XcbRenderFillRectanglesRequest): cint {.importc: "xcb_render_fill_rectangles_rects_length".}
proc rectsIterator*(R: ptr XcbRenderFillRectanglesRequest): XcbRectangleIterator {.importc: "xcb_render_fill_rectangles_rects_iterator".}
proc createCursorChecked*(c: ptr XcbConnection; cid: XcbCursor; source: XcbRenderPicture; x: uint16; y: uint16): XcbVoidCookie {.discardable, importc: "xcb_render_create_cursor_checked".}
proc createCursor*(c: ptr XcbConnection; cid: XcbCursor; source: XcbRenderPicture; x: uint16; y: uint16): XcbVoidCookie {.discardable, importc: "xcb_render_create_cursor".}
proc next*(i: ptr XcbRenderTransformIterator) {.importc: "xcb_render_transform_next".}
proc iterEnd*(i: XcbRenderTransformIterator): XcbGenericIterator {.importc: "xcb_render_transform_end".}
proc setPictureTransformChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; transform: XcbRenderTransform): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_transform_checked".}
proc setPictureTransform*(c: ptr XcbConnection; picture: XcbRenderPicture; transform: XcbRenderTransform): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_transform".}
proc queryFiltersSizeof*(buffer: pointer): cint {.importc: "xcb_render_query_filters_sizeof".}
proc queryFilters*(c: ptr XcbConnection; drawable: XcbDrawable): XcbRenderQueryFiltersCookie {.importc: "xcb_render_query_filters".}
proc queryFiltersUnchecked*(c: ptr XcbConnection; drawable: XcbDrawable): XcbRenderQueryFiltersCookie {.importc: "xcb_render_query_filters_unchecked".}
proc aliases*(R: ptr XcbRenderQueryFiltersReply): ptr UncheckedArray[uint16] {.importc: "xcb_render_query_filters_aliases".}
proc aliasesLength*(R: ptr XcbRenderQueryFiltersReply): cint {.importc: "xcb_render_query_filters_aliases_length".}
proc aliasesEnd*(R: ptr XcbRenderQueryFiltersReply): XcbGenericIterator {.importc: "xcb_render_query_filters_aliases_end".}
proc filtersLength*(R: ptr XcbRenderQueryFiltersReply): cint {.importc: "xcb_render_query_filters_filters_length".}
proc filtersIterator*(R: ptr XcbRenderQueryFiltersReply): XcbStrIterator {.importc: "xcb_render_query_filters_filters_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbRenderQueryFiltersCookie;  e: ptr ptr XcbGenericError): ptr XcbRenderQueryFiltersReply {.importc: "xcb_render_query_filters_reply".}
proc setPictureFilterSizeof*(buffer: pointer; values_len: uint32): cint {.importc: "xcb_render_set_picture_filter_sizeof".}
proc setPictureFilterChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; filter_len: uint16; filter: cstring; values_len: uint32; values: ptr XcbRenderFixed): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_filter_checked".}
proc setPictureFilter*(c: ptr XcbConnection; picture: XcbRenderPicture; filter_len: uint16; filter: cstring; values_len: uint32; values: ptr XcbRenderFixed): XcbVoidCookie {.discardable, importc: "xcb_render_set_picture_filter".}
proc filter*(R: ptr XcbRenderSetPictureFilterRequest): ptr UncheckedArray[char] {.importc: "xcb_render_set_picture_filter_filter".}
proc filterLength*(R: ptr XcbRenderSetPictureFilterRequest): cint {.importc: "xcb_render_set_picture_filter_filter_length".}
proc filterEnd*(R: ptr XcbRenderSetPictureFilterRequest): XcbGenericIterator {.importc: "xcb_render_set_picture_filter_filter_end".}
proc values*(R: ptr XcbRenderSetPictureFilterRequest): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_render_set_picture_filter_values".}
proc valuesLength*(R: ptr XcbRenderSetPictureFilterRequest): cint {.importc: "xcb_render_set_picture_filter_values_length".}
proc valuesEnd*(R: ptr XcbRenderSetPictureFilterRequest): XcbGenericIterator {.importc: "xcb_render_set_picture_filter_values_end".}
proc next*(i: ptr XcbRenderAnimcursoreltIterator) {.importc: "xcb_render_animcursorelt_next".}
proc iterEnd*(i: XcbRenderAnimcursoreltIterator): XcbGenericIterator {.importc: "xcb_render_animcursorelt_end".}
proc createAnimCursorSizeof*(buffer: pointer; cursors_len: uint32): cint {.importc: "xcb_render_create_anim_cursor_sizeof".}
proc createAnimCursorChecked*(c: ptr XcbConnection; cid: XcbCursor; cursors_len: uint32; cursors: ptr XcbRenderAnimcursorelt): XcbVoidCookie {.discardable, importc: "xcb_render_create_anim_cursor_checked".}
proc createAnimCursor*(c: ptr XcbConnection; cid: XcbCursor; cursors_len: uint32; cursors: ptr XcbRenderAnimcursorelt): XcbVoidCookie {.discardable, importc: "xcb_render_create_anim_cursor".}
proc createAnimCursorCursors*(R: ptr XcbRenderCreateAnimCursorRequest): ptr XcbRenderAnimcursorelt {.importc: "xcb_render_create_anim_cursor_cursors".}
proc cursorsLength*(R: ptr XcbRenderCreateAnimCursorRequest): cint {.importc: "xcb_render_create_anim_cursor_cursors_length".}
proc cursorsIterator*(R: ptr XcbRenderCreateAnimCursorRequest): XcbRenderAnimcursoreltIterator {.importc: "xcb_render_create_anim_cursor_cursors_iterator".}
proc next*(i: ptr XcbRenderSpanfixIterator) {.importc: "xcb_render_spanfix_next".}
proc iterEnd*(i: XcbRenderSpanfixIterator): XcbGenericIterator {.importc: "xcb_render_spanfix_end".}
proc next*(i: ptr XcbRenderTrapIterator) {.importc: "xcb_render_trap_next".}
proc iterEnd*(i: XcbRenderTrapIterator): XcbGenericIterator {.importc: "xcb_render_trap_end".}
proc addTrapsSizeof*(buffer: pointer; traps_len: uint32): cint {.importc: "xcb_render_add_traps_sizeof".}
proc addTrapsChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; x_off: int16; y_off: int16; traps_len: uint32; traps: ptr XcbRenderTrap): XcbVoidCookie {.discardable, importc: "xcb_render_add_traps_checked".}
proc addTraps*(c: ptr XcbConnection; picture: XcbRenderPicture; x_off: int16; y_off: int16; traps_len: uint32; traps: ptr XcbRenderTrap): XcbVoidCookie {.discardable, importc: "xcb_render_add_traps".}
proc traps*(R: ptr XcbRenderAddTrapsRequest): ptr UncheckedArray[XcbRenderTrap] {.importc: "xcb_render_add_traps_traps".}
proc trapsLength*(R: ptr XcbRenderAddTrapsRequest): cint {.importc: "xcb_render_add_traps_traps_length".}
proc trapsIterator*(R: ptr XcbRenderAddTrapsRequest): XcbRenderTrapIterator {.importc: "xcb_render_add_traps_traps_iterator".}
proc createSolidFillChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; color: XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_solid_fill_checked".}
proc createSolidFill*(c: ptr XcbConnection; picture: XcbRenderPicture; color: XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_solid_fill".}
proc createLinearGradientSizeof*(buffer: pointer): cint {.importc: "xcb_render_create_linear_gradient_sizeof".}
proc createLinearGradientChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; p1: XcbRenderPointfix; p2: XcbRenderPointfix; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_linear_gradient_checked".}
proc createLinearGradient*(c: ptr XcbConnection; picture: XcbRenderPicture; p1: XcbRenderPointfix; p2: XcbRenderPointfix; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_linear_gradient".}
proc stops*(R: ptr XcbRenderCreateLinearGradientRequest): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_render_create_linear_gradient_stops".}
proc stopsLength*(R: ptr XcbRenderCreateLinearGradientRequest): cint {.importc: "xcb_render_create_linear_gradient_stops_length".}
proc stopsEnd*(R: ptr XcbRenderCreateLinearGradientRequest): XcbGenericIterator {.importc: "xcb_render_create_linear_gradient_stops_end".}
proc colors*(R: ptr XcbRenderCreateLinearGradientRequest): ptr UncheckedArray[XcbRenderColor] {.importc: "xcb_render_create_linear_gradient_colors".}
proc colorsLength*(R: ptr XcbRenderCreateLinearGradientRequest): cint {.importc: "xcb_render_create_linear_gradient_colors_length".}
proc colorsIterator*(R: ptr XcbRenderCreateLinearGradientRequest): XcbRenderColorIterator {.importc: "xcb_render_create_linear_gradient_colors_iterator".}
proc createRadialGradientSizeof*(buffer: pointer): cint {.importc: "xcb_render_create_radial_gradient_sizeof".}
proc createRadialGradientChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; inner: XcbRenderPointfix; outer: XcbRenderPointfix; inner_radius: XcbRenderFixed; outer_radius: XcbRenderFixed; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_radial_gradient_checked".}
proc createRadialGradient*(c: ptr XcbConnection; picture: XcbRenderPicture; inner: XcbRenderPointfix; outer: XcbRenderPointfix; inner_radius: XcbRenderFixed; outer_radius: XcbRenderFixed; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_radial_gradient".}
proc stops*(R: ptr XcbRenderCreateRadialGradientRequest): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_render_create_radial_gradient_stops".}
proc stopsLength*(R: ptr XcbRenderCreateRadialGradientRequest): cint {.importc: "xcb_render_create_radial_gradient_stops_length".}
proc stopsEnd*(R: ptr XcbRenderCreateRadialGradientRequest): XcbGenericIterator {.importc: "xcb_render_create_radial_gradient_stops_end".}
proc colors*(R: ptr XcbRenderCreateRadialGradientRequest): ptr UncheckedArray[XcbRenderColor] {.importc: "xcb_render_create_radial_gradient_colors".}
proc colorsLength*(R: ptr XcbRenderCreateRadialGradientRequest): cint {.importc: "xcb_render_create_radial_gradient_colors_length".}
proc colorsIterator*(R: ptr XcbRenderCreateRadialGradientRequest): XcbRenderColorIterator {.importc: "xcb_render_create_radial_gradient_colors_iterator".}
proc createConicalGradientSizeof*(buffer: pointer): cint {.importc: "xcb_render_create_conical_gradient_sizeof".}
proc createConicalGradientChecked*(c: ptr XcbConnection; picture: XcbRenderPicture; center: XcbRenderPointfix; angle: XcbRenderFixed; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_conical_gradient_checked".}
proc createConicalGradient*(c: ptr XcbConnection; picture: XcbRenderPicture; center: XcbRenderPointfix; angle: XcbRenderFixed; num_stops: uint32; stops: ptr XcbRenderFixed; colors: ptr XcbRenderColor): XcbVoidCookie {.discardable, importc: "xcb_render_create_conical_gradient".}
proc stops*(R: ptr XcbRenderCreateConicalGradientRequest): ptr UncheckedArray[XcbRenderFixed] {.importc: "xcb_render_create_conical_gradient_stops".}
proc stopsLength*(R: ptr XcbRenderCreateConicalGradientRequest): cint {.importc: "xcb_render_create_conical_gradient_stops_length".}
proc stopsEnd*(R: ptr XcbRenderCreateConicalGradientRequest): XcbGenericIterator {.importc: "xcb_render_create_conical_gradient_stops_end".}
proc colors*(R: ptr XcbRenderCreateConicalGradientRequest): ptr UncheckedArray[XcbRenderColor] {.importc: "xcb_render_create_conical_gradient_colors".}
proc colorsLength*(R: ptr XcbRenderCreateConicalGradientRequest): cint {.importc: "xcb_render_create_conical_gradient_colors_length".}
proc colorsIterator*(R: ptr XcbRenderCreateConicalGradientRequest): XcbRenderColorIterator {.importc: "xcb_render_create_conical_gradient_colors_iterator".}

{.pop.}
{.pop.}
