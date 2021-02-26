import ./xcb

const
  xcbXprintMajorVersion* = 1
  xcbXprintMinorVersion* = 0
  xcbXPrintPrintQueryVersion* = 0
  xcbXPrintPrintGetPrinterList* = 1
  xcbXPrintPrintRehashPrinterList* = 20
  xcbXPrintCreateContext* = 2
  xcbXPrintPrintSetContext* = 3
  xcbXPrintPrintGetContext* = 4
  xcbXPrintPrintDestroyContext* = 5
  xcbXPrintPrintGetScreenOfContext* = 6
  xcbXPrintPrintStartJob* = 7
  xcbXPrintPrintEndJob* = 8
  xcbXPrintPrintStartDoc* = 9
  xcbXPrintPrintEndDoc* = 10
  xcbXPrintPrintPutDocumentData* = 11
  xcbXPrintPrintGetDocumentData* = 12
  xcbXPrintPrintStartPage* = 13
  xcbXPrintPrintEndPage* = 14
  xcbXPrintPrintSelectInput* = 15
  xcbXPrintPrintInputSelected* = 16
  xcbXPrintPrintGetAttributes* = 17
  xcbXPrintPrintGetOneAttributes* = 19
  xcbXPrintPrintSetAttributes* = 18
  xcbXPrintPrintGetPageDimensions* = 21
  xcbXPrintPrintQueryScreens* = 22
  xcbXPrintPrintSetImageResolution* = 23
  xcbXPrintPrintGetImageResolution* = 24
  xcbXPrintNotify* = 0
  xcbXPrintAttributNotify* = 1
  xcbXPrintBadContext* = 0
  xcbXPrintBadSequence* = 1

{.push header: "xcb/xprint.h".}

var xcbXPrintId* {.extern: "xcb_x_print_id".}: XcbExtension

