import ./xcb

const
  xcbGlxMajorVersion* = 1
  xcbGlxMinorVersion* = 4
  xcbGlxGeneric* = -1
  xcbGlxBadContext* = 0
  xcbGlxBadContextState* = 1
  xcbGlxBadDrawable* = 2
  xcbGlxBadPixmap* = 3
  xcbGlxBadContextTag* = 4
  xcbGlxBadCurrentWindow* = 5
  xcbGlxBadRenderRequest* = 6
  xcbGlxBadLargeRequest* = 7
  xcbGlxUnsupportedPrivateRequest* = 8
  xcbGlxBadFbConfig* = 9
  xcbGlxBadPbuffer* = 10
  xcbGlxBadCurrentDrawable* = 11
  xcbGlxBadWindow* = 12
  xcbGlxGlxBadProfileArb* = 13
  xcbGlxPbufferClobber* = 0
  xcbGlxBufferSwapComplete* = 1
  xcbGlxRender* = 1
  xcbGlxRenderLarge* = 2
  xcbGlxCreateContext* = 3
  xcbGlxDestroyContext* = 4
  xcbGlxMakeCurrent* = 5
  xcbGlxIsDirect* = 6
  xcbGlxQueryVersion* = 7
  xcbGlxWaitGl* = 8
  xcbGlxWaitX* = 9
  xcbGlxCopyContext* = 10
  xcbGlxSwapBuffers* = 11
  xcbGlxUseXFont* = 12
  xcbGlxCreateGlxPixmap* = 13
  xcbGlxGetVisualConfigs* = 14
  xcbGlxDestroyGlxPixmap* = 15
  xcbGlxVendorPrivate* = 16
  xcbGlxVendorPrivateWithReply* = 17
  xcbGlxQueryExtensionsString* = 18
  xcbGlxQueryServerString* = 19
  xcbGlxClientInfo* = 20
  xcbGlxGetFbConfigs* = 21
  xcbGlxCreatePixmap* = 22
  xcbGlxDestroyPixmap* = 23
  xcbGlxCreateNewContext* = 24
  xcbGlxQueryContext* = 25
  xcbGlxMakeContextCurrent* = 26
  xcbGlxCreatePbuffer* = 27
  xcbGlxDestroyPbuffer* = 28
  xcbGlxGetDrawableAttributes* = 29
  xcbGlxChangeDrawableAttributes* = 30
  xcbGlxCreateWindow* = 31
  xcbGlxDeleteWindow* = 32
  xcbGlxSetClientInfoArb* = 33
  xcbGlxCreateContextAttribsArb* = 34
  xcbGlxSetClientInfo2arb* = 35
  xcbGlxNewList* = 101
  xcbGlxEndList* = 102
  xcbGlxDeleteLists* = 103
  xcbGlxGenLists* = 104
  xcbGlxFeedbackBuffer* = 105
  xcbGlxSelectBuffer* = 106
  xcbGlxRenderMode* = 107
  xcbGlxFinish* = 108
  xcbGlxPixelStoref* = 109
  xcbGlxPixelStorei* = 110
  xcbGlxReadPixels* = 111
  xcbGlxGetBooleanv* = 112
  xcbGlxGetClipPlane* = 113
  xcbGlxGetDoublev* = 114
  xcbGlxGetError* = 115
  xcbGlxGetFloatv* = 116
  xcbGlxGetIntegerv* = 117
  xcbGlxGetLightfv* = 118
  xcbGlxGetLightiv* = 119
  xcbGlxGetMapdv* = 120
  xcbGlxGetMapfv* = 121
  xcbGlxGetMapiv* = 122
  xcbGlxGetMaterialfv* = 123
  xcbGlxGetMaterialiv* = 124
  xcbGlxGetPixelMapfv* = 125
  xcbGlxGetPixelMapuiv* = 126
  xcbGlxGetPixelMapusv* = 127
  xcbGlxGetPolygonStipple* = 128
  xcbGlxGetString* = 129
  xcbGlxGetTexEnvfv* = 130
  xcbGlxGetTexEnviv* = 131
  xcbGlxGetTexGendv* = 132
  xcbGlxGetTexGenfv* = 133
  xcbGlxGetTexGeniv* = 134
  xcbGlxGetTexImage* = 135
  xcbGlxGetTexParameterfv* = 136
  xcbGlxGetTexParameteriv* = 137
  xcbGlxGetTexLevelParameterfv* = 138
  xcbGlxGetTexLevelParameteriv* = 139
  xcbGlxIsEnabled* = 140
  xcbGlxIsList* = 141
  xcbGlxFlush* = 142
  xcbGlxAreTexturesResident* = 143
  xcbGlxDeleteTextures* = 144
  xcbGlxGenTextures* = 145
  xcbGlxIsTexture* = 146
  xcbGlxGetColorTable* = 147
  xcbGlxGetColorTableParameterfv* = 148
  xcbGlxGetColorTableParameteriv* = 149
  xcbGlxGetConvolutionFilter* = 150
  xcbGlxGetConvolutionParameterfv* = 151
  xcbGlxGetConvolutionParameteriv* = 152
  xcbGlxGetSeparableFilter* = 153
  xcbGlxGetHistogram* = 154
  xcbGlxGetHistogramParameterfv* = 155
  xcbGlxGetHistogramParameteriv* = 156
  xcbGlxGetMinmax* = 157
  xcbGlxGetMinmaxParameterfv* = 158
  xcbGlxGetMinmaxParameteriv* = 159
  xcbGlxGetCompressedTexImageArb* = 160
  xcbGlxDeleteQueriesArb* = 161
  xcbGlxGenQueriesArb* = 162
  xcbGlxIsQueryArb* = 163
  xcbGlxGetQueryivArb* = 164
  xcbGlxGetQueryObjectivArb* = 165
  xcbGlxGetQueryObjectuivArb* = 166

{.passl: "-lxcb-glx".}
{.push header: "xcb/glx.h".}

var xcbGlxId* {.extern: "xcb_glx_id".}: XcbExtension

