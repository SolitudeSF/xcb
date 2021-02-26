import ./xcb

const
  xcbResMajorVersion* = 1
  xcbResMinorVersion* = 2
  xcbResQueryVersion* = 0
  xcbResQueryClients* = 1
  xcbResQueryClientResources* = 2
  xcbResQueryClientPixmapBytes* = 3
  xcbResQueryClientIds* = 4
  xcbResQueryResourceBytes* = 5

{.passl: "-lxcb-res".}
{.push header: "xcb/res.h".}

var xcbResId* {.extern: "xcb_res_id".}: XcbExtension

type
  XcbResClient* {.importc: "xcb_res_client_t", bycopy.} = object
    resourceBase* {.importc: "resource_base".}: uint32
    resourceMask* {.importc: "resource_mask".}: uint32

  XcbResClientIterator* {.importc: "xcb_res_client_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResClient]
    rem*: cint
    index*: cint

  XcbResType* {.importc: "xcb_res_type_t", bycopy.} = object
    resourceType* {.importc: "resource_type".}: XcbAtom
    count*: uint32

  XcbResTypeIterator* {.importc: "xcb_res_type_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResType]
    rem*: cint
    index*: cint

  XcbResClientIdMask* {.importc: "xcb_res_client_id_mask_t".} = enum
    xcbResClientIdMaskClientXid = 1,
    xcbResClientIdMaskLocalClientPid = 2

  XcbResClientIdSpec* {.importc: "xcb_res_client_id_spec_t", bycopy.} = object
    client*: uint32
    mask*: uint32

  XcbResClientIdSpecIterator* {.importc: "xcb_res_client_id_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResClientIdSpec]
    rem*: cint
    index*: cint

  XcbResClientIdValue* {.importc: "xcb_res_client_id_value_t", bycopy.} = object
    spec*: XcbResClientIdSpec
    length*: uint32

  XcbResClientIdValueIterator* {.importc: "xcb_res_client_id_value_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResClientIdValue]
    rem*: cint
    index*: cint

  XcbResResourceIdSpec* {.importc: "xcb_res_resource_id_spec_t", bycopy.} = object
    resource*: uint32
    `type`*: uint32

  XcbResResourceIdSpecIterator* {.importc: "xcb_res_resource_id_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResResourceIdSpec]
    rem*: cint
    index*: cint

  XcbResResourceSizeSpec* {.importc: "xcb_res_resource_size_spec_t", bycopy.} = object
    spec*: XcbResResourceIdSpec
    bytes*: uint32
    refCount* {.importc: "ref_count".}: uint32
    useCount* {.importc: "use_count".}: uint32

  XcbResResourceSizeSpecIterator* {.importc: "xcb_res_resource_size_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResResourceSizeSpec]
    rem*: cint
    index*: cint

  XcbResResourceSizeValue* {.importc: "xcb_res_resource_size_value_t", bycopy.} = object
    size*: XcbResResourceSizeSpec
    numCrossReferences* {.importc: "num_cross_references".}: uint32

  XcbResResourceSizeValueIterator* {.importc: "xcb_res_resource_size_value_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbResResourceSizeValue]
    rem*: cint
    index*: cint

  XcbResQueryVersionCookie* {.importc: "xcb_res_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryVersionRequest* {.importc: "xcb_res_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajor* {.importc: "client_major".}: uint8
    clientMinor* {.importc: "client_minor".}: uint8

  XcbResQueryVersionReply* {.importc: "xcb_res_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajor* {.importc: "server_major".}: uint16
    serverMinor* {.importc: "server_minor".}: uint16

  XcbResQueryClientsCookie* {.importc: "xcb_res_query_clients_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryClientsRequest* {.importc: "xcb_res_query_clients_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbResQueryClientsReply* {.importc: "xcb_res_query_clients_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numClients* {.importc: "num_clients".}: uint32
    pad1: array[20, uint8]

  XcbResQueryClientResourcesCookie* {.importc: "xcb_res_query_client_resources_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryClientResourcesRequest* {.importc: "xcb_res_query_client_resources_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    xid*: uint32

  XcbResQueryClientResourcesReply* {.importc: "xcb_res_query_client_resources_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numTypes* {.importc: "num_types".}: uint32
    pad1: array[20, uint8]

  XcbResQueryClientPixmapBytesCookie* {.importc: "xcb_res_query_client_pixmap_bytes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryClientPixmapBytesRequest* {.importc: "xcb_res_query_client_pixmap_bytes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    xid*: uint32

  XcbResQueryClientPixmapBytesReply* {.importc: "xcb_res_query_client_pixmap_bytes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    bytes*: uint32
    bytesOverflow* {.importc: "bytes_overflow".}: uint32

  XcbResQueryClientIdsCookie* {.importc: "xcb_res_query_client_ids_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryClientIdsRequest* {.importc: "xcb_res_query_client_ids_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    numSpecs* {.importc: "num_specs".}: uint32

  XcbResQueryClientIdsReply* {.importc: "xcb_res_query_client_ids_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numIds* {.importc: "num_ids".}: uint32
    pad1: array[20, uint8]

  XcbResQueryResourceBytesCookie* {.importc: "xcb_res_query_resource_bytes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbResQueryResourceBytesRequest* {.importc: "xcb_res_query_resource_bytes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    client*: uint32
    numSpecs* {.importc: "num_specs".}: uint32

  XcbResQueryResourceBytesReply* {.importc: "xcb_res_query_resource_bytes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    numSizes* {.importc: "num_sizes".}: uint32
    pad1: array[20, uint8]

{.push cdecl.}

proc next*(i: ptr XcbResClientIterator) {.importc: "xcb_res_client_next".}
proc iterEnd*(i: XcbResClientIterator): XcbGenericIterator {.importc: "xcb_res_client_end".}
proc next*(i: ptr XcbResTypeIterator) {.importc: "xcb_res_type_next".}
proc iterEnd*(i: XcbResTypeIterator): XcbGenericIterator {.importc: "xcb_res_type_end".}
proc next*(i: ptr XcbResClientIdSpecIterator) {.importc: "xcb_res_client_id_spec_next".}
proc iterEnd*(i: XcbResClientIdSpecIterator): XcbGenericIterator {.importc: "xcb_res_client_id_spec_end".}
proc clientIdValueSizeof*(buffer: pointer): cint {.importc: "xcb_res_client_id_value_sizeof".}
proc value*(R: ptr XcbResClientIdValue): ptr UncheckedArray[uint32] {.importc: "xcb_res_client_id_value_value".}
proc valueLength*(R: ptr XcbResClientIdValue): cint {.importc: "xcb_res_client_id_value_value_length".}
proc valueEnd*(R: ptr XcbResClientIdValue): XcbGenericIterator {.importc: "xcb_res_client_id_value_value_end".}
proc next*(i: ptr XcbResClientIdValueIterator) {.importc: "xcb_res_client_id_value_next".}
proc iterEnd*(i: XcbResClientIdValueIterator): XcbGenericIterator {.importc: "xcb_res_client_id_value_end".}
proc next*(i: ptr XcbResResourceIdSpecIterator) {.importc: "xcb_res_resource_id_spec_next".}
proc iterEnd*(i: XcbResResourceIdSpecIterator): XcbGenericIterator {.importc: "xcb_res_resource_id_spec_end".}
proc next*(i: ptr XcbResResourceSizeSpecIterator) {.importc: "xcb_res_resource_size_spec_next".}
proc iterEnd*(i: XcbResResourceSizeSpecIterator): XcbGenericIterator {.importc: "xcb_res_resource_size_spec_end".}
proc resourceSizeValueSizeof*(buffer: pointer): cint {.importc: "xcb_res_resource_size_value_sizeof".}
proc crossReferences*(R: ptr XcbResResourceSizeValue): ptr UncheckedArray[XcbResResourceSizeSpec] {.importc: "xcb_res_resource_size_value_cross_references".}
proc crossReferencesLength*(R: ptr XcbResResourceSizeValue): cint {.importc: "xcb_res_resource_size_value_cross_references_length".}
proc crossReferencesIterator*(R: ptr XcbResResourceSizeValue): XcbResResourceSizeSpecIterator {.importc: "xcb_res_resource_size_value_cross_references_iterator".}
proc next*(i: ptr XcbResResourceSizeValueIterator) {.importc: "xcb_res_resource_size_value_next".}
proc iterEnd*(i: XcbResResourceSizeValueIterator): XcbGenericIterator {.importc: "xcb_res_resource_size_value_end".}
proc queryVersion*(c: ptr XcbConnection; clientMajor: uint8; clientMinor: uint8): XcbResQueryVersionCookie {.importc: "xcb_res_query_version".}
proc queryVersionUnchecked*(c: ptr XcbConnection; clientMajor: uint8; clientMinor: uint8): XcbResQueryVersionCookie {.importc: "xcb_res_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryVersionReply {.importc: "xcb_res_query_version_reply".}
proc queryClientsSizeof*(buffer: pointer): cint {.importc: "xcb_res_query_clients_sizeof".}
proc queryClients*(c: ptr XcbConnection): XcbResQueryClientsCookie {.importc: "xcb_res_query_clients".}
proc queryClientsUnchecked*(c: ptr XcbConnection): XcbResQueryClientsCookie {.importc: "xcb_res_query_clients_unchecked".}
proc clients*(R: ptr XcbResQueryClientsReply): ptr UncheckedArray[XcbResClient] {.importc: "xcb_res_query_clients_clients".}
proc clientsLength*(R: ptr XcbResQueryClientsReply): cint {.importc: "xcb_res_query_clients_clients_length".}
proc clientsIterator*(R: ptr XcbResQueryClientsReply): XcbResClientIterator {.importc: "xcb_res_query_clients_clients_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryClientsCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryClientsReply {.importc: "xcb_res_query_clients_reply".}
proc queryClientResourcesSizeof*(buffer: pointer): cint {.importc: "xcb_res_query_client_resources_sizeof".}
proc queryClientResources*(c: ptr XcbConnection; xid: uint32): XcbResQueryClientResourcesCookie {.importc: "xcb_res_query_client_resources".}
proc queryClientResourcesUnchecked*(c: ptr XcbConnection; xid: uint32): XcbResQueryClientResourcesCookie {.importc: "xcb_res_query_client_resources_unchecked".}
proc types*(R: ptr XcbResQueryClientResourcesReply): ptr UncheckedArray[XcbResType] {.importc: "xcb_res_query_client_resources_types".}
proc typesLength*(R: ptr XcbResQueryClientResourcesReply): cint {.importc: "xcb_res_query_client_resources_types_length".}
proc typesIterator*(R: ptr XcbResQueryClientResourcesReply): XcbResTypeIterator {.importc: "xcb_res_query_client_resources_types_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryClientResourcesCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryClientResourcesReply {.importc: "xcb_res_query_client_resources_reply".}
proc queryClientPixmapBytes*(c: ptr XcbConnection; xid: uint32): XcbResQueryClientPixmapBytesCookie {.importc: "xcb_res_query_client_pixmap_bytes".}
proc queryClientPixmapBytesUnchecked*(c: ptr XcbConnection; xid: uint32): XcbResQueryClientPixmapBytesCookie {.importc: "xcb_res_query_client_pixmap_bytes_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryClientPixmapBytesCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryClientPixmapBytesReply {.importc: "xcb_res_query_client_pixmap_bytes_reply".}
proc queryClientIdsSizeof*(buffer: pointer): cint {.importc: "xcb_res_query_client_ids_sizeof".}
proc queryClientIds*(c: ptr XcbConnection; numSpecs: uint32; specs: ptr XcbResClientIdSpec): XcbResQueryClientIdsCookie {.importc: "xcb_res_query_client_ids".}
proc queryClientIdsUnchecked*(c: ptr XcbConnection; numSpecs: uint32; specs: ptr XcbResClientIdSpec): XcbResQueryClientIdsCookie {.importc: "xcb_res_query_client_ids_unchecked".}
proc idsLength*(R: ptr XcbResQueryClientIdsReply): cint {.importc: "xcb_res_query_client_ids_ids_length".}
proc idsIterator*(R: ptr XcbResQueryClientIdsReply): XcbResClientIdValueIterator {.importc: "xcb_res_query_client_ids_ids_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryClientIdsCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryClientIdsReply {.importc: "xcb_res_query_client_ids_reply".}
proc queryResourceBytesSizeof*(buffer: pointer): cint {.importc: "xcb_res_query_resource_bytes_sizeof".}
proc queryResourceBytes*(c: ptr XcbConnection; client: uint32; numSpecs: uint32; specs: ptr XcbResResourceIdSpec): XcbResQueryResourceBytesCookie {.importc: "xcb_res_query_resource_bytes".}
proc queryResourceBytesUnchecked*(c: ptr XcbConnection; client: uint32; numSpecs: uint32; specs: ptr XcbResResourceIdSpec): XcbResQueryResourceBytesCookie {.importc: "xcb_res_query_resource_bytes_unchecked".}
proc idsLength*(R: ptr XcbResQueryResourceBytesReply): cint {.importc: "xcb_res_query_resource_bytes_sizes_length".}
proc idsIterator*(R: ptr XcbResQueryResourceBytesReply): XcbResResourceSizeValueIterator {.importc: "xcb_res_query_resource_bytes_sizes_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbResQueryResourceBytesCookie; e: ptr ptr XcbGenericError): ptr XcbResQueryResourceBytesReply {.importc: "xcb_res_query_resource_bytes_reply".}

{.pop.}
{.pop.}