type
  XcbXPrintPcontext* {.importc: "xcb_x_print_pcontext_t".} = distinct uint32
  XcbXPrintString8* {.importc: "xcb_x_print_string8_t".} = char

  XcbXPrintString8Iterator* {.importc: "xcb_x_print_string8_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXPrintString8]
    rem*: cint
    index*: cint

  XcbXPrintPrinter* {.importc: "xcb_x_print_printer_t", bycopy.} = object
    nameLen*: uint32
    descLen*: uint32

  XcbXPrintPrinterIterator* {.importc: "xcb_x_print_printer_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXPrintPrinter]
    rem*: cint
    index*: cint

  XcbXPrintPcontextIterator* {.importc: "xcb_x_print_pcontext_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbXPrintPcontext]
    rem*: cint
    index*: cint

  XcbXPrintGetDoc* {.importc: "xcb_x_print_get_doc_t".} = enum
    xcbXPrintGetDocFinished = 0, xcbXPrintGetDocSecondConsumer = 1

  XcbXPrintEvMask* {.importc: "xcb_x_print_ev_mask_t".} = enum
    xcbXPrintEvMaskNoEventMask = 0, xcbXPrintEvMaskPrintMask = 1,
    xcbXPrintEvMaskAttributeMask = 2

  XcbXPrintDetail* {.importc: "xcb_x_print_detail_t".} = enum
    xcbXPrintDetailStartJobNotify = 1, xcbXPrintDetailEndJobNotify = 2,
    xcbXPrintDetailStartDocNotify = 3, xcbXPrintDetailEndDocNotify = 4,
    xcbXPrintDetailStartPageNotify = 5,
    xcbXPrintDetailEndPageNotify = 6

  XcbXPrintAttr* {.importc: "xcb_x_print_attr_t".} = enum
    xcbXPrintAttrJobAttr = 1, xcbXPrintAttrDocAttr = 2,
    xcbXPrintAttrPageAttr = 3, xcbXPrintAttrPrinterAttr = 4,
    xcbXPrintAttrServerAttr = 5, xcbXPrintAttrMediumAttr = 6,
    xcbXPrintAttrSpoolerAttr = 7

  XcbXPrintPrintQueryVersionCookie* {.importc: "xcb_x_print_print_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintQueryVersionRequest* {.importc: "xcb_x_print_print_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXPrintPrintQueryVersionReply* {.importc: "xcb_x_print_print_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint16
    minorVersion* {.importc: "minor_version".}: uint16

  XcbXPrintPrintGetPrinterListCookie* {.importc: "xcb_x_print_print_get_printer_list_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetPrinterListRequest* {.importc: "xcb_x_print_print_get_printer_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    printerNameLen*: uint32
    localeLen*: uint32

  XcbXPrintPrintGetPrinterListReply* {.importc: "xcb_x_print_print_get_printer_list_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    listCount*: uint32
    pad1: array[20, uint8]

  XcbXPrintPrintRehashPrinterListRequest* {.importc: "xcb_x_print_print_rehash_printer_list_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXPrintCreateContextRequest* {.importc: "xcb_x_print_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextId* {.importc: "context_id".}: uint32
    printerNameLen*: uint32
    localeLen*: uint32

  XcbXPrintPrintSetContextRequest* {.importc: "xcb_x_print_print_set_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: uint32

  XcbXPrintPrintGetContextCookie* {.importc: "xcb_x_print_print_get_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetContextRequest* {.importc: "xcb_x_print_print_get_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXPrintPrintGetContextReply* {.importc: "xcb_x_print_print_get_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    context*: uint32

  XcbXPrintPrintDestroyContextRequest* {.importc: "xcb_x_print_print_destroy_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: uint32

  XcbXPrintPrintGetScreenOfContextCookie* {.importc: "xcb_x_print_print_get_screen_of_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetScreenOfContextRequest* {.importc: "xcb_x_print_print_get_screen_of_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXPrintPrintGetScreenOfContextReply* {.importc: "xcb_x_print_print_get_screen_of_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    root*: XcbWindow

  XcbXPrintPrintStartJobRequest* {.importc: "xcb_x_print_print_start_job_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    outputMode* {.importc: "output_mode".}: uint8

  XcbXPrintPrintEndJobRequest* {.importc: "xcb_x_print_print_end_job_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cancel*: uint8

  XcbXPrintPrintStartDocRequest* {.importc: "xcb_x_print_print_start_doc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    driverMode* {.importc: "driver_mode".}: uint8

  XcbXPrintPrintEndDocRequest* {.importc: "xcb_x_print_print_end_doc_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cancel*: uint8

  XcbXPrintPrintPutDocumentDataRequest* {.importc: "xcb_x_print_print_put_document_data_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    lenData* {.importc: "len_data".}: uint32
    lenFmt* {.importc: "len_fmt".}: uint16
    lenOptions* {.importc: "len_options".}: uint16

  XcbXPrintPrintGetDocumentDataCookie* {.importc: "xcb_x_print_print_get_document_data_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetDocumentDataRequest* {.importc: "xcb_x_print_print_get_document_data_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    maxBytes* {.importc: "max_bytes".}: uint32

  XcbXPrintPrintGetDocumentDataReply* {.importc: "xcb_x_print_print_get_document_data_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    statusCode* {.importc: "status_code".}: uint32
    finishedFlag* {.importc: "finished_flag".}: uint32
    dataLen*: uint32
    pad1: array[12, uint8]

  XcbXPrintPrintStartPageRequest* {.importc: "xcb_x_print_print_start_page_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbXPrintPrintEndPageRequest* {.importc: "xcb_x_print_print_end_page_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    cancel*: uint8
    pad0: array[3, uint8]

  XcbXPrintPrintSelectInputRequest* {.importc: "xcb_x_print_print_select_input_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    eventMask* {.importc: "event_mask".}: uint32

  XcbXPrintPrintInputSelectedCookie* {.importc: "xcb_x_print_print_input_selected_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintInputSelectedRequest* {.importc: "xcb_x_print_print_input_selected_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext

  XcbXPrintPrintInputSelectedReply* {.importc: "xcb_x_print_print_input_selected_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    eventMask* {.importc: "event_mask".}: uint32
    allEventsMask* {.importc: "all_events_mask".}: uint32

  XcbXPrintPrintGetAttributesCookie* {.importc: "xcb_x_print_print_get_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetAttributesRequest* {.importc: "xcb_x_print_print_get_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    pool*: uint8
    pad0: array[3, uint8]

  XcbXPrintPrintGetAttributesReply* {.importc: "xcb_x_print_print_get_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    stringLen*: uint32
    pad1: array[20, uint8]

  XcbXPrintPrintGetOneAttributesCookie* {.importc: "xcb_x_print_print_get_one_attributes_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetOneAttributesRequest* {.importc: "xcb_x_print_print_get_one_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    nameLen*: uint32
    pool*: uint8
    pad0: array[3, uint8]

  XcbXPrintPrintGetOneAttributesReply* {.importc: "xcb_x_print_print_get_one_attributes_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    valueLen*: uint32
    pad1: array[20, uint8]

  XcbXPrintPrintSetAttributesRequest* {.importc: "xcb_x_print_print_set_attributes_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    stringLen*: uint32
    pool*: uint8
    rule*: uint8
    pad0: array[2, uint8]

  XcbXPrintPrintGetPageDimensionsCookie* {.importc: "xcb_x_print_print_get_page_dimensions_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetPageDimensionsRequest* {.importc: "xcb_x_print_print_get_page_dimensions_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext

  XcbXPrintPrintGetPageDimensionsReply* {.importc: "xcb_x_print_print_get_page_dimensions_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    width*: uint16
    height*: uint16
    offsetX* {.importc: "offset_x".}: uint16
    offsetY* {.importc: "offset_y".}: uint16
    reproducibleWidth* {.importc: "reproducible_width".}: uint16
    reproducibleHeight* {.importc: "reproducible_height".}: uint16

  XcbXPrintPrintQueryScreensCookie* {.importc: "xcb_x_print_print_query_screens_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintQueryScreensRequest* {.importc: "xcb_x_print_print_query_screens_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbXPrintPrintQueryScreensReply* {.importc: "xcb_x_print_print_query_screens_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    listCount*: uint32
    pad1: array[20, uint8]

  XcbXPrintPrintSetImageResolutionCookie* {.importc: "xcb_x_print_print_set_image_resolution_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintSetImageResolutionRequest* {.importc: "xcb_x_print_print_set_image_resolution_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext
    imageResolution* {.importc: "image_resolution".}: uint16

  XcbXPrintPrintSetImageResolutionReply* {.importc: "xcb_x_print_print_set_image_resolution_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    status*: uint8
    sequence*: uint16
    length*: uint32
    previousResolutions* {.importc: "previous_resolutions".}: uint16

  XcbXPrintPrintGetImageResolutionCookie* {.importc: "xcb_x_print_print_get_image_resolution_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbXPrintPrintGetImageResolutionRequest* {.importc: "xcb_x_print_print_get_image_resolution_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    context*: XcbXPrintPcontext

  XcbXPrintPrintGetImageResolutionReply* {.importc: "xcb_x_print_print_get_image_resolution_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    imageResolution* {.importc: "image_resolution".}: uint16

  XcbXPrintNotifyEvent* {.importc: "xcb_x_print_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    context*: XcbXPrintPcontext
    cancel*: uint8

  XcbXPrintAttributNotifyEvent* {.importc: "xcb_x_print_attribut_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    detail*: uint8
    sequence*: uint16
    context*: XcbXPrintPcontext

  XcbXPrintBadContextError* {.importc: "xcb_x_print_bad_context_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

  XcbXPrintBadSequenceError* {.importc: "xcb_x_print_bad_sequence_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16

{.push cdecl.}

proc next*(i: ptr XcbXPrintString8Iterator) {.importc: "xcb_x_print_string8_next".}
proc iterEnd*(i: XcbXPrintString8Iterator): XcbGenericIterator {.importc: "xcb_x_print_string8_end".}
proc serialize*(buffer: ptr pointer; aux: ptr XcbXPrintPrinter; name: ptr XcbXPrintString8; description: ptr XcbXPrintString8): cint {.importc: "xcb_x_print_printer_serialize".}
proc unserialize*(buffer: pointer; aux: ptr ptr XcbXPrintPrinter): cint {.importc: "xcb_x_print_printer_unserialize".}
proc printerSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_printer_sizeof".}
proc name*(R: ptr XcbXPrintPrinter): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_printer_name".}
proc nameLength*(R: ptr XcbXPrintPrinter): cint {.importc: "xcb_x_print_printer_name_length".}
proc nameEnd*(R: ptr XcbXPrintPrinter): XcbGenericIterator {.importc: "xcb_x_print_printer_name_end".}
proc description*(R: ptr XcbXPrintPrinter): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_printer_description".}
proc descriptionLength*(R: ptr XcbXPrintPrinter): cint {.importc: "xcb_x_print_printer_description_length".}
proc descriptionEnd*(R: ptr XcbXPrintPrinter): XcbGenericIterator {.importc: "xcb_x_print_printer_description_end".}
proc next*(i: ptr XcbXPrintPrinterIterator) {.importc: "xcb_x_print_printer_next".}
proc iterEnd*(i: XcbXPrintPrinterIterator): XcbGenericIterator {.importc: "xcb_x_print_printer_end".}
proc next*(i: ptr XcbXPrintPcontextIterator) {.importc: "xcb_x_print_pcontext_next".}
proc iterEnd*(i: XcbXPrintPcontextIterator): XcbGenericIterator {.importc: "xcb_x_print_pcontext_end".}
proc printQueryVersion*(c: ptr XcbConnection): XcbXPrintPrintQueryVersionCookie {.importc: "xcb_x_print_print_query_version".}
proc printQueryVersionUnchecked*(c: ptr XcbConnection): XcbXPrintPrintQueryVersionCookie {.importc: "xcb_x_print_print_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintQueryVersionReply {.importc: "xcb_x_print_print_query_version_reply".}
proc printGetPrinterListSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_get_printer_list_sizeof".}
proc getPrinterList*(c: ptr XcbConnection; printerNameLen: uint32; localeLen: uint32; printerName: ptr XcbXPrintString8; locale: ptr XcbXPrintString8): XcbXPrintPrintGetPrinterListCookie {.importc: "xcb_x_print_print_get_printer_list".}
proc getPrinterListUnchecked*(c: ptr XcbConnection; printerNameLen: uint32; localeLen: uint32; printerName: ptr XcbXPrintString8; locale: ptr XcbXPrintString8): XcbXPrintPrintGetPrinterListCookie {.importc: "xcb_x_print_print_get_printer_list_unchecked".}
proc printersLength*(R: ptr XcbXPrintPrintGetPrinterListReply): cint {.importc: "xcb_x_print_print_get_printer_list_printers_length".}
proc printersIterator*(R: ptr XcbXPrintPrintGetPrinterListReply): XcbXPrintPrinterIterator {.importc: "xcb_x_print_print_get_printer_list_printers_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetPrinterListCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetPrinterListReply {.importc: "xcb_x_print_print_get_printer_list_reply".}
proc rehashPrinterListChecked*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_rehash_printer_list_checked".}
proc rehashPrinterList*(c: ptr XcbConnection): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_rehash_printer_list".}
proc createContextSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_create_context_sizeof".}
proc createContextChecked*(c: ptr XcbConnection; contextId: uint32; printerNameLen: uint32; localeLen: uint32; printerName: ptr XcbXPrintString8; locale: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_create_context_checked".}
proc createContext*(c: ptr XcbConnection; contextId: uint32; printerNameLen: uint32; localeLen: uint32; printerName: ptr XcbXPrintString8; locale: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_create_context".}
proc printerName*(R: ptr XcbXPrintCreateContextRequest): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_create_context_printer_name".}
proc printerNameLength*(R: ptr XcbXPrintCreateContextRequest): cint {.importc: "xcb_x_print_create_context_printer_name_length".}
proc printerNameEnd*(R: ptr XcbXPrintCreateContextRequest): XcbGenericIterator {.importc: "xcb_x_print_create_context_printer_name_end".}
proc locale*(R: ptr XcbXPrintCreateContextRequest): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_create_context_locale".}
proc localeLength*(R: ptr XcbXPrintCreateContextRequest): cint {.importc: "xcb_x_print_create_context_locale_length".}
proc localeEnd*(R: ptr XcbXPrintCreateContextRequest): XcbGenericIterator {.importc: "xcb_x_print_create_context_locale_end".}
proc printSetContextChecked*(c: ptr XcbConnection; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_set_context_checked".}
proc printSetContext*(c: ptr XcbConnection; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_set_context".}
proc printGetContext*(c: ptr XcbConnection): XcbXPrintPrintGetContextCookie {.importc: "xcb_x_print_print_get_context".}
proc printGetContextUnchecked*(c: ptr XcbConnection): XcbXPrintPrintGetContextCookie {.importc: "xcb_x_print_print_get_context_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetContextCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetContextReply {.importc: "xcb_x_print_print_get_context_reply".}
proc printDestroyContextChecked*(c: ptr XcbConnection; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_destroy_context_checked".}
proc printDestroyContext*(c: ptr XcbConnection; context: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_destroy_context".}
proc printGetScreenOfContext*(c: ptr XcbConnection): XcbXPrintPrintGetScreenOfContextCookie {.importc: "xcb_x_print_print_get_screen_of_context".}
proc printGetScreenOfContextUnchecked*(c: ptr XcbConnection): XcbXPrintPrintGetScreenOfContextCookie {.importc: "xcb_x_print_print_get_screen_of_context_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetScreenOfContextCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetScreenOfContextReply {.importc: "xcb_x_print_print_get_screen_of_context_reply".}
proc printStartJobChecked*(c: ptr XcbConnection; outputMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_job_checked".}
proc printStartJob*(c: ptr XcbConnection; outputMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_job".}
proc printEndJobChecked*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_job_checked".}
proc printEndJob*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_job".}
proc printStartDocChecked*(c: ptr XcbConnection; driverMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_doc_checked".}
proc printStartDoc*(c: ptr XcbConnection; driverMode: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_doc".}
proc printEndDocChecked*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_doc_checked".}
proc printEndDoc*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_doc".}
proc printPutDocumentDataSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_put_document_data_sizeof".}
proc putDocumentDataChecked*(c: ptr XcbConnection; drawable: XcbDrawable; lenData: uint32; lenFmt: uint16; lenOptions: uint16; data: ptr uint8; docFormat: ptr XcbXPrintString8; options: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_put_document_data_checked".}
proc putDocumentData*(c: ptr XcbConnection; drawable: XcbDrawable; lenData: uint32; lenFmt: uint16; lenOptions: uint16; data: ptr uint8; docFormat: ptr XcbXPrintString8; options: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_put_document_data".}
proc data*(R: ptr XcbXPrintPrintPutDocumentDataRequest): ptr UncheckedArray[uint8] {.importc: "xcb_x_print_print_put_document_data_data".}
proc dataLength*(R: ptr XcbXPrintPrintPutDocumentDataRequest): cint {.importc: "xcb_x_print_print_put_document_data_data_length".}
proc dataEnd*(R: ptr XcbXPrintPrintPutDocumentDataRequest): XcbGenericIterator {.importc: "xcb_x_print_print_put_document_data_data_end".}
proc docFormat*(R: ptr XcbXPrintPrintPutDocumentDataRequest): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_print_put_document_data_doc_format".}
proc docFormatLength*(R: ptr XcbXPrintPrintPutDocumentDataRequest): cint {.importc: "xcb_x_print_print_put_document_data_doc_format_length".}
proc docFormatEnd*(R: ptr XcbXPrintPrintPutDocumentDataRequest): XcbGenericIterator {.importc: "xcb_x_print_print_put_document_data_doc_format_end".}
proc options*(R: ptr XcbXPrintPrintPutDocumentDataRequest): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_print_put_document_data_options".}
proc optionsLength*(R: ptr XcbXPrintPrintPutDocumentDataRequest): cint {.importc: "xcb_x_print_print_put_document_data_options_length".}
proc optionsEnd*(R: ptr XcbXPrintPrintPutDocumentDataRequest): XcbGenericIterator {.importc: "xcb_x_print_print_put_document_data_options_end".}
proc printGetDocumentDataSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_get_document_data_sizeof".}
proc getDocumentData*(c: ptr XcbConnection; context: XcbXPrintPcontext; maxBytes: uint32): XcbXPrintPrintGetDocumentDataCookie {.importc: "xcb_x_print_print_get_document_data".}
proc getDocumentDataUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; maxBytes: uint32): XcbXPrintPrintGetDocumentDataCookie {.importc: "xcb_x_print_print_get_document_data_unchecked".}
proc data*(R: ptr XcbXPrintPrintGetDocumentDataReply): ptr UncheckedArray[uint8] {.importc: "xcb_x_print_print_get_document_data_data".}
proc dataLength*(R: ptr XcbXPrintPrintGetDocumentDataReply): cint {.importc: "xcb_x_print_print_get_document_data_data_length".}
proc dataEnd*(R: ptr XcbXPrintPrintGetDocumentDataReply): XcbGenericIterator {.importc: "xcb_x_print_print_get_document_data_data_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetDocumentDataCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetDocumentDataReply {.importc: "xcb_x_print_print_get_document_data_reply".}
proc printStartPageChecked*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_page_checked".}
proc printStartPage*(c: ptr XcbConnection; window: XcbWindow): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_start_page".}
proc printEndPageChecked*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_page_checked".}
proc printEndPage*(c: ptr XcbConnection; cancel: uint8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_end_page".}
proc selectInputChecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_select_input_checked".}
proc selectInput*(c: ptr XcbConnection; context: XcbXPrintPcontext; eventMask: uint32): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_select_input".}
proc inputSelected*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintInputSelectedCookie {.importc: "xcb_x_print_print_input_selected".}
proc inputSelectedUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintInputSelectedCookie {.importc: "xcb_x_print_print_input_selected_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintInputSelectedCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintInputSelectedReply {.importc: "xcb_x_print_print_input_selected_reply".}
proc printGetAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_get_attributes_sizeof".}
proc getAttributes*(c: ptr XcbConnection; context: XcbXPrintPcontext; pool: uint8): XcbXPrintPrintGetAttributesCookie {.importc: "xcb_x_print_print_get_attributes".}
proc getAttributesUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; pool: uint8): XcbXPrintPrintGetAttributesCookie {.importc: "xcb_x_print_print_get_attributes_unchecked".}
proc attributes*(R: ptr XcbXPrintPrintGetAttributesReply): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_print_get_attributes_attributes".}
proc attributesLength*(R: ptr XcbXPrintPrintGetAttributesReply): cint {.importc: "xcb_x_print_print_get_attributes_attributes_length".}
proc attributesEnd*(R: ptr XcbXPrintPrintGetAttributesReply): XcbGenericIterator {.importc: "xcb_x_print_print_get_attributes_attributes_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetAttributesReply {.importc: "xcb_x_print_print_get_attributes_reply".}
proc printGetOneAttributesSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_get_one_attributes_sizeof".}
proc getOneAttributes*(c: ptr XcbConnection; context: XcbXPrintPcontext; nameLen: uint32; pool: uint8; name: ptr XcbXPrintString8): XcbXPrintPrintGetOneAttributesCookie {.importc: "xcb_x_print_print_get_one_attributes".}
proc getOneAttributesUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; nameLen: uint32; pool: uint8; name: ptr XcbXPrintString8): XcbXPrintPrintGetOneAttributesCookie {.importc: "xcb_x_print_print_get_one_attributes_unchecked".}
proc value*(R: ptr XcbXPrintPrintGetOneAttributesReply): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_print_get_one_attributes_value".}
proc valueLength*(R: ptr XcbXPrintPrintGetOneAttributesReply): cint {.importc: "xcb_x_print_print_get_one_attributes_value_length".}
proc valueEnd*(R: ptr XcbXPrintPrintGetOneAttributesReply): XcbGenericIterator {.importc: "xcb_x_print_print_get_one_attributes_value_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetOneAttributesCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetOneAttributesReply {.importc: "xcb_x_print_print_get_one_attributes_reply".}
proc printSetAttributesSizeof*(buffer: pointer; attributesLen: uint32): cint {.importc: "xcb_x_print_print_set_attributes_sizeof".}
proc setAttributesChecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; stringLen: uint32; pool: uint8; rule: uint8; attributesLen: uint32; attributes: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_set_attributes_checked".}
proc setAttributes*(c: ptr XcbConnection; context: XcbXPrintPcontext; stringLen: uint32; pool: uint8; rule: uint8; attributesLen: uint32; attributes: ptr XcbXPrintString8): XcbVoidCookie {.discardable, importc: "xcb_x_print_print_set_attributes".}
proc attributes*(R: ptr XcbXPrintPrintSetAttributesRequest): ptr UncheckedArray[XcbXPrintString8] {.importc: "xcb_x_print_print_set_attributes_attributes".}
proc attributesLength*(R: ptr XcbXPrintPrintSetAttributesRequest): cint {.importc: "xcb_x_print_print_set_attributes_attributes_length".}
proc attributesEnd*(R: ptr XcbXPrintPrintSetAttributesRequest): XcbGenericIterator {.importc: "xcb_x_print_print_set_attributes_attributes_end".}
proc getPageDimensions*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintGetPageDimensionsCookie {.importc: "xcb_x_print_print_get_page_dimensions".}
proc getPageDimensionsUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintGetPageDimensionsCookie {.importc: "xcb_x_print_print_get_page_dimensions_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetPageDimensionsCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetPageDimensionsReply {.importc: "xcb_x_print_print_get_page_dimensions_reply".}
proc printQueryScreensSizeof*(buffer: pointer): cint {.importc: "xcb_x_print_print_query_screens_sizeof".}
proc queryScreens*(c: ptr XcbConnection): XcbXPrintPrintQueryScreensCookie {.importc: "xcb_x_print_print_query_screens".}
proc queryScreensUnchecked*(c: ptr XcbConnection): XcbXPrintPrintQueryScreensCookie {.importc: "xcb_x_print_print_query_screens_unchecked".}
proc roots*(R: ptr XcbXPrintPrintQueryScreensReply): ptr UncheckedArray[XcbWindow] {.importc: "xcb_x_print_print_query_screens_roots".}
proc rootsLength*(R: ptr XcbXPrintPrintQueryScreensReply): cint {.importc: "xcb_x_print_print_query_screens_roots_length".}
proc rootsEnd*(R: ptr XcbXPrintPrintQueryScreensReply): XcbGenericIterator {.importc: "xcb_x_print_print_query_screens_roots_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintQueryScreensCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintQueryScreensReply {.importc: "xcb_x_print_print_query_screens_reply".}
proc printSetImageResolution*(c: ptr XcbConnection; context: XcbXPrintPcontext; imageResolution: uint16): XcbXPrintPrintSetImageResolutionCookie {.importc: "xcb_x_print_print_set_image_resolution".}
proc printSetImageResolutionUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext; imageResolution: uint16): XcbXPrintPrintSetImageResolutionCookie {.importc: "xcb_x_print_print_set_image_resolution_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintSetImageResolutionCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintSetImageResolutionReply {.importc: "xcb_x_print_print_set_image_resolution_reply".}
proc getImageResolution*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintGetImageResolutionCookie {.importc: "xcb_x_print_print_get_image_resolution".}
proc getImageResolutionUnchecked*(c: ptr XcbConnection; context: XcbXPrintPcontext): XcbXPrintPrintGetImageResolutionCookie {.importc: "xcb_x_print_print_get_image_resolution_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbXPrintPrintGetImageResolutionCookie; e: ptr ptr XcbGenericError): ptr XcbXPrintPrintGetImageResolutionReply {.importc: "xcb_x_print_print_get_image_resolution_reply".}

{.pop.}
{.pop.}
