import ./xcb, ./xv

const
  xcbXvmcMajorVersion* = 1
  xcbXvmcMinorVersion* = 1
  xcbXvmcQueryVersion* = 0
  xcbXvmcListSurfaceTypes* = 1
  xcbXvmcCreateContext* = 2
  xcbXvmcDestroyContext* = 3
  xcbXvmcCreateSurface* = 4
  xcbXvmcDestroySurface* = 5
  xcbXvmcCreateSubpicture* = 6
  xcbXvmcDestroySubpicture* = 7
  xcbXvmcListSubpictureTypes* = 8

{.passl: "-lxcb-xvmc".}
{.push header: "xcb/xvmc.h".}

var xcbXvmcId* {.extern: "xcb_xvmc_id".}: XcbExtension

type
  XcbXvmcContext* {.importc: "xcb_xvmc_context_t".} = distinct uint32
  XcbXvmcSurface* {.importc: "xcb_xvmc_surface_t".} = distinct uint32
  XcbXvmcSubpicture* {.importc: "xcb_xvmc_subpicture_t".} = distinct uint32

  XcbXvmcContextIterator* {.importc: "xcb_xvmc_context_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvmcContext]
    rem*: cint
    index*: cint

  XcbXvmcSurfaceIterator* {.importc: "xcb_xvmc_surface_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvmcSurface]
    rem*: cint
    index*: cint

  XcbXvmcSubpictureIterator* {.importc: "xcb_xvmc_subpicture_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvmcSubpicture]
    rem*: cint
    index*: cint

  XcbXvmcSurfaceInfo* {.importc: "xcb_xvmc_surface_info_t", bycopy.} = object
    id*: XcbXvmcSurface
    chromaFormat* {.importc: "chroma_format".}: uint16
    pad0: uint16
    maxWidth* {.importc: "max_width".}: uint16
    maxHeight* {.importc: "max_height".}: uint16
    subpictureMaxWidth* {.importc: "subpicture_max_width".}: uint16
    subpictureMaxHeight* {.importc: "subpicture_max_height".}: uint16
    mcType* {.importc: "mc_type".}: uint32
    flags*: uint32

  XcbXvmcSurfaceInfoIterator* {.importc: "xcb_xvmc_surface_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXvmcSurfaceInfo]
    rem*: cint
    index*: cint

  XcbXvmcQueryVersionCookie* {.importc: "xcb_xvmc_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcQueryVersionRequest* {.importc: "xcb_xvmc_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXvmcQueryVersionReply* {.importc: "xcb_xvmc_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    major*: uint32
    minor*: uint32

  XcbXvmcListSurfaceTypesCookie* {.importc: "xcb_xvmc_list_surface_types_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcListSurfaceTypesRequest* {.importc: "xcb_xvmc_list_surface_types_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    portId* {.importc: "port_id".}: XcbXvPort

  XcbXvmcListSurfaceTypesReply* {.importc: "xcb_xvmc_list_surface_types_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    num*: uint32
    pad1: array[20, uint8]

  XcbXvmcCreateContextCookie* {.importc: "xcb_xvmc_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcCreateContextRequest* {.importc: "xcb_xvmc_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextId* {.importc: "context_id".}: XcbXvmcContext
    portId* {.importc: "port_id".}: XcbXvPort
    surfaceId* {.importc: "surface_id".}: XcbXvmcSurface
    width*: uint16
    height*: uint16
    flags*: uint32

  XcbXvmcCreateContextReply* {.importc: "xcb_xvmc_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    widthActual* {.importc: "width_actual".}: uint16
    heightActual* {.importc: "height_actual".}: uint16
    flagsReturn* {.importc: "flags_return".}: uint32
    pad1: array[20, uint8]

  XcbXvmcDestroyContextRequest* {.importc: "xcb_xvmc_destroy_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextId* {.importc: "context_id".}: XcbXvmcContext

  XcbXvmcCreateSurfaceCookie* {.importc: "xcb_xvmc_create_surface_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcCreateSurfaceRequest* {.importc: "xcb_xvmc_create_surface_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    surfaceId* {.importc: "surface_id".}: XcbXvmcSurface
    contextId* {.importc: "context_id".}: XcbXvmcContext

  XcbXvmcCreateSurfaceReply* {.importc: "xcb_xvmc_create_surface_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    pad1: array[24, uint8]

  XcbXvmcDestroySurfaceRequest* {.importc: "xcb_xvmc_destroy_surface_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    surfaceId* {.importc: "surface_id".}: XcbXvmcSurface

  XcbXvmcCreateSubpictureCookie* {.importc: "xcb_xvmc_create_subpicture_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcCreateSubpictureRequest* {.importc: "xcb_xvmc_create_subpicture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    subpictureId* {.importc: "subpicture_id".}: XcbXvmcSubpicture
    context*: XcbXvmcContext
    xvimageId* {.importc: "xvimage_id".}: uint32
    width*: uint16
    height*: uint16

  XcbXvmcCreateSubpictureReply* {.importc: "xcb_xvmc_create_subpicture_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    widthActual* {.importc: "width_actual".}: uint16
    heightActual* {.importc: "height_actual".}: uint16
    numPaletteEntries* {.importc: "num_palette_entries".}: uint16
    entryBytes* {.importc: "entry_bytes".}: uint16
    componentOrder* {.importc: "component_order".}: array[4, uint8]
    pad1: array[12, uint8]

  XcbXvmcDestroySubpictureRequest* {.importc: "xcb_xvmc_destroy_subpicture_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    subpictureId* {.importc: "subpicture_id".}: XcbXvmcSubpicture

  XcbXvmcListSubpictureTypesCookie* {.importc: "xcb_xvmc_list_subpicture_types_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXvmcListSubpictureTypesRequest* {.importc: "xcb_xvmc_list_subpicture_types_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    portId* {.importc: "port_id".}: XcbXvPort
    surfaceId* {.importc: "surface_id".}: XcbXvmcSurface

  XcbXvmcListSubpictureTypesReply* {.importc: "xcb_xvmc_list_subpicture_types_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    num*: uint32
    pad1: array[20, uint8]

{.push cdecl.}

proc next*(i: ptr XcbXvmcContextIterator) {.importc: "xcb_xvmc_context_next".}
proc iterEnd*(i: XcbXvmcContextIterator): XcbGenericIterator {.importc: "xcb_xvmc_context_end".}
proc next*(i: ptr XcbXvmcSurfaceIterator) {.importc: "xcb_xvmc_surface_next".}
proc iterEnd*(i: XcbXvmcSurfaceIterator): XcbGenericIterator {.importc: "xcb_xvmc_surface_end".}
proc next*(i: ptr XcbXvmcSubpictureIterator) {.importc: "xcb_xvmc_subpicture_next".}
proc iterEnd*(i: XcbXvmcSubpictureIterator): XcbGenericIterator {.importc: "xcb_xvmc_subpicture_end".}
proc next*(i: ptr XcbXvmcSurfaceInfoIterator) {.importc: "xcb_xvmc_surface_info_next".}
proc iterEnd*(i: XcbXvmcSurfaceInfoIterator): XcbGenericIterator {.importc: "xcb_xvmc_surface_info_end".}
proc xvmcQueryVersion*(c: ptr XcbConnection): XcbXvmcQueryVersionCookie {.importc: "xcb_xvmc_query_version".}
proc xvmcQueryVersionUnchecked*(c: ptr XcbConnection): XcbXvmcQueryVersionCookie {.importc: "xcb_xvmc_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcQueryVersionReply {.importc: "xcb_xvmc_query_version_reply".}
proc listSurfaceTypesSizeof*(buffer: pointer): cint {.importc: "xcb_xvmc_list_surface_types_sizeof".}
proc listSurfaceTypes*(c: ptr XcbConnection; portId: XcbXvPort): XcbXvmcListSurfaceTypesCookie {.importc: "xcb_xvmc_list_surface_types".}
proc listSurfaceTypesUnchecked*(c: ptr XcbConnection; portId: XcbXvPort): XcbXvmcListSurfaceTypesCookie {.importc: "xcb_xvmc_list_surface_types_unchecked".}
proc surfaces*(R: ptr XcbXvmcListSurfaceTypesReply): ptr UncheckedArray[XcbXvmcSurfaceInfo] {.importc: "xcb_xvmc_list_surface_types_surfaces".}
proc surfacesLength*(R: ptr XcbXvmcListSurfaceTypesReply): cint {.importc: "xcb_xvmc_list_surface_types_surfaces_length".}
proc surfacesIterator*(R: ptr XcbXvmcListSurfaceTypesReply): XcbXvmcSurfaceInfoIterator {.importc: "xcb_xvmc_list_surface_types_surfaces_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcListSurfaceTypesCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcListSurfaceTypesReply {.importc: "xcb_xvmc_list_surface_types_reply".}
proc createContextSizeof*(buffer: pointer): cint {.importc: "xcb_xvmc_create_context_sizeof".}
proc createContext*(c: ptr XcbConnection; contextId: XcbXvmcContext; portId: XcbXvPort; surfaceId: XcbXvmcSurface; width: uint16; height: uint16; flags: uint32): XcbXvmcCreateContextCookie {.importc: "xcb_xvmc_create_context".}
proc createContextUnchecked*(c: ptr XcbConnection; contextId: XcbXvmcContext; portId: XcbXvPort; surfaceId: XcbXvmcSurface; width: uint16; height: uint16; flags: uint32): XcbXvmcCreateContextCookie {.importc: "xcb_xvmc_create_context_unchecked".}
proc privData*(R: ptr XcbXvmcCreateContextReply): ptr UncheckedArray[uint32] {.importc: "xcb_xvmc_create_context_priv_data".}
proc privDataLength*(R: ptr XcbXvmcCreateContextReply): cint {.importc: "xcb_xvmc_create_context_priv_data_length".}
proc privDataEnd*(R: ptr XcbXvmcCreateContextReply): XcbGenericIterator {.importc: "xcb_xvmc_create_context_priv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcCreateContextReply {.importc: "xcb_xvmc_create_context_reply".}
proc destroyChecked*(c: ptr XcbConnection; contextId: XcbXvmcContext): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_context_checked".}
proc destroy*(c: ptr XcbConnection; contextId: XcbXvmcContext): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_context".}
proc createSurfaceSizeof*(buffer: pointer): cint {.importc: "xcb_xvmc_create_surface_sizeof".}
proc createSurface*(c: ptr XcbConnection; surfaceId: XcbXvmcSurface; contextId: XcbXvmcContext): XcbXvmcCreateSurfaceCookie {.importc: "xcb_xvmc_create_surface".}
proc createSurfaceUnchecked*(c: ptr XcbConnection; surfaceId: XcbXvmcSurface; contextId: XcbXvmcContext): XcbXvmcCreateSurfaceCookie {.importc: "xcb_xvmc_create_surface_unchecked".}
proc privData*(R: ptr XcbXvmcCreateSurfaceReply): ptr UncheckedArray[uint32] {.importc: "xcb_xvmc_create_surface_priv_data".}
proc privDataLength*(R: ptr XcbXvmcCreateSurfaceReply): cint {.importc: "xcb_xvmc_create_surface_priv_data_length".}
proc privDataEnd*(R: ptr XcbXvmcCreateSurfaceReply): XcbGenericIterator {.importc: "xcb_xvmc_create_surface_priv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcCreateSurfaceCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcCreateSurfaceReply {.importc: "xcb_xvmc_create_surface_reply".}
proc destroyChecked*(c: ptr XcbConnection; surfaceId: XcbXvmcSurface): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_surface_checked".}
proc destroy*(c: ptr XcbConnection; surfaceId: XcbXvmcSurface): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_surface".}
proc createSubpictureSizeof*(buffer: pointer): cint {.importc: "xcb_xvmc_create_subpicture_sizeof".}
proc createSubpicture*(c: ptr XcbConnection; subpictureId: XcbXvmcSubpicture; context: XcbXvmcContext; xvimageId: uint32; width: uint16; height: uint16): XcbXvmcCreateSubpictureCookie {.importc: "xcb_xvmc_create_subpicture".}
proc createSubpictureUnchecked*(c: ptr XcbConnection; subpictureId: XcbXvmcSubpicture; context: XcbXvmcContext; xvimageId: uint32; width: uint16; height: uint16): XcbXvmcCreateSubpictureCookie {.importc: "xcb_xvmc_create_subpicture_unchecked".}
proc privData*(R: ptr XcbXvmcCreateSubpictureReply): ptr UncheckedArray[uint32] {.importc: "xcb_xvmc_create_subpicture_priv_data".}
proc privDataLength*(R: ptr XcbXvmcCreateSubpictureReply): cint {.importc: "xcb_xvmc_create_subpicture_priv_data_length".}
proc privDataEnd*(R: ptr XcbXvmcCreateSubpictureReply): XcbGenericIterator {.importc: "xcb_xvmc_create_subpicture_priv_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcCreateSubpictureCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcCreateSubpictureReply {.importc: "xcb_xvmc_create_subpicture_reply".}
proc destroyChecked*(c: ptr XcbConnection; subpictureId: XcbXvmcSubpicture): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_subpicture_checked".}
proc destroy*(c: ptr XcbConnection; subpictureId: XcbXvmcSubpicture): XcbVoidCookie {.discardable, importc: "xcb_xvmc_destroy_subpicture".}
proc listSubpictureTypesSizeof*(buffer: pointer): cint {.importc: "xcb_xvmc_list_subpicture_types_sizeof".}
proc listSubpictureTypes*(c: ptr XcbConnection; portId: XcbXvPort; surfaceId: XcbXvmcSurface): XcbXvmcListSubpictureTypesCookie {.importc: "xcb_xvmc_list_subpicture_types".}
proc listSubpictureTypesUnchecked*(c: ptr XcbConnection; portId: XcbXvPort; surfaceId: XcbXvmcSurface): XcbXvmcListSubpictureTypesCookie {.importc: "xcb_xvmc_list_subpicture_types_unchecked".}
proc types*(R: ptr XcbXvmcListSubpictureTypesReply): ptr UncheckedArray[XcbXvImageFormatInfo] {.importc: "xcb_xvmc_list_subpicture_types_types".}
proc typesLength*(R: ptr XcbXvmcListSubpictureTypesReply): cint {.importc: "xcb_xvmc_list_subpicture_types_types_length".}
proc typesIterator*(R: ptr XcbXvmcListSubpictureTypesReply): XcbXvImageFormatInfoIterator {.importc: "xcb_xvmc_list_subpicture_types_types_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXvmcListSubpictureTypesCookie; e: ptr ptr XcbGenericError): ptr XcbXvmcListSubpictureTypesReply {.importc: "xcb_xvmc_list_subpicture_types_reply".}

{.pop.}
{.pop.}
