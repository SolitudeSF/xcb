import ./xcb

const
  xcbRecordMajorVersion* = 1
  xcbRecordMinorVersion* = 13
  xcbRecordBadContext* = 0
  xcbRecordQueryVersion* = 0
  xcbRecordCreateContext* = 1
  xcbRecordRegisterClients* = 2
  xcbRecordUnregisterClients* = 3
  xcbRecordGetContext* = 4
  xcbRecordEnableContext* = 5
  xcbRecordDisableContext* = 6
  xcbRecordFreeContext* = 7

{.passl: "-lxcb-record".}
{.push header: "xcb/record.h".}

var xcbRecordId* {.extern: "xcb_record_id".}: XcbExtension

type
  XcbRecordContext* {.importc: "xcb_record_context_t".} = distinct uint32
  XcbRecordElementHeader* {.importc: "xcb_record_element_header_t".} = distinct uint8
  XcbRecordClientSpec* {.importc: "xcb_record_client_spec_t".} = distinct uint32

  XcbRecordContextIterator* {.importc: "xcb_record_context_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordContext]
    rem*: cint
    index*: cint

  XcbRecordRange8* {.importc: "xcb_record_range8_t", bycopy.} = object
    first*: uint8
    last*: uint8

  XcbRecordRange8Iterator* {.importc: "xcb_record_range8_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordRange8]
    rem*: cint
    index*: cint

  XcbRecordRange16* {.importc: "xcb_record_range16_t", bycopy.} = object
    first*: uint16
    last*: uint16

  XcbRecordRange16Iterator* {.importc: "xcb_record_range16_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordRange16]
    rem*: cint
    index*: cint

  XcbRecordExtRange* {.importc: "xcb_record_ext_range_t", bycopy.} = object
    major*: XcbRecordRange8
    minor*: XcbRecordRange16

  XcbRecordExtRangeIterator* {.importc: "xcb_record_ext_range_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordExtRange]
    rem*: cint
    index*: cint

  XcbRecordRange* {.importc: "xcb_record_range_t", bycopy.} = object
    coreRequests* {.importc: "core_requests".}: XcbRecordRange8
    coreReplies* {.importc: "core_replies".}: XcbRecordRange8
    extRequests* {.importc: "ext_requests".}: XcbRecordExtRange
    extReplies* {.importc: "ext_replies".}: XcbRecordExtRange
    deliveredEvents* {.importc: "delivered_events".}: XcbRecordRange8
    deviceEvents* {.importc: "device_events".}: XcbRecordRange8
    errors*: XcbRecordRange8
    clientStarted* {.importc: "client_started".}: uint8
    clientDied* {.importc: "client_died".}: uint8

  XcbRecordRangeIterator* {.importc: "xcb_record_range_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordRange]
    rem*: cint
    index*: cint

  XcbRecordElementHeaderIterator* {.importc: "xcb_record_element_header_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordElementHeader]
    rem*: cint
    index*: cint

  XcbRecordHType* {.importc: "xcb_record_h_type_t".} = enum
    xcbRecordHTypeFromServerTime = 1, xcbRecordHTypeFromClientTime = 2,
    xcbRecordHTypeFromClientSequence = 4

  XcbRecordClientSpecIterator* {.importc: "xcb_record_client_spec_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordClientSpec]
    rem*: cint
    index*: cint

  XcbRecordCs* {.importc: "xcb_record_cs_t".} = enum
    xcbRecordCsCurrentClients = 1, xcbRecordCsFutureClients = 2,
    xcbRecordCsAllClients = 3

  XcbRecordClientInfo* {.importc: "xcb_record_client_info_t", bycopy.} = object
    clientResource* {.importc: "client_resource".}: XcbRecordClientSpec
    numRanges* {.importc: "num_ranges".}: uint32

  XcbRecordClientInfoIterator* {.importc: "xcb_record_client_info_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbRecordClientInfo]
    rem*: cint
    index*: cint

  XcbRecordBadContextError* {.importc: "xcb_record_bad_context_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    invalidRecord* {.importc: "invalid_record".}: uint32

  XcbRecordQueryVersionCookie* {.importc: "xcb_record_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRecordQueryVersionRequest* {.importc: "xcb_record_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16

  XcbRecordQueryVersionReply* {.importc: "xcb_record_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16

  XcbRecordCreateContextRequest* {.importc: "xcb_record_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext
    elementHeader* {.importc: "element_header".}: XcbRecordElementHeader
    pad0: array[3, uint8]
    numClientSpecs* {.importc: "num_client_specs".}: uint32
    numRanges* {.importc: "num_ranges".}: uint32

  XcbRecordRegisterClientsRequest* {.importc: "xcb_record_register_clients_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext
    elementHeader* {.importc: "element_header".}: XcbRecordElementHeader
    pad0: array[3, uint8]
    numClientSpecs* {.importc: "num_client_specs".}: uint32
    numRanges* {.importc: "num_ranges".}: uint32

  XcbRecordUnregisterClientsRequest* {.importc: "xcb_record_unregister_clients_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext
    numClientSpecs* {.importc: "num_client_specs".}: uint32

  XcbRecordGetContextCookie* {.importc: "xcb_record_get_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRecordGetContextRequest* {.importc: "xcb_record_get_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext

  XcbRecordGetContextReply* {.importc: "xcb_record_get_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    enabled*: uint8
    sequence*: uint16
    length*: uint32
    elementHeader* {.importc: "element_header".}: XcbRecordElementHeader
    pad0: array[3, uint8]
    numInterceptedClients* {.importc: "num_intercepted_clients".}: uint32
    pad1: array[16, uint8]

  XcbRecordEnableContextCookie* {.importc: "xcb_record_enable_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbRecordEnableContextRequest* {.importc: "xcb_record_enable_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext

  XcbRecordEnableContextReply* {.importc: "xcb_record_enable_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    category*: uint8
    sequence*: uint16
    length*: uint32
    elementHeader* {.importc: "element_header".}: XcbRecordElementHeader
    clientSwapped* {.importc: "client_swapped".}: uint8
    pad0: array[2, uint8]
    xidBase* {.importc: "xid_base".}: uint32
    serverTime* {.importc: "server_time".}: uint32
    recSequenceNum* {.importc: "rec_sequence_num".}: uint32
    pad1: array[8, uint8]

  XcbRecordDisableContextRequest* {.importc: "xcb_record_disable_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext

  XcbRecordFreeContextRequest* {.importc: "xcb_record_free_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbRecordContext

{.push cdecl.}

proc next*(i: ptr XcbRecordContextIterator) {.importc: "xcb_record_context_next".}
proc iterEnd*(i: XcbRecordContextIterator): XcbGenericIterator {.importc: "xcb_record_context_end".}
proc next*(i: ptr XcbRecordRange8Iterator) {.importc: "xcb_record_range_8_next".}
proc iterEnd*(i: XcbRecordRange8Iterator): XcbGenericIterator {.importc: "xcb_record_range_8_end".}
proc next*(i: ptr XcbRecordRange16Iterator) {.importc: "xcb_record_range_16_next".}
proc iterEnd*(i: XcbRecordRange16Iterator): XcbGenericIterator {.importc: "xcb_record_range_16_end".}
proc next*(i: ptr XcbRecordExtRangeIterator) {.importc: "xcb_record_ext_range_next".}
proc iterEnd*(i: XcbRecordExtRangeIterator): XcbGenericIterator {.importc: "xcb_record_ext_range_end".}
proc next*(i: ptr XcbRecordRangeIterator) {.importc: "xcb_record_range_next".}
proc iterEnd*(i: XcbRecordRangeIterator): XcbGenericIterator {.importc: "xcb_record_range_end".}
proc next*(i: ptr XcbRecordElementHeaderIterator) {.importc: "xcb_record_element_header_next".}
proc iterEnd*(i: XcbRecordElementHeaderIterator): XcbGenericIterator {.importc: "xcb_record_element_header_end".}
proc next*(i: ptr XcbRecordClientSpecIterator) {.importc: "xcb_record_client_spec_next".}
proc iterEnd*(i: XcbRecordClientSpecIterator): XcbGenericIterator {.importc: "xcb_record_client_spec_end".}
proc clientInfoSizeof*(buffer: pointer): cint {.importc: "xcb_record_client_info_sizeof".}
proc ranges*(R: ptr XcbRecordClientInfo): ptr UncheckedArray[XcbRecordRange] {.importc: "xcb_record_client_info_ranges".}
proc rangesLength*(R: ptr XcbRecordClientInfo): cint {.importc: "xcb_record_client_info_ranges_length".}
proc rangesIterator*(R: ptr XcbRecordClientInfo): XcbRecordRangeIterator {.importc: "xcb_record_client_info_ranges_iterator".}
proc next*(i: ptr XcbRecordClientInfoIterator) {.importc: "xcb_record_client_info_next".}
proc iterEnd*(i: XcbRecordClientInfoIterator): XcbGenericIterator {.importc: "xcb_record_client_info_end".}
proc recordQueryVersion*(c: ptr XcbConnection; majorVersion: uint16; minorVersion: uint16): XcbRecordQueryVersionCookie {.importc: "xcb_record_query_version".}
proc recordQueryVersionUnchecked*(c: ptr XcbConnection; majorVersion: uint16; minorVersion: uint16): XcbRecordQueryVersionCookie {.importc: "xcb_record_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbRecordQueryVersionCookie;  e: ptr ptr XcbGenericError): ptr XcbRecordQueryVersionReply {.importc: "xcb_record_query_version_reply".}
proc createContextSizeof*(buffer: pointer): cint {.importc: "xcb_record_create_context_sizeof".}
proc createContextChecked*(c: ptr XcbConnection; context: XcbRecordContext; elementHeader: XcbRecordElementHeader; numClientSpecs: uint32; numRanges: uint32; clientSpecs: ptr XcbRecordClientSpec; ranges: ptr XcbRecordRange): XcbVoidCookie {.discardable, importc: "xcb_record_create_context_checked".}
proc createContext*(c: ptr XcbConnection; context: XcbRecordContext; elementHeader: XcbRecordElementHeader; numClientSpecs: uint32; numRanges: uint32; clientSpecs: ptr XcbRecordClientSpec; ranges: ptr XcbRecordRange): XcbVoidCookie {.discardable, importc: "xcb_record_create_context".}
proc clientSpecs*(R: ptr XcbRecordCreateContextRequest): ptr UncheckedArray[XcbRecordClientSpec] {.importc: "xcb_record_create_context_client_specs".}
proc clientSpecsLength*(R: ptr XcbRecordCreateContextRequest): cint {.importc: "xcb_record_create_context_client_specs_length".}
proc clientSpecsEnd*(R: ptr XcbRecordCreateContextRequest): XcbGenericIterator {.importc: "xcb_record_create_context_client_specs_end".}
proc ranges*(R: ptr XcbRecordCreateContextRequest): ptr UncheckedArray[XcbRecordRange] {.importc: "xcb_record_create_context_ranges".}
proc rangesLength*(R: ptr XcbRecordCreateContextRequest): cint {.importc: "xcb_record_create_context_ranges_length".}
proc rangesIterator*(R: ptr XcbRecordCreateContextRequest): XcbRecordRangeIterator {.importc: "xcb_record_create_context_ranges_iterator".}
proc registerClientsSizeof*(buffer: pointer): cint {.importc: "xcb_record_register_clients_sizeof".}
proc registerClientsChecked*(c: ptr XcbConnection; context: XcbRecordContext; elementHeader: XcbRecordElementHeader; numClientSpecs: uint32; numRanges: uint32; clientSpecs: ptr XcbRecordClientSpec; ranges: ptr XcbRecordRange): XcbVoidCookie {.discardable, importc: "xcb_record_register_clients_checked".}
proc registerClients*(c: ptr XcbConnection; context: XcbRecordContext; elementHeader: XcbRecordElementHeader; numClientSpecs: uint32; numRanges: uint32; clientSpecs: ptr XcbRecordClientSpec; ranges: ptr XcbRecordRange): XcbVoidCookie {.discardable, importc: "xcb_record_register_clients".}
proc clientSpecs*(R: ptr XcbRecordRegisterClientsRequest): ptr UncheckedArray[XcbRecordClientSpec] {.importc: "xcb_record_register_clients_client_specs".}
proc clientSpecsLength*(R: ptr XcbRecordRegisterClientsRequest): cint {.importc: "xcb_record_register_clients_client_specs_length".}
proc clientSpecsEnd*(R: ptr XcbRecordRegisterClientsRequest): XcbGenericIterator {.importc: "xcb_record_register_clients_client_specs_end".}
proc ranges*(R: ptr XcbRecordRegisterClientsRequest): ptr UncheckedArray[XcbRecordRange] {.importc: "xcb_record_register_clients_ranges".}
proc rangesLength*(R: ptr XcbRecordRegisterClientsRequest): cint {.importc: "xcb_record_register_clients_ranges_length".}
proc rangesIterator*(R: ptr XcbRecordRegisterClientsRequest): XcbRecordRangeIterator {.importc: "xcb_record_register_clients_ranges_iterator".}
proc unregisterClientsSizeof*(buffer: pointer): cint {.importc: "xcb_record_unregister_clients_sizeof".}
proc unregisterClientsChecked*(c: ptr XcbConnection; context: XcbRecordContext; numClientSpecs: uint32; clientSpecs: ptr XcbRecordClientSpec): XcbVoidCookie {.discardable, importc: "xcb_record_unregister_clients_checked".}
proc unregisterClients*(c: ptr XcbConnection; context: XcbRecordContext; numClientSpecs: uint32; clientSpecs: ptr XcbRecordClientSpec): XcbVoidCookie {.discardable, importc: "xcb_record_unregister_clients".}
proc clientSpecs*(R: ptr XcbRecordUnregisterClientsRequest): ptr UncheckedArray[XcbRecordClientSpec] {.importc: "xcb_record_unregister_clients_client_specs".}
proc clientSpecsLength*(R: ptr XcbRecordUnregisterClientsRequest): cint {.importc: "xcb_record_unregister_clients_client_specs_length".}
proc clientSpecsEnd*(R: ptr XcbRecordUnregisterClientsRequest): XcbGenericIterator {.importc: "xcb_record_unregister_clients_client_specs_end".}
proc getContextSizeof*(buffer: pointer): cint {.importc: "xcb_record_get_context_sizeof".}
proc getContext*(c: ptr XcbConnection; context: XcbRecordContext): XcbRecordGetContextCookie {.importc: "xcb_record_get_context".}
proc getContextUnchecked*(c: ptr XcbConnection; context: XcbRecordContext): XcbRecordGetContextCookie {.importc: "xcb_record_get_context_unchecked".}
proc interceptedClientsLength*(R: ptr XcbRecordGetContextReply): cint {.importc: "xcb_record_get_context_intercepted_clients_length".}
proc interceptedClientsIterator*(R: ptr XcbRecordGetContextReply): XcbRecordClientInfoIterator {.importc: "xcb_record_get_context_intercepted_clients_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbRecordGetContextCookie;  e: ptr ptr XcbGenericError): ptr XcbRecordGetContextReply {.importc: "xcb_record_get_context_reply".}
proc enableContextSizeof*(buffer: pointer): cint {.importc: "xcb_record_enable_context_sizeof".}
proc enable*(c: ptr XcbConnection; context: XcbRecordContext): XcbRecordEnableContextCookie {.importc: "xcb_record_enable_context".}
proc enableUnchecked*(c: ptr XcbConnection; context: XcbRecordContext): XcbRecordEnableContextCookie {.importc: "xcb_record_enable_context_unchecked".}
proc data*(R: ptr XcbRecordEnableContextReply): ptr UncheckedArray[uint8] {.importc: "xcb_record_enable_context_data".}
proc dataLength*(R: ptr XcbRecordEnableContextReply): cint {.importc: "xcb_record_enable_context_data_length".}
proc dataEnd*(R: ptr XcbRecordEnableContextReply): XcbGenericIterator {.importc: "xcb_record_enable_context_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbRecordEnableContextCookie;  e: ptr ptr XcbGenericError): ptr XcbRecordEnableContextReply {.importc: "xcb_record_enable_context_reply".}
proc disableChecked*(c: ptr XcbConnection; context: XcbRecordContext): XcbVoidCookie {.discardable, importc: "xcb_record_disable_context_checked".}
proc disable*(c: ptr XcbConnection; context: XcbRecordContext): XcbVoidCookie {.discardable, importc: "xcb_record_disable_context".}
proc freeChecked*(c: ptr XcbConnection; context: XcbRecordContext): XcbVoidCookie {.discardable, importc: "xcb_record_free_context_checked".}
proc free*(c: ptr XcbConnection; context: XcbRecordContext): XcbVoidCookie {.discardable, importc: "xcb_record_free_context".}

{.pop.}
{.pop.}