type
  XcbGlxPixmap* {.importc: "xcb_glx_pixmap_t".} = distinct uint32
  XcbGlxContext* {.importc: "xcb_glx_context_t".} = distinct uint32
  XcbGlxPbuffer* {.importc: "xcb_glx_pbuffer_t".} = distinct uint32
  XcbGlxWindow* {.importc: "xcb_glx_window_t".} = distinct uint32
  XcbGlxFbconfig* {.importc: "xcb_glx_fbconfig_t".} = distinct uint32
  XcbGlxDrawable* {.importc: "xcb_glx_drawable_t".} = distinct uint32
  XcbGlxBool32* {.importc: "xcb_glx_bool32_t".} = distinct uint32
  XcbGlxContextTag* {.importc: "xcb_glx_context_tag_t".} = distinct uint32
  XcbGlxFloat32* {.importc: "xcb_glx_float32_t".} = cfloat
  XcbGlxFloat64* {.importc: "xcb_glx_float64_t".} = cdouble
  XcbGlxBadContextError* {.importc: "xcb_glx_bad_context_error_t".} = XcbGlxGenericError
  XcbGlxBadContextStateError* {.importc: "xcb_glx_bad_context_state_error_t".} = XcbGlxGenericError
  XcbGlxBadDrawableError* {.importc: "xcb_glx_bad_drawable_error_t".} = XcbGlxGenericError
  XcbGlxBadPixmapError* {.importc: "xcb_glx_bad_pixmap_error_t".} = XcbGlxGenericError
  XcbGlxBadContextTagError* {.importc: "xcb_glx_bad_context_tag_error_t".} = XcbGlxGenericError
  XcbGlxBadCurrentWindowError* {.importc: "xcb_glx_bad_current_window_error_t".} = XcbGlxGenericError
  XcbGlxBadRenderRequestError* {.importc: "xcb_glx_bad_render_request_error_t".} = XcbGlxGenericError
  XcbGlxBadLargeRequestError* {.importc: "xcb_glx_bad_large_request_error_t".} = XcbGlxGenericError
  XcbGlxUnsupportedPrivateRequestError* {.importc: "xcb_glx_unsupported_private_request_error_t".} = XcbGlxGenericError
  XcbGlxBadFbConfigError* {.importc: "xcb_glx_bad_fb_config_error_t".} = XcbGlxGenericError
  XcbGlxBadPbufferError* {.importc: "xcb_glx_bad_pbuffer_error_t".} = XcbGlxGenericError
  XcbGlxBadCurrentDrawableError* {.importc: "xcb_glx_bad_current_drawable_error_t".} = XcbGlxGenericError
  XcbGlxBadWindowError* {.importc: "xcb_glx_bad_window_error_t".} = XcbGlxGenericError
  XcbGlxGlxBadProfileArbError* {.importc: "xcb_glx_glx_bad_profile_arb_error_t".} = XcbGlxGenericError

  XcbGlxPixmapIterator* {.importc: "xcb_glx_pixmap_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxPixmap]
    rem*: cint
    index*: cint

  XcbGlxContextIterator* {.importc: "xcb_glx_context_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxContext]
    rem*: cint
    index*: cint

  XcbGlxPbufferIterator* {.importc: "xcb_glx_pbuffer_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxPbuffer]
    rem*: cint
    index*: cint

  XcbGlxWindowIterator* {.importc: "xcb_glx_window_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxWindow]
    rem*: cint
    index*: cint

  XcbGlxFbconfigIterator* {.importc: "xcb_glx_fbconfig_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxFbconfig]
    rem*: cint
    index*: cint

  XcbGlxDrawableIterator* {.importc: "xcb_glx_drawable_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxDrawable]
    rem*: cint
    index*: cint

  XcbGlxFloat32Iterator* {.importc: "xcb_glx_float32_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxFloat32]
    rem*: cint
    index*: cint

  XcbGlxFloat64Iterator* {.importc: "xcb_glx_float64_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxFloat64]
    rem*: cint
    index*: cint

  XcbGlxBool32Iterator* {.importc: "xcb_glx_bool32_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxBool32]
    rem*: cint
    index*: cint

  XcbGlxContextTagIterator* {.importc: "xcb_glx_context_tag_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbGlxContextTag]
    rem*: cint
    index*: cint

  XcbGlxGenericError* {.importc: "xcb_glx_generic_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    badValue* {.importc: "bad_value".}: uint32
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8
    pad0: array[21, uint8]

  XcbGlxPbufferClobberEvent* {.importc: "xcb_glx_pbuffer_clobber_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    eventType* {.importc: "event_type".}: uint16
    drawType* {.importc: "draw_type".}: uint16
    drawable*: XcbGlxDrawable
    bMask* {.importc: "b_mask".}: uint32
    auxBuffer* {.importc: "aux_buffer".}: uint16
    x*: uint16
    y*: uint16
    width*: uint16
    height*: uint16
    count*: uint16
    pad1: array[4, uint8]

  XcbGlxBufferSwapCompleteEvent* {.importc: "xcb_glx_buffer_swap_complete_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    eventType* {.importc: "event_type".}: uint16
    pad1: array[2, uint8]
    drawable*: XcbGlxDrawable
    ustHi* {.importc: "ust_hi".}: uint32
    ustLo* {.importc: "ust_lo".}: uint32
    mscHi* {.importc: "msc_hi".}: uint32
    mscLo* {.importc: "msc_lo".}: uint32
    sbc*: uint32

  XcbGlxPbcet* {.importc: "xcb_glx_pbcet_t".} = enum
    xcbGlxPbcetDamaged = 32791, xcbGlxPbcetSaved = 32792

  XcbGlxPbcdt* {.importc: "xcb_glx_pbcdt_t".} = enum
    xcbGlxPbcdtWindow = 32793, xcbGlxPbcdtPbuffer = 32794

  XcbGlxRenderRequest* {.importc: "xcb_glx_render_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxRenderLargeRequest* {.importc: "xcb_glx_render_large_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    requestNum* {.importc: "request_num".}: uint16
    requestTotal* {.importc: "request_total".}: uint16
    dataLen* {.importc: "data_len".}: uint32

  XcbGlxCreateContextRequest* {.importc: "xcb_glx_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext
    visual*: XcbVisualid
    screen*: uint32
    shareList* {.importc: "share_list".}: XcbGlxContext
    isDirect* {.importc: "is_direct".}: uint8
    pad0: array[3, uint8]

  XcbGlxDestroyContextRequest* {.importc: "xcb_glx_destroy_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext

  XcbGlxMakeCurrentCookie* {.importc: "xcb_glx_make_current_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxMakeCurrentRequest* {.importc: "xcb_glx_make_current_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbGlxDrawable
    context*: XcbGlxContext
    oldContextTag* {.importc: "old_context_tag".}: XcbGlxContextTag

  XcbGlxMakeCurrentReply* {.importc: "xcb_glx_make_current_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pad1: array[20, uint8]

  XcbGlxIsDirectCookie* {.importc: "xcb_glx_is_direct_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxIsDirectRequest* {.importc: "xcb_glx_is_direct_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext

  XcbGlxIsDirectReply* {.importc: "xcb_glx_is_direct_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    isDirect* {.importc: "is_direct".}: uint8
    pad1: array[23, uint8]

  XcbGlxQueryVersionCookie* {.importc: "xcb_glx_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxQueryVersionRequest* {.importc: "xcb_glx_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32

  XcbGlxQueryVersionReply* {.importc: "xcb_glx_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    pad1: array[16, uint8]

  XcbGlxWaitGlRequest* {.importc: "xcb_glx_wait_gl_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxWaitXRequest* {.importc: "xcb_glx_wait_x_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxCopyContextRequest* {.importc: "xcb_glx_copy_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    src*: XcbGlxContext
    dest*: XcbGlxContext
    mask*: uint32
    srcContextTag* {.importc: "src_context_tag".}: XcbGlxContextTag

  XcbGlxGc* {.importc: "xcb_glx_gc_t".} = enum
    xcbGlxGcGlCurrentBit = 1, xcbGlxGcGlPointBit = 2,
    xcbGlxGcGlLineBit = 4, xcbGlxGcGlPolygonBit = 8,
    xcbGlxGcGlPolygonStippleBit = 16, xcbGlxGcGlPixelModeBit = 32,
    xcbGlxGcGlLightingBit = 64, xcbGlxGcGlFogBit = 128,
    xcbGlxGcGlDepthBufferBit = 256, xcbGlxGcGlAccumBufferBit = 512,
    xcbGlxGcGlStencilBufferBit = 1024, xcbGlxGcGlViewportBit = 2048,
    xcbGlxGcGlTransformBit = 4096, xcbGlxGcGlEnableBit = 8192,
    xcbGlxGcGlColorBufferBit = 16384, xcbGlxGcGlHintBit = 32768,
    xcbGlxGcGlEvalBit = 65536, xcbGlxGcGlListBit = 131072,
    xcbGlxGcGlTextureBit = 262144, xcbGlxGcGlScissorBit = 524288,
    xcbGlxGcGlAllAttribBits = 16777215

  XcbGlxSwapBuffersRequest* {.importc: "xcb_glx_swap_buffers_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    drawable*: XcbGlxDrawable

  XcbGlxUseXFontRequest* {.importc: "xcb_glx_use_x_font_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    font*: XcbFont
    first*: uint32
    count*: uint32
    listBase* {.importc: "list_base".}: uint32

  XcbGlxCreateGlxPixmapRequest* {.importc: "xcb_glx_create_glx_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    visual*: XcbVisualid
    pixmap*: XcbPixmap
    glxPixmap* {.importc: "glx_pixmap".}: XcbGlxPixmap

  XcbGlxGetVisualConfigsCookie* {.importc: "xcb_glx_get_visual_configs_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetVisualConfigsRequest* {.importc: "xcb_glx_get_visual_configs_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbGlxGetVisualConfigsReply* {.importc: "xcb_glx_get_visual_configs_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numVisuals* {.importc: "num_visuals".}: uint32
    numProperties* {.importc: "num_properties".}: uint32
    pad1: array[16, uint8]

  XcbGlxDestroyGlxPixmapRequest* {.importc: "xcb_glx_destroy_glx_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glxPixmap* {.importc: "glx_pixmap".}: XcbGlxPixmap

  XcbGlxVendorPrivateRequest* {.importc: "xcb_glx_vendor_private_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    vendorCode* {.importc: "vendor_code".}: uint32
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxVendorPrivateWithReplyCookie* {.importc: "xcb_glx_vendor_private_with_reply_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxVendorPrivateWithReplyRequest* {.importc: "xcb_glx_vendor_private_with_reply_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    vendorCode* {.importc: "vendor_code".}: uint32
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxVendorPrivateWithReplyReply* {.importc: "xcb_glx_vendor_private_with_reply_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retval*: uint32
    data1*: array[24, uint8]

  XcbGlxQueryExtensionsStringCookie* {.importc: "xcb_glx_query_extensions_string_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxQueryExtensionsStringRequest* {.importc: "xcb_glx_query_extensions_string_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbGlxQueryExtensionsStringReply* {.importc: "xcb_glx_query_extensions_string_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    pad2: array[16, uint8]

  XcbGlxQueryServerStringCookie* {.importc: "xcb_glx_query_server_string_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxQueryServerStringRequest* {.importc: "xcb_glx_query_server_string_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    name*: uint32

  XcbGlxQueryServerStringReply* {.importc: "xcb_glx_query_server_string_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    strLen* {.importc: "str_len".}: uint32
    pad2: array[16, uint8]

  XcbGlxClientInfoRequest* {.importc: "xcb_glx_client_info_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    strLen* {.importc: "str_len".}: uint32

  XcbGlxGetFbConfigsCookie* {.importc: "xcb_glx_get_fb_configs_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetFbConfigsRequest* {.importc: "xcb_glx_get_fb_configs_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32

  XcbGlxGetFbConfigsReply* {.importc: "xcb_glx_get_fb_configs_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numFBConfigs* {.importc: "num_FB_configs".}: uint32
    numProperties* {.importc: "num_properties".}: uint32
    pad1: array[16, uint8]

  XcbGlxCreatePixmapRequest* {.importc: "xcb_glx_create_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    fbconfig*: XcbGlxFbconfig
    pixmap*: XcbPixmap
    glxPixmap* {.importc: "glx_pixmap".}: XcbGlxPixmap
    numAttribs* {.importc: "num_attribs".}: uint32

  XcbGlxDestroyPixmapRequest* {.importc: "xcb_glx_destroy_pixmap_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glxPixmap* {.importc: "glx_pixmap".}: XcbGlxPixmap

  XcbGlxCreateNewContextRequest* {.importc: "xcb_glx_create_new_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext
    fbconfig*: XcbGlxFbconfig
    screen*: uint32
    renderType* {.importc: "render_type".}: uint32
    shareList* {.importc: "share_list".}: XcbGlxContext
    isDirect* {.importc: "is_direct".}: uint8
    pad0: array[3, uint8]

  XcbGlxQueryContextCookie* {.importc: "xcb_glx_query_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxQueryContextRequest* {.importc: "xcb_glx_query_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext

  XcbGlxQueryContextReply* {.importc: "xcb_glx_query_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAttribs* {.importc: "num_attribs".}: uint32
    pad1: array[20, uint8]

  XcbGlxMakeContextCurrentCookie* {.importc: "xcb_glx_make_context_current_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxMakeContextCurrentRequest* {.importc: "xcb_glx_make_context_current_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    oldContextTag* {.importc: "old_context_tag".}: XcbGlxContextTag
    drawable*: XcbGlxDrawable
    readDrawable* {.importc: "read_drawable".}: XcbGlxDrawable
    context*: XcbGlxContext

  XcbGlxMakeContextCurrentReply* {.importc: "xcb_glx_make_context_current_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pad1: array[20, uint8]

  XcbGlxCreatePbufferRequest* {.importc: "xcb_glx_create_pbuffer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    fbconfig*: XcbGlxFbconfig
    pbuffer*: XcbGlxPbuffer
    numAttribs* {.importc: "num_attribs".}: uint32

  XcbGlxDestroyPbufferRequest* {.importc: "xcb_glx_destroy_pbuffer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    pbuffer*: XcbGlxPbuffer

  XcbGlxGetDrawableAttributesCookie* {.importc: "xcb_glx_get_drawable_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetDrawableAttributesRequest* {.importc: "xcb_glx_get_drawable_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbGlxDrawable

  XcbGlxGetDrawableAttributesReply* {.importc: "xcb_glx_get_drawable_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numAttribs* {.importc: "num_attribs".}: uint32
    pad1: array[20, uint8]

  XcbGlxChangeDrawableAttributesRequest* {.importc: "xcb_glx_change_drawable_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbGlxDrawable
    numAttribs* {.importc: "num_attribs".}: uint32

  XcbGlxCreateWindowRequest* {.importc: "xcb_glx_create_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    screen*: uint32
    fbconfig*: XcbGlxFbconfig
    window*: XcbWindow
    glxWindow* {.importc: "glx_window".}: XcbGlxWindow
    numAttribs* {.importc: "num_attribs".}: uint32

  XcbGlxDeleteWindowRequest* {.importc: "xcb_glx_delete_window_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    glxwindow*: XcbGlxWindow

  XcbGlxSetClientInfoArbRequest* {.importc: "xcb_glx_set_client_info_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    numVersions* {.importc: "num_versions".}: uint32
    glStrLen* {.importc: "gl_str_len".}: uint32
    glxStrLen* {.importc: "glx_str_len".}: uint32

  XcbGlxCreateContextAttribsArbRequest* {.importc: "xcb_glx_create_context_attribs_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbGlxContext
    fbconfig*: XcbGlxFbconfig
    screen*: uint32
    shareList* {.importc: "share_list".}: XcbGlxContext
    isDirect* {.importc: "is_direct".}: uint8
    pad0: array[3, uint8]
    numAttribs* {.importc: "num_attribs".}: uint32

  XcbGlxSetClientInfo2arbRequest* {.importc: "xcb_glx_set_client_info2arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint32
    minorVersion* {.importc: "minor_version".}: uint32
    numVersions* {.importc: "num_versions".}: uint32
    glStrLen* {.importc: "gl_str_len".}: uint32
    glxStrLen* {.importc: "glx_str_len".}: uint32

  XcbGlxNewListRequest* {.importc: "xcb_glx_new_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    list*: uint32
    mode*: uint32

  XcbGlxEndListRequest* {.importc: "xcb_glx_end_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxDeleteListsRequest* {.importc: "xcb_glx_delete_lists_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    list*: uint32
    range*: int32

  XcbGlxGenListsCookie* {.importc: "xcb_glx_gen_lists_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGenListsRequest* {.importc: "xcb_glx_gen_lists_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    range*: int32

  XcbGlxGenListsReply* {.importc: "xcb_glx_gen_lists_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: uint32

  XcbGlxFeedbackBufferRequest* {.importc: "xcb_glx_feedback_buffer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    size*: int32
    `type`*: int32

  XcbGlxSelectBufferRequest* {.importc: "xcb_glx_select_buffer_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    size*: int32

  XcbGlxRenderModeCookie* {.importc: "xcb_glx_render_mode_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxRenderModeRequest* {.importc: "xcb_glx_render_mode_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    mode*: uint32

  XcbGlxRenderModeReply* {.importc: "xcb_glx_render_mode_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: uint32
    n*: uint32
    newMode* {.importc: "new_mode".}: uint32
    pad1: array[12, uint8]

  XcbGlxRm* {.importc: "xcb_glx_rm_t".} = enum
    xcbGlxRmGlRender = 7168, xcbGlxRmGlFeedback = 7169,
    xcbGlxRmGlSelect = 7170

  XcbGlxFinishCookie* {.importc: "xcb_glx_finish_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxFinishRequest* {.importc: "xcb_glx_finish_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxFinishReply* {.importc: "xcb_glx_finish_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32

  XcbGlxPixelStorefRequest* {.importc: "xcb_glx_pixel_storef_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: uint32
    datum*: XcbGlxFloat32

  XcbGlxPixelStoreiRequest* {.importc: "xcb_glx_pixel_storei_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: uint32
    datum*: int32

  XcbGlxReadPixelsCookie* {.importc: "xcb_glx_read_pixels_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxReadPixelsRequest* {.importc: "xcb_glx_read_pixels_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    x*: int32
    y*: int32
    width*: int32
    height*: int32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8
    lsbFirst* {.importc: "lsb_first".}: uint8

  XcbGlxReadPixelsReply* {.importc: "xcb_glx_read_pixels_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxGetBooleanvCookie* {.importc: "xcb_glx_get_booleanv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetBooleanvRequest* {.importc: "xcb_glx_get_booleanv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: int32

  XcbGlxGetBooleanvReply* {.importc: "xcb_glx_get_booleanv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: uint8
    pad2: array[15, uint8]

  XcbGlxGetClipPlaneCookie* {.importc: "xcb_glx_get_clip_plane_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetClipPlaneRequest* {.importc: "xcb_glx_get_clip_plane_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    plane*: int32

  XcbGlxGetClipPlaneReply* {.importc: "xcb_glx_get_clip_plane_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxGetDoublevCookie* {.importc: "xcb_glx_get_doublev_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetDoublevRequest* {.importc: "xcb_glx_get_doublev_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: uint32

  XcbGlxGetDoublevReply* {.importc: "xcb_glx_get_doublev_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat64
    pad2: array[8, uint8]

  XcbGlxGetErrorCookie* {.importc: "xcb_glx_get_error_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetErrorRequest* {.importc: "xcb_glx_get_error_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxGetErrorReply* {.importc: "xcb_glx_get_error_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    error*: int32

  XcbGlxGetFloatvCookie* {.importc: "xcb_glx_get_floatv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetFloatvRequest* {.importc: "xcb_glx_get_floatv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: uint32

  XcbGlxGetFloatvReply* {.importc: "xcb_glx_get_floatv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetIntegervCookie* {.importc: "xcb_glx_get_integerv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetIntegervRequest* {.importc: "xcb_glx_get_integerv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    pname*: uint32

  XcbGlxGetIntegervReply* {.importc: "xcb_glx_get_integerv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetLightfvCookie* {.importc: "xcb_glx_get_lightfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetLightfvRequest* {.importc: "xcb_glx_get_lightfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    light*: uint32
    pname*: uint32

  XcbGlxGetLightfvReply* {.importc: "xcb_glx_get_lightfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetLightivCookie* {.importc: "xcb_glx_get_lightiv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetLightivRequest* {.importc: "xcb_glx_get_lightiv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    light*: uint32
    pname*: uint32

  XcbGlxGetLightivReply* {.importc: "xcb_glx_get_lightiv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetMapdvCookie* {.importc: "xcb_glx_get_mapdv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMapdvRequest* {.importc: "xcb_glx_get_mapdv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    query*: uint32

  XcbGlxGetMapdvReply* {.importc: "xcb_glx_get_mapdv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat64
    pad2: array[8, uint8]

  XcbGlxGetMapfvCookie* {.importc: "xcb_glx_get_mapfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMapfvRequest* {.importc: "xcb_glx_get_mapfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    query*: uint32

  XcbGlxGetMapfvReply* {.importc: "xcb_glx_get_mapfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetMapivCookie* {.importc: "xcb_glx_get_mapiv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMapivRequest* {.importc: "xcb_glx_get_mapiv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    query*: uint32

  XcbGlxGetMapivReply* {.importc: "xcb_glx_get_mapiv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetMaterialfvCookie* {.importc: "xcb_glx_get_materialfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMaterialfvRequest* {.importc: "xcb_glx_get_materialfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    face*: uint32
    pname*: uint32

  XcbGlxGetMaterialfvReply* {.importc: "xcb_glx_get_materialfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetMaterialivCookie* {.importc: "xcb_glx_get_materialiv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMaterialivRequest* {.importc: "xcb_glx_get_materialiv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    face*: uint32
    pname*: uint32

  XcbGlxGetMaterialivReply* {.importc: "xcb_glx_get_materialiv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetPixelMapfvCookie* {.importc: "xcb_glx_get_pixel_mapfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetPixelMapfvRequest* {.importc: "xcb_glx_get_pixel_mapfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    map*: uint32

  XcbGlxGetPixelMapfvReply* {.importc: "xcb_glx_get_pixel_mapfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetPixelMapuivCookie* {.importc: "xcb_glx_get_pixel_mapuiv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetPixelMapuivRequest* {.importc: "xcb_glx_get_pixel_mapuiv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    map*: uint32

  XcbGlxGetPixelMapuivReply* {.importc: "xcb_glx_get_pixel_mapuiv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: uint32
    pad2: array[12, uint8]

  XcbGlxGetPixelMapusvCookie* {.importc: "xcb_glx_get_pixel_mapusv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetPixelMapusvRequest* {.importc: "xcb_glx_get_pixel_mapusv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    map*: uint32

  XcbGlxGetPixelMapusvReply* {.importc: "xcb_glx_get_pixel_mapusv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: uint16
    pad2: array[16, uint8]

  XcbGlxGetPolygonStippleCookie* {.importc: "xcb_glx_get_polygon_stipple_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetPolygonStippleRequest* {.importc: "xcb_glx_get_polygon_stipple_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    lsbFirst* {.importc: "lsb_first".}: uint8

  XcbGlxGetPolygonStippleReply* {.importc: "xcb_glx_get_polygon_stipple_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxGetStringCookie* {.importc: "xcb_glx_get_string_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetStringRequest* {.importc: "xcb_glx_get_string_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    name*: uint32

  XcbGlxGetStringReply* {.importc: "xcb_glx_get_string_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    pad2: array[16, uint8]

  XcbGlxGetTexEnvfvCookie* {.importc: "xcb_glx_get_tex_envfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexEnvfvRequest* {.importc: "xcb_glx_get_tex_envfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetTexEnvfvReply* {.importc: "xcb_glx_get_tex_envfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetTexEnvivCookie* {.importc: "xcb_glx_get_tex_enviv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexEnvivRequest* {.importc: "xcb_glx_get_tex_enviv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetTexEnvivReply* {.importc: "xcb_glx_get_tex_enviv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetTexGendvCookie* {.importc: "xcb_glx_get_tex_gendv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexGendvRequest* {.importc: "xcb_glx_get_tex_gendv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    coord*: uint32
    pname*: uint32

  XcbGlxGetTexGendvReply* {.importc: "xcb_glx_get_tex_gendv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat64
    pad2: array[8, uint8]

  XcbGlxGetTexGenfvCookie* {.importc: "xcb_glx_get_tex_genfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexGenfvRequest* {.importc: "xcb_glx_get_tex_genfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    coord*: uint32
    pname*: uint32

  XcbGlxGetTexGenfvReply* {.importc: "xcb_glx_get_tex_genfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetTexGenivCookie* {.importc: "xcb_glx_get_tex_geniv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexGenivRequest* {.importc: "xcb_glx_get_tex_geniv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    coord*: uint32
    pname*: uint32

  XcbGlxGetTexGenivReply* {.importc: "xcb_glx_get_tex_geniv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetTexImageCookie* {.importc: "xcb_glx_get_tex_image_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexImageRequest* {.importc: "xcb_glx_get_tex_image_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    level*: int32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8

  XcbGlxGetTexImageReply* {.importc: "xcb_glx_get_tex_image_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    width*: int32
    height*: int32
    depth*: int32
    pad2: array[4, uint8]

  XcbGlxGetTexParameterfvCookie* {.importc: "xcb_glx_get_tex_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexParameterfvRequest* {.importc: "xcb_glx_get_tex_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetTexParameterfvReply* {.importc: "xcb_glx_get_tex_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetTexParameterivCookie* {.importc: "xcb_glx_get_tex_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexParameterivRequest* {.importc: "xcb_glx_get_tex_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetTexParameterivReply* {.importc: "xcb_glx_get_tex_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetTexLevelParameterfvCookie* {.importc: "xcb_glx_get_tex_level_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexLevelParameterfvRequest* {.importc: "xcb_glx_get_tex_level_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    level*: int32
    pname*: uint32

  XcbGlxGetTexLevelParameterfvReply* {.importc: "xcb_glx_get_tex_level_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetTexLevelParameterivCookie* {.importc: "xcb_glx_get_tex_level_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetTexLevelParameterivRequest* {.importc: "xcb_glx_get_tex_level_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    level*: int32
    pname*: uint32

  XcbGlxGetTexLevelParameterivReply* {.importc: "xcb_glx_get_tex_level_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxIsEnabledCookie* {.importc: "xcb_glx_is_enabled_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxIsEnabledRequest* {.importc: "xcb_glx_is_enabled_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    capability*: uint32

  XcbGlxIsEnabledReply* {.importc: "xcb_glx_is_enabled_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: XcbGlxBool32

  XcbGlxIsListCookie* {.importc: "xcb_glx_is_list_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxIsListRequest* {.importc: "xcb_glx_is_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    list*: uint32

  XcbGlxIsListReply* {.importc: "xcb_glx_is_list_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: XcbGlxBool32

  XcbGlxFlushRequest* {.importc: "xcb_glx_flush_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag

  XcbGlxAreTexturesResidentCookie* {.importc: "xcb_glx_are_textures_resident_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxAreTexturesResidentRequest* {.importc: "xcb_glx_are_textures_resident_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    n*: int32

  XcbGlxAreTexturesResidentReply* {.importc: "xcb_glx_are_textures_resident_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: XcbGlxBool32
    pad1: array[20, uint8]

  XcbGlxDeleteTexturesRequest* {.importc: "xcb_glx_delete_textures_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    n*: int32

  XcbGlxGenTexturesCookie* {.importc: "xcb_glx_gen_textures_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGenTexturesRequest* {.importc: "xcb_glx_gen_textures_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    n*: int32

  XcbGlxGenTexturesReply* {.importc: "xcb_glx_gen_textures_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxIsTextureCookie* {.importc: "xcb_glx_is_texture_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxIsTextureRequest* {.importc: "xcb_glx_is_texture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    texture*: uint32

  XcbGlxIsTextureReply* {.importc: "xcb_glx_is_texture_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: XcbGlxBool32

  XcbGlxGetColorTableCookie* {.importc: "xcb_glx_get_color_table_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetColorTableRequest* {.importc: "xcb_glx_get_color_table_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8

  XcbGlxGetColorTableReply* {.importc: "xcb_glx_get_color_table_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    width*: int32
    pad2: array[12, uint8]

  XcbGlxGetColorTableParameterfvCookie* {.importc: "xcb_glx_get_color_table_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetColorTableParameterfvRequest* {.importc: "xcb_glx_get_color_table_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetColorTableParameterfvReply* {.importc: "xcb_glx_get_color_table_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetColorTableParameterivCookie* {.importc: "xcb_glx_get_color_table_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetColorTableParameterivRequest* {.importc: "xcb_glx_get_color_table_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetColorTableParameterivReply* {.importc: "xcb_glx_get_color_table_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetConvolutionFilterCookie* {.importc: "xcb_glx_get_convolution_filter_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetConvolutionFilterRequest* {.importc: "xcb_glx_get_convolution_filter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8

  XcbGlxGetConvolutionFilterReply* {.importc: "xcb_glx_get_convolution_filter_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    width*: int32
    height*: int32
    pad2: array[8, uint8]

  XcbGlxGetConvolutionParameterfvCookie* {.importc: "xcb_glx_get_convolution_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetConvolutionParameterfvRequest* {.importc: "xcb_glx_get_convolution_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetConvolutionParameterfvReply* {.importc: "xcb_glx_get_convolution_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetConvolutionParameterivCookie* {.importc: "xcb_glx_get_convolution_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetConvolutionParameterivRequest* {.importc: "xcb_glx_get_convolution_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetConvolutionParameterivReply* {.importc: "xcb_glx_get_convolution_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetSeparableFilterCookie* {.importc: "xcb_glx_get_separable_filter_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetSeparableFilterRequest* {.importc: "xcb_glx_get_separable_filter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8

  XcbGlxGetSeparableFilterReply* {.importc: "xcb_glx_get_separable_filter_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    rowW* {.importc: "row_w".}: int32
    colH* {.importc: "col_h".}: int32
    pad2: array[8, uint8]

  XcbGlxGetHistogramCookie* {.importc: "xcb_glx_get_histogram_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetHistogramRequest* {.importc: "xcb_glx_get_histogram_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8
    reset*: uint8

  XcbGlxGetHistogramReply* {.importc: "xcb_glx_get_histogram_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    width*: int32
    pad2: array[12, uint8]

  XcbGlxGetHistogramParameterfvCookie* {.importc: "xcb_glx_get_histogram_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetHistogramParameterfvRequest* {.importc: "xcb_glx_get_histogram_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetHistogramParameterfvReply* {.importc: "xcb_glx_get_histogram_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetHistogramParameterivCookie* {.importc: "xcb_glx_get_histogram_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetHistogramParameterivRequest* {.importc: "xcb_glx_get_histogram_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetHistogramParameterivReply* {.importc: "xcb_glx_get_histogram_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetMinmaxCookie* {.importc: "xcb_glx_get_minmax_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMinmaxRequest* {.importc: "xcb_glx_get_minmax_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    format*: uint32
    `type`*: uint32
    swapBytes* {.importc: "swap_bytes".}: uint8
    reset*: uint8

  XcbGlxGetMinmaxReply* {.importc: "xcb_glx_get_minmax_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxGetMinmaxParameterfvCookie* {.importc: "xcb_glx_get_minmax_parameterfv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMinmaxParameterfvRequest* {.importc: "xcb_glx_get_minmax_parameterfv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetMinmaxParameterfvReply* {.importc: "xcb_glx_get_minmax_parameterfv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: XcbGlxFloat32
    pad2: array[12, uint8]

  XcbGlxGetMinmaxParameterivCookie* {.importc: "xcb_glx_get_minmax_parameteriv_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetMinmaxParameterivRequest* {.importc: "xcb_glx_get_minmax_parameteriv_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetMinmaxParameterivReply* {.importc: "xcb_glx_get_minmax_parameteriv_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetCompressedTexImageArbCookie* {.importc: "xcb_glx_get_compressed_tex_image_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetCompressedTexImageArbRequest* {.importc: "xcb_glx_get_compressed_tex_image_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    level*: int32

  XcbGlxGetCompressedTexImageArbReply* {.importc: "xcb_glx_get_compressed_tex_image_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[8, uint8]
    size*: int32
    pad2: array[12, uint8]

  XcbGlxDeleteQueriesArbRequest* {.importc: "xcb_glx_delete_queries_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    n*: int32

  XcbGlxGenQueriesArbCookie* {.importc: "xcb_glx_gen_queries_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGenQueriesArbRequest* {.importc: "xcb_glx_gen_queries_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    n*: int32

  XcbGlxGenQueriesArbReply* {.importc: "xcb_glx_gen_queries_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbGlxIsQueryArbCookie* {.importc: "xcb_glx_is_query_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxIsQueryArbRequest* {.importc: "xcb_glx_is_query_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    id*: uint32

  XcbGlxIsQueryArbReply* {.importc: "xcb_glx_is_query_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    retVal* {.importc: "ret_val".}: XcbGlxBool32

  XcbGlxGetQueryivArbCookie* {.importc: "xcb_glx_get_queryiv_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetQueryivArbRequest* {.importc: "xcb_glx_get_queryiv_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    target*: uint32
    pname*: uint32

  XcbGlxGetQueryivArbReply* {.importc: "xcb_glx_get_queryiv_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetQueryObjectivArbCookie* {.importc: "xcb_glx_get_query_objectiv_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetQueryObjectivArbRequest* {.importc: "xcb_glx_get_query_objectiv_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    id*: uint32
    pname*: uint32

  XcbGlxGetQueryObjectivArbReply* {.importc: "xcb_glx_get_query_objectiv_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: int32
    pad2: array[12, uint8]

  XcbGlxGetQueryObjectuivArbCookie* {.importc: "xcb_glx_get_query_objectuiv_arb_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbGlxGetQueryObjectuivArbRequest* {.importc: "xcb_glx_get_query_objectuiv_arb_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextTag* {.importc: "context_tag".}: XcbGlxContextTag
    id*: uint32
    pname*: uint32

  XcbGlxGetQueryObjectuivArbReply* {.importc: "xcb_glx_get_query_objectuiv_arb_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[4, uint8]
    n*: uint32
    datum*: uint32
    pad2: array[12, uint8]

{.push cdecl.}

proc next*(i: ptr XcbGlxPixmapIterator) {.importc: "xcb_glx_pixmap_next".}
proc iterEnd*(i: XcbGlxPixmapIterator): XcbGenericIterator {.importc: "xcb_glx_pixmap_end".}
proc next*(i: ptr XcbGlxContextIterator) {.importc: "xcb_glx_context_next".}
proc iterEnd*(i: XcbGlxContextIterator): XcbGenericIterator {.importc: "xcb_glx_context_end".}
proc next*(i: ptr XcbGlxPbufferIterator) {.importc: "xcb_glx_pbuffer_next".}
proc iterEnd*(i: XcbGlxPbufferIterator): XcbGenericIterator {.importc: "xcb_glx_pbuffer_end".}
proc next*(i: ptr XcbGlxWindowIterator) {.importc: "xcb_glx_window_next".}
proc iterEnd*(i: XcbGlxWindowIterator): XcbGenericIterator {.importc: "xcb_glx_window_end".}
proc next*(i: ptr XcbGlxFbconfigIterator) {.importc: "xcb_glx_fbconfig_next".}
proc iterEnd*(i: XcbGlxFbconfigIterator): XcbGenericIterator {.importc: "xcb_glx_fbconfig_end".}
proc next*(i: ptr XcbGlxDrawableIterator) {.importc: "xcb_glx_drawable_next".}
proc iterEnd*(i: XcbGlxDrawableIterator): XcbGenericIterator {.importc: "xcb_glx_drawable_end".}
proc next*(i: ptr XcbGlxFloat32Iterator) {.importc: "xcb_glx_float32_next".}
proc iterEnd*(i: XcbGlxFloat32Iterator): XcbGenericIterator {.importc: "xcb_glx_float32_end".}
proc next*(i: ptr XcbGlxFloat64Iterator) {.importc: "xcb_glx_float64_next".}
proc iterEnd*(i: XcbGlxFloat64Iterator): XcbGenericIterator {.importc: "xcb_glx_float64_end".}
proc next*(i: ptr XcbGlxBool32Iterator) {.importc: "xcb_glx_bool32_next".}
proc iterEnd*(i: XcbGlxBool32Iterator): XcbGenericIterator {.importc: "xcb_glx_bool32_end".}
proc next*(i: ptr XcbGlxContextTagIterator) {.importc: "xcb_glx_context_tag_next".}
proc iterEnd*(i: XcbGlxContextTagIterator): XcbGenericIterator {.importc: "xcb_glx_context_tag_end".}
proc renderSizeof*(buffer: pointer; dataLen: uint32): cint {.importc: "xcb_glx_render_sizeof".}
proc renderChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_render_checked".}
proc render*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_render".}
proc data*(R: ptr XcbGlxRenderRequest): ptr UncheckedArray[uint8] {.importc: "xcb_glx_render_data".}
proc dataLength*(R: ptr XcbGlxRenderRequest): cint {.importc: "xcb_glx_render_data_length".}
proc dataEnd*(R: ptr XcbGlxRenderRequest): XcbGenericIterator {.importc: "xcb_glx_render_data_end".}
proc xcbGlxRenderLargeSizeof*(buffer: pointer): cint {.importc: "xcb_glx_render_large_sizeof".}
proc renderLargeChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; requestNum: uint16; requestTotal: uint16; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_render_large_checked".}
proc renderLarge*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; requestNum: uint16; requestTotal: uint16; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_render_large".}
proc largeData*(R: ptr XcbGlxRenderLargeRequest): ptr UncheckedArray[uint8] {.importc: "xcb_glx_render_large_data".}
proc largeDataLength*(R: ptr XcbGlxRenderLargeRequest): cint {.importc: "xcb_glx_render_large_data_length".}
proc largeDataEnd*(R: ptr XcbGlxRenderLargeRequest): XcbGenericIterator {.importc: "xcb_glx_render_large_data_end".}
proc createGlxContextChecked*(c: ptr XcbConnection; context: XcbGlxContext; visual: XcbVisualid; screen: uint32; shareList: XcbGlxContext; isDirect: uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_create_context_checked".}
proc createGlxContext*(c: ptr XcbConnection; context: XcbGlxContext; visual: XcbVisualid; screen: uint32; shareList: XcbGlxContext; isDirect: uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_create_context".}
proc destroyChecked*(c: ptr XcbConnection; context: XcbGlxContext): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_context_checked".}
proc destroy*(c: ptr XcbConnection; context: XcbGlxContext): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_context".}
proc makeCurrent*(c: ptr XcbConnection; drawable: XcbGlxDrawable; context: XcbGlxContext; oldContextTag: XcbGlxContextTag): XcbGlxMakeCurrentCookie {.importc: "xcb_glx_make_current".}
proc makeCurrentUnchecked*(c: ptr XcbConnection; drawable: XcbGlxDrawable; context: XcbGlxContext; oldContextTag: XcbGlxContextTag): XcbGlxMakeCurrentCookie {.importc: "xcb_glx_make_current_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxMakeCurrentCookie; e: ptr ptr XcbGenericError): ptr XcbGlxMakeCurrentReply {.importc: "xcb_glx_make_current_reply".}
proc isDirect*(c: ptr XcbConnection; context: XcbGlxContext): XcbGlxIsDirectCookie {.importc: "xcb_glx_is_direct".}
proc isDirectUnchecked*(c: ptr XcbConnection; context: XcbGlxContext): XcbGlxIsDirectCookie {.importc: "xcb_glx_is_direct_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxIsDirectCookie; e: ptr ptr XcbGenericError): ptr XcbGlxIsDirectReply {.importc: "xcb_glx_is_direct_reply".}
proc glxQueryVersion*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbGlxQueryVersionCookie {.importc: "xcb_glx_query_version".}
proc glxQueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32): XcbGlxQueryVersionCookie {.importc: "xcb_glx_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbGlxQueryVersionReply {.importc: "xcb_glx_query_version_reply".}
proc waitGlChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_wait_gl_checked".}
proc waitGl*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_wait_gl".}
proc waitXChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_wait_x_checked".}
proc waitX*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_wait_x".}
proc copyContextChecked*(c: ptr XcbConnection; src: XcbGlxContext; dest: XcbGlxContext; mask: uint32; srcContextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_copy_context_checked".}
proc copyContext*(c: ptr XcbConnection; src: XcbGlxContext; dest: XcbGlxContext; mask: uint32; srcContextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_copy_context".}
proc swapBuffersChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; drawable: XcbGlxDrawable): XcbVoidCookie {.discardable, importc: "xcb_glx_swap_buffers_checked".}
proc swapBuffers*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; drawable: XcbGlxDrawable): XcbVoidCookie {.discardable, importc: "xcb_glx_swap_buffers".}
proc useXFontChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; font: XcbFont; first: uint32; count: uint32; listBase: uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_use_x_font_checked".}
proc useXFont*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; font: XcbFont; first: uint32; count: uint32; listBase: uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_use_x_font".}
proc createGlxPixmapChecked*(c: ptr XcbConnection; screen: uint32; visual: XcbVisualid; pixmap: XcbPixmap; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_create_glx_pixmap_checked".}
proc createGlxPixmap*(c: ptr XcbConnection; screen: uint32; visual: XcbVisualid; pixmap: XcbPixmap; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_create_glx_pixmap".}
proc getVisualConfigsSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_visual_configs_sizeof".}
proc getVisualConfigs*(c: ptr XcbConnection; screen: uint32): XcbGlxGetVisualConfigsCookie {.importc: "xcb_glx_get_visual_configs".}
proc getVisualConfigsUnchecked*(c: ptr XcbConnection; screen: uint32): XcbGlxGetVisualConfigsCookie {.importc: "xcb_glx_get_visual_configs_unchecked".}
proc propertyList*(R: ptr XcbGlxGetVisualConfigsReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_get_visual_configs_property_list".}
proc propertyListLength*(R: ptr XcbGlxGetVisualConfigsReply): cint {.importc: "xcb_glx_get_visual_configs_property_list_length".}
proc propertyListEnd*(R: ptr XcbGlxGetVisualConfigsReply): XcbGenericIterator {.importc: "xcb_glx_get_visual_configs_property_list_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetVisualConfigsCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetVisualConfigsReply {.importc: "xcb_glx_get_visual_configs_reply".}
proc destroyGlxPixmapChecked*(c: ptr XcbConnection; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_glx_pixmap_checked".}
proc destroyGlxPixmap*(c: ptr XcbConnection; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_glx_pixmap".}
proc xcbGlxVendorPrivateSizeof*(buffer: pointer; dataLen: uint32): cint {.importc: "xcb_glx_vendor_private_sizeof".}
proc vendorPrivateChecked*(c: ptr XcbConnection; vendorCode: uint32; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_vendor_private_checked".}
proc vendorPrivate*(c: ptr XcbConnection; vendorCode: uint32; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_vendor_private".}
proc data*(R: ptr XcbGlxVendorPrivateRequest): ptr UncheckedArray[uint8] {.importc: "xcb_glx_vendor_private_data".}
proc dataLength*(R: ptr XcbGlxVendorPrivateRequest): cint {.importc: "xcb_glx_vendor_private_data_length".}
proc dataEnd*(R: ptr XcbGlxVendorPrivateRequest): XcbGenericIterator {.importc: "xcb_glx_vendor_private_data_end".}
proc xcbGlxVendorPrivateWithReplySizeof*(buffer: pointer; dataLen: uint32): cint {.importc: "xcb_glx_vendor_private_with_reply_sizeof".}
proc reply*(c: ptr XcbConnection; vendorCode: uint32; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbGlxVendorPrivateWithReplyCookie {.importc: "xcb_glx_vendor_private_with_reply".}
proc vendorPrivateWithReplyUnchecked*(c: ptr XcbConnection; vendorCode: uint32; contextTag: XcbGlxContextTag; dataLen: uint32; data: ptr uint8): XcbGlxVendorPrivateWithReplyCookie {.importc: "xcb_glx_vendor_private_with_reply_unchecked".}
proc data2*(R: ptr XcbGlxVendorPrivateWithReplyReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_vendor_private_with_reply_data_2".}
proc data2Length*(R: ptr XcbGlxVendorPrivateWithReplyReply): cint {.importc: "xcb_glx_vendor_private_with_reply_data_2_length".}
proc data2End*(R: ptr XcbGlxVendorPrivateWithReplyReply): XcbGenericIterator {.importc: "xcb_glx_vendor_private_with_reply_data_2_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxVendorPrivateWithReplyCookie; e: ptr ptr XcbGenericError): ptr XcbGlxVendorPrivateWithReplyReply {.importc: "xcb_glx_vendor_private_with_reply_reply".}
proc queryExtensionsString*(c: ptr XcbConnection; screen: uint32): XcbGlxQueryExtensionsStringCookie {.importc: "xcb_glx_query_extensions_string".}
proc queryExtensionsStringUnchecked*(c: ptr XcbConnection; screen: uint32): XcbGlxQueryExtensionsStringCookie {.importc: "xcb_glx_query_extensions_string_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxQueryExtensionsStringCookie; e: ptr ptr XcbGenericError): ptr XcbGlxQueryExtensionsStringReply {.importc: "xcb_glx_query_extensions_string_reply".}
proc queryServerStringSizeof*(buffer: pointer): cint {.importc: "xcb_glx_query_server_string_sizeof".}
proc queryServerString*(c: ptr XcbConnection; screen: uint32; name: uint32): XcbGlxQueryServerStringCookie {.importc: "xcb_glx_query_server_string".}
proc queryServerStringUnchecked*(c: ptr XcbConnection; screen: uint32; name: uint32): XcbGlxQueryServerStringCookie {.importc: "xcb_glx_query_server_string_unchecked".}
proc string*(R: ptr XcbGlxQueryServerStringReply): ptr UncheckedArray[char] {.importc: "xcb_glx_query_server_string_string".}
proc stringLength*(R: ptr XcbGlxQueryServerStringReply): cint {.importc: "xcb_glx_query_server_string_string_length".}
proc stringEnd*(R: ptr XcbGlxQueryServerStringReply): XcbGenericIterator {.importc: "xcb_glx_query_server_string_string_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxQueryServerStringCookie; e: ptr ptr XcbGenericError): ptr XcbGlxQueryServerStringReply {.importc: "xcb_glx_query_server_string_reply".}
proc clientInfoSizeof*(buffer: pointer): cint {.importc: "xcb_glx_client_info_sizeof".}
proc clientInfoChecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; strLen: uint32; string: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_glx_client_info_checked".}
proc clientInfo*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; strLen: uint32; string: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_glx_client_info".}
proc string*(R: ptr XcbGlxClientInfoRequest): ptr UncheckedArray[char] {.importc: "xcb_glx_client_info_string".}
proc stringLength*(R: ptr XcbGlxClientInfoRequest): cint {.importc: "xcb_glx_client_info_string_length".}
proc stringEnd*(R: ptr XcbGlxClientInfoRequest): XcbGenericIterator {.importc: "xcb_glx_client_info_string_end".}
proc getFbConfigsSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_fb_configs_sizeof".}
proc getFbConfigs*(c: ptr XcbConnection; screen: uint32): XcbGlxGetFbConfigsCookie {.importc: "xcb_glx_get_fb_configs".}
proc getFbConfigsUnchecked*(c: ptr XcbConnection; screen: uint32): XcbGlxGetFbConfigsCookie {.importc: "xcb_glx_get_fb_configs_unchecked".}
proc propertyList*(R: ptr XcbGlxGetFbConfigsReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_get_fb_configs_property_list".}
proc propertyListLength*(R: ptr XcbGlxGetFbConfigsReply): cint {.importc: "xcb_glx_get_fb_configs_property_list_length".}
proc propertyListEnd*(R: ptr XcbGlxGetFbConfigsReply): XcbGenericIterator {.importc: "xcb_glx_get_fb_configs_property_list_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetFbConfigsCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetFbConfigsReply {.importc: "xcb_glx_get_fb_configs_reply".}
proc createPixmapSizeof*(buffer: pointer): cint {.importc: "xcb_glx_create_pixmap_sizeof".}
proc createPixmapChecked*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; pixmap: XcbPixmap; glxPixmap: XcbGlxPixmap; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_pixmap_checked".}
proc createPixmap*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; pixmap: XcbPixmap; glxPixmap: XcbGlxPixmap; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_pixmap".}
proc attribs*(R: ptr XcbGlxCreatePixmapRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_create_pixmap_attribs".}
proc attribsLength*(R: ptr XcbGlxCreatePixmapRequest): cint {.importc: "xcb_glx_create_pixmap_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxCreatePixmapRequest): XcbGenericIterator {.importc: "xcb_glx_create_pixmap_attribs_end".}
proc destroyChecked*(c: ptr XcbConnection; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_pixmap_checked".}
proc destroy*(c: ptr XcbConnection; glxPixmap: XcbGlxPixmap): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_pixmap".}
proc createNewContextChecked*(c: ptr XcbConnection; context: XcbGlxContext; fbconfig: XcbGlxFbconfig; screen: uint32; renderType: uint32; shareList: XcbGlxContext; isDirect: uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_create_new_context_checked".}
proc createNewContext*(c: ptr XcbConnection; context: XcbGlxContext; fbconfig: XcbGlxFbconfig; screen: uint32; renderType: uint32; shareList: XcbGlxContext; isDirect: uint8): XcbVoidCookie {.discardable, importc: "xcb_glx_create_new_context".}
proc queryContextSizeof*(buffer: pointer): cint {.importc: "xcb_glx_query_context_sizeof".}
proc query*(c: ptr XcbConnection; context: XcbGlxContext): XcbGlxQueryContextCookie {.importc: "xcb_glx_query_context".}
proc queryUnchecked*(c: ptr XcbConnection; context: XcbGlxContext): XcbGlxQueryContextCookie {.importc: "xcb_glx_query_context_unchecked".}
proc attribs*(R: ptr XcbGlxQueryContextReply): ptr uint32 {.importc: "xcb_glx_query_context_attribs".}
proc attribsLength*(R: ptr XcbGlxQueryContextReply): cint {.importc: "xcb_glx_query_context_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxQueryContextReply): XcbGenericIterator {.importc: "xcb_glx_query_context_attribs_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxQueryContextCookie; e: ptr ptr XcbGenericError): ptr XcbGlxQueryContextReply {.importc: "xcb_glx_query_context_reply".}
proc makeContextCurrent*(c: ptr XcbConnection; oldContextTag: XcbGlxContextTag; drawable: XcbGlxDrawable; readDrawable: XcbGlxDrawable; context: XcbGlxContext): XcbGlxMakeContextCurrentCookie {.importc: "xcb_glx_make_context_current".}
proc makeContextCurrentUnchecked*(c: ptr XcbConnection; oldContextTag: XcbGlxContextTag; drawable: XcbGlxDrawable; readDrawable: XcbGlxDrawable; context: XcbGlxContext): XcbGlxMakeContextCurrentCookie {.importc: "xcb_glx_make_context_current_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxMakeContextCurrentCookie; e: ptr ptr XcbGenericError): ptr XcbGlxMakeContextCurrentReply {.importc: "xcb_glx_make_context_current_reply".}
proc createPbufferSizeof*(buffer: pointer): cint {.importc: "xcb_glx_create_pbuffer_sizeof".}
proc createPbufferChecked*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; pbuffer: XcbGlxPbuffer; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_pbuffer_checked".}
proc createPbuffer*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; pbuffer: XcbGlxPbuffer; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_pbuffer".}
proc attribs*(R: ptr XcbGlxCreatePbufferRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_create_pbuffer_attribs".}
proc attribsLength*(R: ptr XcbGlxCreatePbufferRequest): cint {.importc: "xcb_glx_create_pbuffer_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxCreatePbufferRequest): XcbGenericIterator {.importc: "xcb_glx_create_pbuffer_attribs_end".}
proc destroyChecked*(c: ptr XcbConnection; pbuffer: XcbGlxPbuffer): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_pbuffer_checked".}
proc destroy*(c: ptr XcbConnection; pbuffer: XcbGlxPbuffer): XcbVoidCookie {.discardable, importc: "xcb_glx_destroy_pbuffer".}
proc getDrawableAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_drawable_attributes_sizeof".}
proc getAttributes*(c: ptr XcbConnection; drawable: XcbGlxDrawable): XcbGlxGetDrawableAttributesCookie {.importc: "xcb_glx_get_drawable_attributes".}
proc getAttributesUnchecked*(c: ptr XcbConnection; drawable: XcbGlxDrawable): XcbGlxGetDrawableAttributesCookie {.importc: "xcb_glx_get_drawable_attributes_unchecked".}
proc attribs*(R: ptr XcbGlxGetDrawableAttributesReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_get_drawable_attributes_attribs".}
proc attribsLength*(R: ptr XcbGlxGetDrawableAttributesReply): cint {.importc: "xcb_glx_get_drawable_attributes_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxGetDrawableAttributesReply): XcbGenericIterator {.importc: "xcb_glx_get_drawable_attributes_attribs_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetDrawableAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetDrawableAttributesReply {.importc: "xcb_glx_get_drawable_attributes_reply".}
proc changeDrawableAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_glx_change_drawable_attributes_sizeof".}
proc changeAttributesChecked*(c: ptr XcbConnection; drawable: XcbGlxDrawable; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_change_drawable_attributes_checked".}
proc changeAttributes*(c: ptr XcbConnection; drawable: XcbGlxDrawable; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_change_drawable_attributes".}
proc attribs*(R: ptr XcbGlxChangeDrawableAttributesRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_change_drawable_attributes_attribs".}
proc attribsLength*(R: ptr XcbGlxChangeDrawableAttributesRequest): cint {.importc: "xcb_glx_change_drawable_attributes_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxChangeDrawableAttributesRequest): XcbGenericIterator {.importc: "xcb_glx_change_drawable_attributes_attribs_end".}
proc createWindowSizeof*(buffer: pointer): cint {.importc: "xcb_glx_create_window_sizeof".}
proc createWindowChecked*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; window: XcbWindow; glxWindow: XcbGlxWindow; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_window_checked".}
proc createWindow*(c: ptr XcbConnection; screen: uint32; fbconfig: XcbGlxFbconfig; window: XcbWindow; glxWindow: XcbGlxWindow; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_window".}
proc attribs*(R: ptr XcbGlxCreateWindowRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_create_window_attribs".}
proc attribsLength*(R: ptr XcbGlxCreateWindowRequest): cint {.importc: "xcb_glx_create_window_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxCreateWindowRequest): XcbGenericIterator {.importc: "xcb_glx_create_window_attribs_end".}
proc deleteChecked*(c: ptr XcbConnection; glxwindow: XcbGlxWindow): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_window_checked".}
proc delete*(c: ptr XcbConnection; glxwindow: XcbGlxWindow): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_window".}
proc SetClientInfoArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_set_client_info_arb_sizeof".}
proc bGlxSetClientInfoArbChecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; numVersions: uint32; glStrLen: uint32; glxStrLen: uint32; glVersions: ptr uint32; glExtensionString: cstring; glxExtensionString: cstring): XcbVoidCookie {.discardable, importc: "xcb_glx_set_client_info_arb_checked".}
proc bGlxSetClientInfoArb*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; numVersions: uint32; glStrLen: uint32; glxStrLen: uint32; glVersions: ptr uint32; glExtensionString: cstring; glxExtensionString: cstring): XcbVoidCookie {.discardable, importc: "xcb_glx_set_client_info_arb".}
proc glVersions*(R: ptr XcbGlxSetClientInfoArbRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_set_client_info_arb_gl_versions".}
proc glVersionsLength*(R: ptr XcbGlxSetClientInfoArbRequest): cint {.importc: "xcb_glx_set_client_info_arb_gl_versions_length".}
proc glVersionsEnd*(R: ptr XcbGlxSetClientInfoArbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_arb_gl_versions_end".}
proc glExtensionString*(R: ptr XcbGlxSetClientInfoArbRequest): ptr UncheckedArray[char] {.importc: "xcb_glx_set_client_info_arb_gl_extension_string".}
proc glExtensionStringLength*(R: ptr XcbGlxSetClientInfoArbRequest): cint {.importc: "xcb_glx_set_client_info_arb_gl_extension_string_length".}
proc glExtensionStringEnd*(R: ptr XcbGlxSetClientInfoArbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_arb_gl_extension_string_end".}
proc glxExtensionString*(R: ptr XcbGlxSetClientInfoArbRequest): ptr UncheckedArray[char] {.importc: "xcb_glx_set_client_info_arb_glx_extension_string".}
proc glxExtensionStringLength*(R: ptr XcbGlxSetClientInfoArbRequest): cint {.importc: "xcb_glx_set_client_info_arb_glx_extension_string_length".}
proc glxExtensionStringEnd*(R: ptr XcbGlxSetClientInfoArbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_arb_glx_extension_string_end".}
proc createContextAttribsArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_create_context_attribs_arb_sizeof".}
proc createAttribsArbChecked*(c: ptr XcbConnection; context: XcbGlxContext; fbconfig: XcbGlxFbconfig; screen: uint32; shareList: XcbGlxContext; isDirect: uint8; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_context_attribs_arb_checked".}
proc createAttribsArb*(c: ptr XcbConnection; context: XcbGlxContext; fbconfig: XcbGlxFbconfig; screen: uint32; shareList: XcbGlxContext; isDirect: uint8; numAttribs: uint32; attribs: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_create_context_attribs_arb".}
proc attribs*(R: ptr XcbGlxCreateContextAttribsArbRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_create_context_attribs_arb_attribs".}
proc attribsLength*(R: ptr XcbGlxCreateContextAttribsArbRequest): cint {.importc: "xcb_glx_create_context_attribs_arb_attribs_length".}
proc attribsEnd*(R: ptr XcbGlxCreateContextAttribsArbRequest): XcbGenericIterator {.importc: "xcb_glx_create_context_attribs_arb_attribs_end".}
proc setClientInfo2arbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_set_client_info_2arb_sizeof".}
proc setClientInfo2arbChecked*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; numVersions: uint32; glStrLen: uint32; glxStrLen: uint32; glVersions: ptr uint32; glExtensionString: cstring; glxExtensionString: cstring): XcbVoidCookie {.discardable, importc: "xcb_glx_set_client_info_2arb_checked".}
proc setClientInfo2arb*(c: ptr XcbConnection; majorVersion: uint32; minorVersion: uint32; numVersions: uint32; glStrLen: uint32; glxStrLen: uint32; glVersions: ptr uint32; glExtensionString: cstring; glxExtensionString: cstring): XcbVoidCookie {.discardable, importc: "xcb_glx_set_client_info_2arb".}
proc glVersions*(R: ptr XcbGlxSetClientInfo2arbRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_set_client_info_2arb_gl_versions".}
proc glVersionsLength*(R: ptr XcbGlxSetClientInfo2arbRequest): cint {.importc: "xcb_glx_set_client_info_2arb_gl_versions_length".}
proc glVersionsEnd*(R: ptr XcbGlxSetClientInfo2arbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_2arb_gl_versions_end".}
proc glExtensionString*(R: ptr XcbGlxSetClientInfo2arbRequest): ptr UncheckedArray[char] {.importc: "xcb_glx_set_client_info_2arb_gl_extension_string".}
proc glExtensionStringLength*(R: ptr XcbGlxSetClientInfo2arbRequest): cint {.importc: "xcb_glx_set_client_info_2arb_gl_extension_string_length".}
proc glExtensionStringEnd*(R: ptr XcbGlxSetClientInfo2arbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_2arb_gl_extension_string_end".}
proc glxExtensionString*(R: ptr XcbGlxSetClientInfo2arbRequest): ptr UncheckedArray[char] {.importc: "xcb_glx_set_client_info_2arb_glx_extension_string".}
proc glxExtensionStringLength*(R: ptr XcbGlxSetClientInfo2arbRequest): cint {.importc: "xcb_glx_set_client_info_2arb_glx_extension_string_length".}
proc glxExtensionStringEnd*(R: ptr XcbGlxSetClientInfo2arbRequest): XcbGenericIterator {.importc: "xcb_glx_set_client_info_2arb_glx_extension_string_end".}
proc newListChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32; mode: uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_new_list_checked".}
proc newList*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32; mode: uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_new_list".}
proc endListChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_end_list_checked".}
proc endList*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_end_list".}
proc deleteListsChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32; range: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_lists_checked".}
proc deleteLists*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32; range: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_lists".}
proc genLists*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; range: int32): XcbGlxGenListsCookie {.importc: "xcb_glx_gen_lists".}
proc genListsUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; range: int32): XcbGlxGenListsCookie {.importc: "xcb_glx_gen_lists_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGenListsCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGenListsReply {.importc: "xcb_glx_gen_lists_reply".}
proc feedbackBufferChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; size: int32; `type`: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_feedback_buffer_checked".}
proc feedbackBuffer*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; size: int32; `type`: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_feedback_buffer".}
proc selectBufferChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; size: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_select_buffer_checked".}
proc selectBuffer*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; size: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_select_buffer".}
proc renderModeSizeof*(buffer: pointer): cint {.importc: "xcb_glx_render_mode_sizeof".}
proc renderMode*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; mode: uint32): XcbGlxRenderModeCookie {.importc: "xcb_glx_render_mode".}
proc renderModeUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; mode: uint32): XcbGlxRenderModeCookie {.importc: "xcb_glx_render_mode_unchecked".}
proc data*(R: ptr XcbGlxRenderModeReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_render_mode_data".}
proc dataLength*(R: ptr XcbGlxRenderModeReply): cint {.importc: "xcb_glx_render_mode_data_length".}
proc dataEnd*(R: ptr XcbGlxRenderModeReply): XcbGenericIterator {.importc: "xcb_glx_render_mode_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxRenderModeCookie; e: ptr ptr XcbGenericError): ptr XcbGlxRenderModeReply {.importc: "xcb_glx_render_mode_reply".}
proc finish*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbGlxFinishCookie {.importc: "xcb_glx_finish".}
proc finishUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbGlxFinishCookie {.importc: "xcb_glx_finish_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxFinishCookie; e: ptr ptr XcbGenericError): ptr XcbGlxFinishReply {.importc: "xcb_glx_finish_reply".}
proc pixelStorefChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32; datum: XcbGlxFloat32): XcbVoidCookie {.discardable, importc: "xcb_glx_pixel_storef_checked".}
proc pixelStoref*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32; datum: XcbGlxFloat32): XcbVoidCookie {.discardable, importc: "xcb_glx_pixel_storef".}
proc pixelStoreiChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32; datum: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_pixel_storei_checked".}
proc pixelStorei*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32; datum: int32): XcbVoidCookie {.discardable, importc: "xcb_glx_pixel_storei".}
proc readPixelsSizeof*(buffer: pointer): cint {.importc: "xcb_glx_read_pixels_sizeof".}
proc readPixels*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; x: int32; y: int32; width: int32; height: int32; format: uint32; `type`: uint32; swapBytes: uint8; lsbFirst: uint8): XcbGlxReadPixelsCookie {.importc: "xcb_glx_read_pixels".}
proc readPixelsUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; x: int32; y: int32; width: int32; height: int32; format: uint32; `type`: uint32; swapBytes: uint8; lsbFirst: uint8): XcbGlxReadPixelsCookie {.importc: "xcb_glx_read_pixels_unchecked".}
proc data*(R: ptr XcbGlxReadPixelsReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_read_pixels_data".}
proc dataLength*(R: ptr XcbGlxReadPixelsReply): cint {.importc: "xcb_glx_read_pixels_data_length".}
proc dataEnd*(R: ptr XcbGlxReadPixelsReply): XcbGenericIterator {.importc: "xcb_glx_read_pixels_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxReadPixelsCookie; e: ptr ptr XcbGenericError): ptr XcbGlxReadPixelsReply {.importc: "xcb_glx_read_pixels_reply".}
proc getBooleanvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_booleanv_sizeof".}
proc getBooleanv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: int32): XcbGlxGetBooleanvCookie {.importc: "xcb_glx_get_booleanv".}
proc getBooleanvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: int32): XcbGlxGetBooleanvCookie {.importc: "xcb_glx_get_booleanv_unchecked".}
proc data*(R: ptr XcbGlxGetBooleanvReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_booleanv_data".}
proc dataLength*(R: ptr XcbGlxGetBooleanvReply): cint {.importc: "xcb_glx_get_booleanv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetBooleanvReply): XcbGenericIterator {.importc: "xcb_glx_get_booleanv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetBooleanvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetBooleanvReply {.importc: "xcb_glx_get_booleanv_reply".}
proc getClipPlaneSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_clip_plane_sizeof".}
proc getClipPlane*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; plane: int32): XcbGlxGetClipPlaneCookie {.importc: "xcb_glx_get_clip_plane".}
proc getClipPlaneUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; plane: int32): XcbGlxGetClipPlaneCookie {.importc: "xcb_glx_get_clip_plane_unchecked".}
proc data*(R: ptr XcbGlxGetClipPlaneReply): ptr UncheckedArray[XcbGlxFloat64] {.importc: "xcb_glx_get_clip_plane_data".}
proc dataLength*(R: ptr XcbGlxGetClipPlaneReply): cint {.importc: "xcb_glx_get_clip_plane_data_length".}
proc dataEnd*(R: ptr XcbGlxGetClipPlaneReply): XcbGenericIterator {.importc: "xcb_glx_get_clip_plane_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetClipPlaneCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetClipPlaneReply {.importc: "xcb_glx_get_clip_plane_reply".}
proc getDoublevSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_doublev_sizeof".}
proc getDoublev*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetDoublevCookie {.importc: "xcb_glx_get_doublev".}
proc getDoublevUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetDoublevCookie {.importc: "xcb_glx_get_doublev_unchecked".}
proc data*(R: ptr XcbGlxGetDoublevReply): ptr UncheckedArray[XcbGlxFloat64] {.importc: "xcb_glx_get_doublev_data".}
proc dataLength*(R: ptr XcbGlxGetDoublevReply): cint {.importc: "xcb_glx_get_doublev_data_length".}
proc dataEnd*(R: ptr XcbGlxGetDoublevReply): XcbGenericIterator {.importc: "xcb_glx_get_doublev_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetDoublevCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetDoublevReply {.importc: "xcb_glx_get_doublev_reply".}
proc getError*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbGlxGetErrorCookie {.importc: "xcb_glx_get_error".}
proc getErrorUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbGlxGetErrorCookie {.importc: "xcb_glx_get_error_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetErrorCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetErrorReply {.importc: "xcb_glx_get_error_reply".}
proc getFloatvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_floatv_sizeof".}
proc getFloatv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetFloatvCookie {.importc: "xcb_glx_get_floatv".}
proc getFloatvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetFloatvCookie {.importc: "xcb_glx_get_floatv_unchecked".}
proc data*(R: ptr XcbGlxGetFloatvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_floatv_data".}
proc dataLength*(R: ptr XcbGlxGetFloatvReply): cint {.importc: "xcb_glx_get_floatv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetFloatvReply): XcbGenericIterator {.importc: "xcb_glx_get_floatv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetFloatvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetFloatvReply {.importc: "xcb_glx_get_floatv_reply".}
proc getIntegervSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_integerv_sizeof".}
proc getIntegerv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetIntegervCookie {.importc: "xcb_glx_get_integerv".}
proc getIntegervUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; pname: uint32): XcbGlxGetIntegervCookie {.importc: "xcb_glx_get_integerv_unchecked".}
proc data*(R: ptr XcbGlxGetIntegervReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_integerv_data".}
proc dataLength*(R: ptr XcbGlxGetIntegervReply): cint {.importc: "xcb_glx_get_integerv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetIntegervReply): XcbGenericIterator {.importc: "xcb_glx_get_integerv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetIntegervCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetIntegervReply {.importc: "xcb_glx_get_integerv_reply".}
proc getLightfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_lightfv_sizeof".}
proc getLightfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; light: uint32; pname: uint32): XcbGlxGetLightfvCookie {.importc: "xcb_glx_get_lightfv".}
proc getLightfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; light: uint32; pname: uint32): XcbGlxGetLightfvCookie {.importc: "xcb_glx_get_lightfv_unchecked".}
proc data*(R: ptr XcbGlxGetLightfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_lightfv_data".}
proc dataLength*(R: ptr XcbGlxGetLightfvReply): cint {.importc: "xcb_glx_get_lightfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetLightfvReply): XcbGenericIterator {.importc: "xcb_glx_get_lightfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetLightfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetLightfvReply {.importc: "xcb_glx_get_lightfv_reply".}
proc getLightivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_lightiv_sizeof".}
proc getLightiv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; light: uint32; pname: uint32): XcbGlxGetLightivCookie {.importc: "xcb_glx_get_lightiv".}
proc getLightivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; light: uint32; pname: uint32): XcbGlxGetLightivCookie {.importc: "xcb_glx_get_lightiv_unchecked".}
proc data*(R: ptr XcbGlxGetLightivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_lightiv_data".}
proc dataLength*(R: ptr XcbGlxGetLightivReply): cint {.importc: "xcb_glx_get_lightiv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetLightivReply): XcbGenericIterator {.importc: "xcb_glx_get_lightiv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetLightivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetLightivReply {.importc: "xcb_glx_get_lightiv_reply".}
proc getMapdvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_mapdv_sizeof".}
proc getMapdv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapdvCookie {.importc: "xcb_glx_get_mapdv".}
proc getMapdvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapdvCookie {.importc: "xcb_glx_get_mapdv_unchecked".}
proc data*(R: ptr XcbGlxGetMapdvReply): ptr UncheckedArray[XcbGlxFloat64] {.importc: "xcb_glx_get_mapdv_data".}
proc dataLength*(R: ptr XcbGlxGetMapdvReply): cint {.importc: "xcb_glx_get_mapdv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMapdvReply): XcbGenericIterator {.importc: "xcb_glx_get_mapdv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMapdvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMapdvReply {.importc: "xcb_glx_get_mapdv_reply".}
proc getMapfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_mapfv_sizeof".}
proc getMapfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapfvCookie {.importc: "xcb_glx_get_mapfv".}
proc getMapfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapfvCookie {.importc: "xcb_glx_get_mapfv_unchecked".}
proc data*(R: ptr XcbGlxGetMapfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_mapfv_data".}
proc dataLength*(R: ptr XcbGlxGetMapfvReply): cint {.importc: "xcb_glx_get_mapfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMapfvReply): XcbGenericIterator {.importc: "xcb_glx_get_mapfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMapfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMapfvReply {.importc: "xcb_glx_get_mapfv_reply".}
proc getMapivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_mapiv_sizeof".}
proc getMapiv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapivCookie {.importc: "xcb_glx_get_mapiv".}
proc getMapivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; query: uint32): XcbGlxGetMapivCookie {.importc: "xcb_glx_get_mapiv_unchecked".}
proc data*(R: ptr XcbGlxGetMapivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_mapiv_data".}
proc dataLength*(R: ptr XcbGlxGetMapivReply): cint {.importc: "xcb_glx_get_mapiv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMapivReply): XcbGenericIterator {.importc: "xcb_glx_get_mapiv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMapivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMapivReply {.importc: "xcb_glx_get_mapiv_reply".}
proc getMaterialfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_materialfv_sizeof".}
proc getMaterialfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; face: uint32; pname: uint32): XcbGlxGetMaterialfvCookie {.importc: "xcb_glx_get_materialfv".}
proc getMaterialfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; face: uint32; pname: uint32): XcbGlxGetMaterialfvCookie {.importc: "xcb_glx_get_materialfv_unchecked".}
proc data*(R: ptr XcbGlxGetMaterialfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_materialfv_data".}
proc dataLength*(R: ptr XcbGlxGetMaterialfvReply): cint {.importc: "xcb_glx_get_materialfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMaterialfvReply): XcbGenericIterator {.importc: "xcb_glx_get_materialfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMaterialfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMaterialfvReply {.importc: "xcb_glx_get_materialfv_reply".}
proc getMaterialivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_materialiv_sizeof".}
proc getMaterialiv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; face: uint32; pname: uint32): XcbGlxGetMaterialivCookie {.importc: "xcb_glx_get_materialiv".}
proc getMaterialivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; face: uint32; pname: uint32): XcbGlxGetMaterialivCookie {.importc: "xcb_glx_get_materialiv_unchecked".}
proc data*(R: ptr XcbGlxGetMaterialivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_materialiv_data".}
proc dataLength*(R: ptr XcbGlxGetMaterialivReply): cint {.importc: "xcb_glx_get_materialiv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMaterialivReply): XcbGenericIterator {.importc: "xcb_glx_get_materialiv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMaterialivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMaterialivReply {.importc: "xcb_glx_get_materialiv_reply".}
proc getPixelMapfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_pixel_mapfv_sizeof".}
proc getPixelMapfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapfvCookie {.importc: "xcb_glx_get_pixel_mapfv".}
proc getPixelMapfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapfvCookie {.importc: "xcb_glx_get_pixel_mapfv_unchecked".}
proc data*(R: ptr XcbGlxGetPixelMapfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_pixel_mapfv_data".}
proc dataLength*(R: ptr XcbGlxGetPixelMapfvReply): cint {.importc: "xcb_glx_get_pixel_mapfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetPixelMapfvReply): XcbGenericIterator {.importc: "xcb_glx_get_pixel_mapfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetPixelMapfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetPixelMapfvReply {.importc: "xcb_glx_get_pixel_mapfv_reply".}
proc getPixelMapuivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_pixel_mapuiv_sizeof".}
proc getPixelMapuiv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapuivCookie {.importc: "xcb_glx_get_pixel_mapuiv".}
proc getPixelMapuivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapuivCookie {.importc: "xcb_glx_get_pixel_mapuiv_unchecked".}
proc data*(R: ptr XcbGlxGetPixelMapuivReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_get_pixel_mapuiv_data".}
proc dataLength*(R: ptr XcbGlxGetPixelMapuivReply): cint {.importc: "xcb_glx_get_pixel_mapuiv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetPixelMapuivReply): XcbGenericIterator {.importc: "xcb_glx_get_pixel_mapuiv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetPixelMapuivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetPixelMapuivReply {.importc: "xcb_glx_get_pixel_mapuiv_reply".}
proc getPixelMapusvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_pixel_mapusv_sizeof".}
proc getPixelMapusv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapusvCookie {.importc: "xcb_glx_get_pixel_mapusv".}
proc getPixelMapusvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; map: uint32): XcbGlxGetPixelMapusvCookie {.importc: "xcb_glx_get_pixel_mapusv_unchecked".}
proc data*(R: ptr XcbGlxGetPixelMapusvReply): ptr UncheckedArray[uint16] {.importc: "xcb_glx_get_pixel_mapusv_data".}
proc dataLength*(R: ptr XcbGlxGetPixelMapusvReply): cint {.importc: "xcb_glx_get_pixel_mapusv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetPixelMapusvReply): XcbGenericIterator {.importc: "xcb_glx_get_pixel_mapusv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetPixelMapusvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetPixelMapusvReply {.importc: "xcb_glx_get_pixel_mapusv_reply".}
proc getPolygonStippleSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_polygon_stipple_sizeof".}
proc getPolygonStipple*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; lsbFirst: uint8): XcbGlxGetPolygonStippleCookie {.importc: "xcb_glx_get_polygon_stipple".}
proc getPolygonStippleUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; lsbFirst: uint8): XcbGlxGetPolygonStippleCookie {.importc: "xcb_glx_get_polygon_stipple_unchecked".}
proc data*(R: ptr XcbGlxGetPolygonStippleReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_polygon_stipple_data".}
proc dataLength*(R: ptr XcbGlxGetPolygonStippleReply): cint {.importc: "xcb_glx_get_polygon_stipple_data_length".}
proc dataEnd*(R: ptr XcbGlxGetPolygonStippleReply): XcbGenericIterator {.importc: "xcb_glx_get_polygon_stipple_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetPolygonStippleCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetPolygonStippleReply {.importc: "xcb_glx_get_polygon_stipple_reply".}
proc getStringSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_string_sizeof".}
proc getString*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; name: uint32): XcbGlxGetStringCookie {.importc: "xcb_glx_get_string".}
proc getStringUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; name: uint32): XcbGlxGetStringCookie {.importc: "xcb_glx_get_string_unchecked".}
proc string*(R: ptr XcbGlxGetStringReply): ptr UncheckedArray[char] {.importc: "xcb_glx_get_string_string".}
proc stringLength*(R: ptr XcbGlxGetStringReply): cint {.importc: "xcb_glx_get_string_string_length".}
proc stringEnd*(R: ptr XcbGlxGetStringReply): XcbGenericIterator {.importc: "xcb_glx_get_string_string_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetStringCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetStringReply {.importc: "xcb_glx_get_string_reply".}
proc getTexEnvfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_envfv_sizeof".}
proc getTexEnvfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexEnvfvCookie {.importc: "xcb_glx_get_tex_envfv".}
proc getTexEnvfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexEnvfvCookie {.importc: "xcb_glx_get_tex_envfv_unchecked".}
proc data*(R: ptr XcbGlxGetTexEnvfvReply): ptr XcbGlxFloat32 {.importc: "xcb_glx_get_tex_envfv_data".}
proc dataLength*(R: ptr XcbGlxGetTexEnvfvReply): cint {.importc: "xcb_glx_get_tex_envfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexEnvfvReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_envfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexEnvfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexEnvfvReply {.importc: "xcb_glx_get_tex_envfv_reply".}
proc getTexEnvivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_enviv_sizeof".}
proc getTexEnviv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexEnvivCookie {.importc: "xcb_glx_get_tex_enviv".}
proc getTexEnvivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexEnvivCookie {.importc: "xcb_glx_get_tex_enviv_unchecked".}
proc data*(R: ptr XcbGlxGetTexEnvivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_tex_enviv_data".}
proc dataLength*(R: ptr XcbGlxGetTexEnvivReply): cint {.importc: "xcb_glx_get_tex_enviv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexEnvivReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_enviv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexEnvivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexEnvivReply {.importc: "xcb_glx_get_tex_enviv_reply".}
proc getTexGendvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_gendv_sizeof".}
proc getTexGendv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGendvCookie {.importc: "xcb_glx_get_tex_gendv".}
proc getTexGendvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGendvCookie {.importc: "xcb_glx_get_tex_gendv_unchecked".}
proc data*(R: ptr XcbGlxGetTexGendvReply): ptr UncheckedArray[XcbGlxFloat64] {.importc: "xcb_glx_get_tex_gendv_data".}
proc dataLength*(R: ptr XcbGlxGetTexGendvReply): cint {.importc: "xcb_glx_get_tex_gendv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexGendvReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_gendv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexGendvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexGendvReply {.importc: "xcb_glx_get_tex_gendv_reply".}
proc getTexGenfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_genfv_sizeof".}
proc getTexGenfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGenfvCookie {.importc: "xcb_glx_get_tex_genfv".}
proc getTexGenfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGenfvCookie {.importc: "xcb_glx_get_tex_genfv_unchecked".}
proc data*(R: ptr XcbGlxGetTexGenfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_tex_genfv_data".}
proc dataLength*(R: ptr XcbGlxGetTexGenfvReply): cint {.importc: "xcb_glx_get_tex_genfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexGenfvReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_genfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexGenfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexGenfvReply {.importc: "xcb_glx_get_tex_genfv_reply".}
proc getTexGenivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_geniv_sizeof".}
proc getTexGeniv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGenivCookie {.importc: "xcb_glx_get_tex_geniv".}
proc getTexGenivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; coord: uint32; pname: uint32): XcbGlxGetTexGenivCookie {.importc: "xcb_glx_get_tex_geniv_unchecked".}
proc data*(R: ptr XcbGlxGetTexGenivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_tex_geniv_data".}
proc dataLength*(R: ptr XcbGlxGetTexGenivReply): cint {.importc: "xcb_glx_get_tex_geniv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexGenivReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_geniv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexGenivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexGenivReply {.importc: "xcb_glx_get_tex_geniv_reply".}
proc getTexImageSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_image_sizeof".}
proc getTexImage*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetTexImageCookie {.importc: "xcb_glx_get_tex_image".}
proc getTexImageUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetTexImageCookie {.importc: "xcb_glx_get_tex_image_unchecked".}
proc data*(R: ptr XcbGlxGetTexImageReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_tex_image_data".}
proc dataLength*(R: ptr XcbGlxGetTexImageReply): cint {.importc: "xcb_glx_get_tex_image_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexImageReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_image_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexImageCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexImageReply {.importc: "xcb_glx_get_tex_image_reply".}
proc getTexParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_parameterfv_sizeof".}
proc getTexParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexParameterfvCookie {.importc: "xcb_glx_get_tex_parameterfv".}
proc getTexParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexParameterfvCookie {.importc: "xcb_glx_get_tex_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetTexParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_tex_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetTexParameterfvReply): cint {.importc: "xcb_glx_get_tex_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexParameterfvReply {.importc: "xcb_glx_get_tex_parameterfv_reply".}
proc getTexParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_parameteriv_sizeof".}
proc getTexParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexParameterivCookie {.importc: "xcb_glx_get_tex_parameteriv".}
proc getTexParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetTexParameterivCookie {.importc: "xcb_glx_get_tex_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetTexParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_tex_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetTexParameterivReply): cint {.importc: "xcb_glx_get_tex_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexParameterivReply {.importc: "xcb_glx_get_tex_parameteriv_reply".}
proc getTexLevelParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_level_parameterfv_sizeof".}
proc getTexLevelParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; pname: uint32): XcbGlxGetTexLevelParameterfvCookie {.importc: "xcb_glx_get_tex_level_parameterfv".}
proc getTexLevelParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; pname: uint32): XcbGlxGetTexLevelParameterfvCookie {.importc: "xcb_glx_get_tex_level_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetTexLevelParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_tex_level_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetTexLevelParameterfvReply): cint {.importc: "xcb_glx_get_tex_level_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexLevelParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_level_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexLevelParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexLevelParameterfvReply {.importc: "xcb_glx_get_tex_level_parameterfv_reply".}
proc getTexLevelParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_tex_level_parameteriv_sizeof".}
proc getTexLevelParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; pname: uint32): XcbGlxGetTexLevelParameterivCookie {.importc: "xcb_glx_get_tex_level_parameteriv".}
proc getTexLevelParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32; pname: uint32): XcbGlxGetTexLevelParameterivCookie {.importc: "xcb_glx_get_tex_level_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetTexLevelParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_tex_level_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetTexLevelParameterivReply): cint {.importc: "xcb_glx_get_tex_level_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetTexLevelParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_tex_level_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetTexLevelParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetTexLevelParameterivReply {.importc: "xcb_glx_get_tex_level_parameteriv_reply".}
proc isEnabled*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; capability: uint32): XcbGlxIsEnabledCookie {.importc: "xcb_glx_is_enabled".}
proc isEnabledUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; capability: uint32): XcbGlxIsEnabledCookie {.importc: "xcb_glx_is_enabled_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxIsEnabledCookie; e: ptr ptr XcbGenericError): ptr XcbGlxIsEnabledReply {.importc: "xcb_glx_is_enabled_reply".}
proc isList*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32): XcbGlxIsListCookie {.importc: "xcb_glx_is_list".}
proc isListUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; list: uint32): XcbGlxIsListCookie {.importc: "xcb_glx_is_list_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxIsListCookie; e: ptr ptr XcbGenericError): ptr XcbGlxIsListReply {.importc: "xcb_glx_is_list_reply".}
proc flushChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_flush_checked".}
proc flush*(c: ptr XcbConnection; contextTag: XcbGlxContextTag): XcbVoidCookie {.discardable, importc: "xcb_glx_flush".}
proc areTexturesResidentSizeof*(buffer: pointer): cint {.importc: "xcb_glx_are_textures_resident_sizeof".}
proc areTexturesResident*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; textures: ptr uint32): XcbGlxAreTexturesResidentCookie {.importc: "xcb_glx_are_textures_resident".}
proc areTexturesResidentUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; textures: ptr uint32): XcbGlxAreTexturesResidentCookie {.importc: "xcb_glx_are_textures_resident_unchecked".}
proc data*(R: ptr XcbGlxAreTexturesResidentReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_are_textures_resident_data".}
proc dataLength*(R: ptr XcbGlxAreTexturesResidentReply): cint {.importc: "xcb_glx_are_textures_resident_data_length".}
proc dataEnd*(R: ptr XcbGlxAreTexturesResidentReply): XcbGenericIterator {.importc: "xcb_glx_are_textures_resident_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxAreTexturesResidentCookie; e: ptr ptr XcbGenericError): ptr XcbGlxAreTexturesResidentReply {.importc: "xcb_glx_are_textures_resident_reply".}
proc deleteTexturesSizeof*(buffer: pointer): cint {.importc: "xcb_glx_delete_textures_sizeof".}
proc deleteTexturesChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; textures: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_textures_checked".}
proc deleteTextures*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; textures: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_textures".}
proc textures*(R: ptr XcbGlxDeleteTexturesRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_delete_textures_textures".}
proc texturesLength*(R: ptr XcbGlxDeleteTexturesRequest): cint {.importc: "xcb_glx_delete_textures_textures_length".}
proc texturesEnd*(R: ptr XcbGlxDeleteTexturesRequest): XcbGenericIterator {.importc: "xcb_glx_delete_textures_textures_end".}
proc genTexturesSizeof*(buffer: pointer): cint {.importc: "xcb_glx_gen_textures_sizeof".}
proc genTextures*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32): XcbGlxGenTexturesCookie {.importc: "xcb_glx_gen_textures".}
proc genTexturesUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32): XcbGlxGenTexturesCookie {.importc: "xcb_glx_gen_textures_unchecked".}
proc data*(R: ptr XcbGlxGenTexturesReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_gen_textures_data".}
proc dataLength*(R: ptr XcbGlxGenTexturesReply): cint {.importc: "xcb_glx_gen_textures_data_length".}
proc dataEnd*(R: ptr XcbGlxGenTexturesReply): XcbGenericIterator {.importc: "xcb_glx_gen_textures_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGenTexturesCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGenTexturesReply {.importc: "xcb_glx_gen_textures_reply".}
proc isTexture*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; texture: uint32): XcbGlxIsTextureCookie {.importc: "xcb_glx_is_texture".}
proc isTextureUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; texture: uint32): XcbGlxIsTextureCookie {.importc: "xcb_glx_is_texture_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxIsTextureCookie; e: ptr ptr XcbGenericError): ptr XcbGlxIsTextureReply {.importc: "xcb_glx_is_texture_reply".}
proc getColorTableSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_color_table_sizeof".}
proc getColorTable*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetColorTableCookie {.importc: "xcb_glx_get_color_table".}
proc getColorTableUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetColorTableCookie {.importc: "xcb_glx_get_color_table_unchecked".}
proc data*(R: ptr XcbGlxGetColorTableReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_color_table_data".}
proc dataLength*(R: ptr XcbGlxGetColorTableReply): cint {.importc: "xcb_glx_get_color_table_data_length".}
proc dataEnd*(R: ptr XcbGlxGetColorTableReply): XcbGenericIterator {.importc: "xcb_glx_get_color_table_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetColorTableCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetColorTableReply {.importc: "xcb_glx_get_color_table_reply".}
proc getColorTableParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_color_table_parameterfv_sizeof".}
proc getColorTableParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetColorTableParameterfvCookie {.importc: "xcb_glx_get_color_table_parameterfv".}
proc getColorTableParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetColorTableParameterfvCookie {.importc: "xcb_glx_get_color_table_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetColorTableParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_color_table_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetColorTableParameterfvReply): cint {.importc: "xcb_glx_get_color_table_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetColorTableParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_color_table_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetColorTableParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetColorTableParameterfvReply {.importc: "xcb_glx_get_color_table_parameterfv_reply".}
proc getColorTableParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_color_table_parameteriv_sizeof".}
proc getColorTableParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetColorTableParameterivCookie {.importc: "xcb_glx_get_color_table_parameteriv".}
proc getColorTableParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetColorTableParameterivCookie {.importc: "xcb_glx_get_color_table_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetColorTableParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_color_table_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetColorTableParameterivReply): cint {.importc: "xcb_glx_get_color_table_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetColorTableParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_color_table_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetColorTableParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetColorTableParameterivReply {.importc: "xcb_glx_get_color_table_parameteriv_reply".}
proc getConvolutionFilterSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_convolution_filter_sizeof".}
proc getConvolutionFilter*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetConvolutionFilterCookie {.importc: "xcb_glx_get_convolution_filter".}
proc getConvolutionFilterUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetConvolutionFilterCookie {.importc: "xcb_glx_get_convolution_filter_unchecked".}
proc data*(R: ptr XcbGlxGetConvolutionFilterReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_convolution_filter_data".}
proc dataLength*(R: ptr XcbGlxGetConvolutionFilterReply): cint {.importc: "xcb_glx_get_convolution_filter_data_length".}
proc dataEnd*(R: ptr XcbGlxGetConvolutionFilterReply): XcbGenericIterator {.importc: "xcb_glx_get_convolution_filter_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetConvolutionFilterCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetConvolutionFilterReply {.importc: "xcb_glx_get_convolution_filter_reply".}
proc getConvolutionParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_convolution_parameterfv_sizeof".}
proc getConvolutionParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetConvolutionParameterfvCookie {.importc: "xcb_glx_get_convolution_parameterfv".}
proc getConvolutionParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetConvolutionParameterfvCookie {.importc: "xcb_glx_get_convolution_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetConvolutionParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_convolution_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetConvolutionParameterfvReply): cint {.importc: "xcb_glx_get_convolution_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetConvolutionParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_convolution_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetConvolutionParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetConvolutionParameterfvReply {.importc: "xcb_glx_get_convolution_parameterfv_reply".}
proc getConvolutionParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_convolution_parameteriv_sizeof".}
proc getConvolutionParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetConvolutionParameterivCookie {.importc: "xcb_glx_get_convolution_parameteriv".}
proc getConvolutionParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetConvolutionParameterivCookie {.importc: "xcb_glx_get_convolution_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetConvolutionParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_convolution_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetConvolutionParameterivReply): cint {.importc: "xcb_glx_get_convolution_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetConvolutionParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_convolution_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetConvolutionParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetConvolutionParameterivReply {.importc: "xcb_glx_get_convolution_parameteriv_reply".}
proc getSeparableFilterSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_separable_filter_sizeof".}
proc getSeparableFilter*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetSeparableFilterCookie {.importc: "xcb_glx_get_separable_filter".}
proc getSeparableFilterUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8): XcbGlxGetSeparableFilterCookie {.importc: "xcb_glx_get_separable_filter_unchecked".}
proc rowsAndCols*(R: ptr XcbGlxGetSeparableFilterReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_separable_filter_rows_and_cols".}
proc rowsAndColsLength*(R: ptr XcbGlxGetSeparableFilterReply): cint {.importc: "xcb_glx_get_separable_filter_rows_and_cols_length".}
proc rowsAndColsEnd*(R: ptr XcbGlxGetSeparableFilterReply): XcbGenericIterator {.importc: "xcb_glx_get_separable_filter_rows_and_cols_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetSeparableFilterCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetSeparableFilterReply {.importc: "xcb_glx_get_separable_filter_reply".}
proc getHistogramSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_histogram_sizeof".}
proc getHistogram*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8; reset: uint8): XcbGlxGetHistogramCookie {.importc: "xcb_glx_get_histogram".}
proc getHistogramUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8; reset: uint8): XcbGlxGetHistogramCookie {.importc: "xcb_glx_get_histogram_unchecked".}
proc data*(R: ptr XcbGlxGetHistogramReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_histogram_data".}
proc dataLength*(R: ptr XcbGlxGetHistogramReply): cint {.importc: "xcb_glx_get_histogram_data_length".}
proc dataEnd*(R: ptr XcbGlxGetHistogramReply): XcbGenericIterator {.importc: "xcb_glx_get_histogram_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetHistogramCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetHistogramReply {.importc: "xcb_glx_get_histogram_reply".}
proc getHistogramParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_histogram_parameterfv_sizeof".}
proc getHistogramParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetHistogramParameterfvCookie {.importc: "xcb_glx_get_histogram_parameterfv".}
proc getHistogramParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetHistogramParameterfvCookie {.importc: "xcb_glx_get_histogram_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetHistogramParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_histogram_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetHistogramParameterfvReply): cint {.importc: "xcb_glx_get_histogram_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetHistogramParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_histogram_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetHistogramParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetHistogramParameterfvReply {.importc: "xcb_glx_get_histogram_parameterfv_reply".}
proc getHistogramParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_histogram_parameteriv_sizeof".}
proc getHistogramParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetHistogramParameterivCookie {.importc: "xcb_glx_get_histogram_parameteriv".}
proc getHistogramParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetHistogramParameterivCookie {.importc: "xcb_glx_get_histogram_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetHistogramParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_histogram_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetHistogramParameterivReply): cint {.importc: "xcb_glx_get_histogram_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetHistogramParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_histogram_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetHistogramParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetHistogramParameterivReply {.importc: "xcb_glx_get_histogram_parameteriv_reply".}
proc getMinmaxSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_minmax_sizeof".}
proc getMinmax*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8; reset: uint8): XcbGlxGetMinmaxCookie {.importc: "xcb_glx_get_minmax".}
proc getMinmaxUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; format: uint32; `type`: uint32; swapBytes: uint8; reset: uint8): XcbGlxGetMinmaxCookie {.importc: "xcb_glx_get_minmax_unchecked".}
proc data*(R: ptr XcbGlxGetMinmaxReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_minmax_data".}
proc dataLength*(R: ptr XcbGlxGetMinmaxReply): cint {.importc: "xcb_glx_get_minmax_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMinmaxReply): XcbGenericIterator {.importc: "xcb_glx_get_minmax_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMinmaxCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMinmaxReply {.importc: "xcb_glx_get_minmax_reply".}
proc getMinmaxParameterfvSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_minmax_parameterfv_sizeof".}
proc getMinmaxParameterfv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetMinmaxParameterfvCookie {.importc: "xcb_glx_get_minmax_parameterfv".}
proc getMinmaxParameterfvUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetMinmaxParameterfvCookie {.importc: "xcb_glx_get_minmax_parameterfv_unchecked".}
proc data*(R: ptr XcbGlxGetMinmaxParameterfvReply): ptr UncheckedArray[XcbGlxFloat32] {.importc: "xcb_glx_get_minmax_parameterfv_data".}
proc dataLength*(R: ptr XcbGlxGetMinmaxParameterfvReply): cint {.importc: "xcb_glx_get_minmax_parameterfv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMinmaxParameterfvReply): XcbGenericIterator {.importc: "xcb_glx_get_minmax_parameterfv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMinmaxParameterfvCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMinmaxParameterfvReply {.importc: "xcb_glx_get_minmax_parameterfv_reply".}
proc getMinmaxParameterivSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_minmax_parameteriv_sizeof".}
proc getMinmaxParameteriv*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetMinmaxParameterivCookie {.importc: "xcb_glx_get_minmax_parameteriv".}
proc getMinmaxParameterivUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetMinmaxParameterivCookie {.importc: "xcb_glx_get_minmax_parameteriv_unchecked".}
proc data*(R: ptr XcbGlxGetMinmaxParameterivReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_minmax_parameteriv_data".}
proc dataLength*(R: ptr XcbGlxGetMinmaxParameterivReply): cint {.importc: "xcb_glx_get_minmax_parameteriv_data_length".}
proc dataEnd*(R: ptr XcbGlxGetMinmaxParameterivReply): XcbGenericIterator {.importc: "xcb_glx_get_minmax_parameteriv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetMinmaxParameterivCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetMinmaxParameterivReply {.importc: "xcb_glx_get_minmax_parameteriv_reply".}
proc getCompressedTexImageArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_compressed_tex_image_arb_sizeof".}
proc getCompressedTexImageArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32): XcbGlxGetCompressedTexImageArbCookie {.importc: "xcb_glx_get_compressed_tex_image_arb".}
proc getCompressedTexImageArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; level: int32): XcbGlxGetCompressedTexImageArbCookie {.importc: "xcb_glx_get_compressed_tex_image_arb_unchecked".}
proc data*(R: ptr XcbGlxGetCompressedTexImageArbReply): ptr UncheckedArray[uint8] {.importc: "xcb_glx_get_compressed_tex_image_arb_data".}
proc dataLength*(R: ptr XcbGlxGetCompressedTexImageArbReply): cint {.importc: "xcb_glx_get_compressed_tex_image_arb_data_length".}
proc dataEnd*(R: ptr XcbGlxGetCompressedTexImageArbReply): XcbGenericIterator {.importc: "xcb_glx_get_compressed_tex_image_arb_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetCompressedTexImageArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetCompressedTexImageArbReply {.importc: "xcb_glx_get_compressed_tex_image_arb_reply".}
proc deleteQueriesArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_delete_queries_arb_sizeof".}
proc deleteQueriesArbChecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; ids: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_queries_arb_checked".}
proc deleteQueriesArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32; ids: ptr uint32): XcbVoidCookie {.discardable, importc: "xcb_glx_delete_queries_arb".}
proc ids*(R: ptr XcbGlxDeleteQueriesArbRequest): ptr UncheckedArray[uint32] {.importc: "xcb_glx_delete_queries_arb_ids".}
proc idsLength*(R: ptr XcbGlxDeleteQueriesArbRequest): cint {.importc: "xcb_glx_delete_queries_arb_ids_length".}
proc idsEnd*(R: ptr XcbGlxDeleteQueriesArbRequest): XcbGenericIterator {.importc: "xcb_glx_delete_queries_arb_ids_end".}
proc genQueriesArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_gen_queries_arb_sizeof".}
proc genQueriesArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32): XcbGlxGenQueriesArbCookie {.importc: "xcb_glx_gen_queries_arb".}
proc genQueriesArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; n: int32): XcbGlxGenQueriesArbCookie {.importc: "xcb_glx_gen_queries_arb_unchecked".}
proc data*(R: ptr XcbGlxGenQueriesArbReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_gen_queries_arb_data".}
proc dataLength*(R: ptr XcbGlxGenQueriesArbReply): cint {.importc: "xcb_glx_gen_queries_arb_data_length".}
proc dataEnd*(R: ptr XcbGlxGenQueriesArbReply): XcbGenericIterator {.importc: "xcb_glx_gen_queries_arb_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGenQueriesArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGenQueriesArbReply {.importc: "xcb_glx_gen_queries_arb_reply".}
proc isQueryArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32): XcbGlxIsQueryArbCookie {.importc: "xcb_glx_is_query_arb".}
proc isQueryArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32): XcbGlxIsQueryArbCookie {.importc: "xcb_glx_is_query_arb_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxIsQueryArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxIsQueryArbReply {.importc: "xcb_glx_is_query_arb_reply".}
proc getQueryivArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_queryiv_arb_sizeof".}
proc getQueryivArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetQueryivArbCookie {.importc: "xcb_glx_get_queryiv_arb".}
proc getQueryivArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; target: uint32; pname: uint32): XcbGlxGetQueryivArbCookie {.importc: "xcb_glx_get_queryiv_arb_unchecked".}
proc data*(R: ptr XcbGlxGetQueryivArbReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_queryiv_arb_data".}
proc dataLength*(R: ptr XcbGlxGetQueryivArbReply): cint {.importc: "xcb_glx_get_queryiv_arb_data_length".}
proc dataEnd*(R: ptr XcbGlxGetQueryivArbReply): XcbGenericIterator {.importc: "xcb_glx_get_queryiv_arb_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetQueryivArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetQueryivArbReply {.importc: "xcb_glx_get_queryiv_arb_reply".}
proc getQueryObjectivArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_query_objectiv_arb_sizeof".}
proc getQueryObjectivArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32; pname: uint32): XcbGlxGetQueryObjectivArbCookie {.importc: "xcb_glx_get_query_objectiv_arb".}
proc getQueryObjectivArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32; pname: uint32): XcbGlxGetQueryObjectivArbCookie {.importc: "xcb_glx_get_query_objectiv_arb_unchecked".}
proc data*(R: ptr XcbGlxGetQueryObjectivArbReply): ptr UncheckedArray[int32] {.importc: "xcb_glx_get_query_objectiv_arb_data".}
proc dataLength*(R: ptr XcbGlxGetQueryObjectivArbReply): cint {.importc: "xcb_glx_get_query_objectiv_arb_data_length".}
proc dataEnd*(R: ptr XcbGlxGetQueryObjectivArbReply): XcbGenericIterator {.importc: "xcb_glx_get_query_objectiv_arb_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetQueryObjectivArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetQueryObjectivArbReply {.importc: "xcb_glx_get_query_objectiv_arb_reply".}
proc getQueryObjectuivArbSizeof*(buffer: pointer): cint {.importc: "xcb_glx_get_query_objectuiv_arb_sizeof".}
proc getQueryObjectuivArb*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32; pname: uint32): XcbGlxGetQueryObjectuivArbCookie {.importc: "xcb_glx_get_query_objectuiv_arb".}
proc getQueryObjectuivArbUnchecked*(c: ptr XcbConnection; contextTag: XcbGlxContextTag; id: uint32; pname: uint32): XcbGlxGetQueryObjectuivArbCookie {.importc: "xcb_glx_get_query_objectuiv_arb_unchecked".}
proc data*(R: ptr XcbGlxGetQueryObjectuivArbReply): ptr UncheckedArray[uint32] {.importc: "xcb_glx_get_query_objectuiv_arb_data".}
proc dataLength*(R: ptr XcbGlxGetQueryObjectuivArbReply): cint {.importc: "xcb_glx_get_query_objectuiv_arb_data_length".}
proc dataEnd*(R: ptr XcbGlxGetQueryObjectuivArbReply): XcbGenericIterator {.importc: "xcb_glx_get_query_objectuiv_arb_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbGlxGetQueryObjectuivArbCookie; e: ptr ptr XcbGenericError): ptr XcbGlxGetQueryObjectuivArbReply {.importc: "xcb_glx_get_query_objectuiv_arb_reply".}

{.pop.}
{.pop.}
