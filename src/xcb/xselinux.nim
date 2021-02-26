import ./xcb

const
  xcbSelinuxMajorVersion* = 1
  xcbSelinuxMinorVersion* = 0
  xcbSelinuxQueryVersion* = 0
  xcbSelinuxSetDeviceCreateContext* = 1
  xcbSelinuxGetDeviceCreateContext* = 2
  xcbSelinuxSetDeviceContext* = 3
  xcbSelinuxGetDeviceContext* = 4
  xcbSelinuxSetWindowCreateContext* = 5
  xcbSelinuxGetWindowCreateContext* = 6
  xcbSelinuxGetWindowContext* = 7
  xcbSelinuxSetPropertyCreateContext* = 8
  xcbSelinuxGetPropertyCreateContext* = 9
  xcbSelinuxSetPropertyUseContext* = 10
  xcbSelinuxGetPropertyUseContext* = 11
  xcbSelinuxGetPropertyContext* = 12
  xcbSelinuxGetPropertyDataContext* = 13
  xcbSelinuxListProperties* = 14
  xcbSelinuxSetSelectionCreateContext* = 15
  xcbSelinuxGetSelectionCreateContext* = 16
  xcbSelinuxSetSelectionUseContext* = 17
  xcbSelinuxGetSelectionUseContext* = 18
  xcbSelinuxGetSelectionContext* = 19
  xcbSelinuxGetSelectionDataContext* = 20
  xcbSelinuxListSelections* = 21
  xcbSelinuxGetClientContext* = 22

{.push header: "xcb/xselinux.h".}

var xcbSelinuxId* {.extern: "xcb_selinux_id".}: XcbExtension

type
  XcbSelinuxQueryVersionCookie* {.importc: "xcb_selinux_query_version_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxQueryVersionRequest* {.importc: "xcb_selinux_query_version_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    clientMajor* {.importc: "client_major".}: uint8
    clientMinor* {.importc: "client_minor".}: uint8

  XcbSelinuxQueryVersionReply* {.importc: "xcb_selinux_query_version_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    serverMajor* {.importc: "server_major".}: uint16
    serverMinor* {.importc: "server_minor".}: uint16

  XcbSelinuxSetDeviceCreateContextRequest* {.importc: "xcb_selinux_set_device_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetDeviceCreateContextCookie* {.importc: "xcb_selinux_get_device_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetDeviceCreateContextRequest* {.importc: "xcb_selinux_get_device_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetDeviceCreateContextReply* {.importc: "xcb_selinux_get_device_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxSetDeviceContextRequest* {.importc: "xcb_selinux_set_device_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    device*: uint32
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetDeviceContextCookie* {.importc: "xcb_selinux_get_device_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetDeviceContextRequest* {.importc: "xcb_selinux_get_device_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    device*: uint32

  XcbSelinuxGetDeviceContextReply* {.importc: "xcb_selinux_get_device_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxSetWindowCreateContextRequest* {.importc: "xcb_selinux_set_window_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetWindowCreateContextCookie* {.importc: "xcb_selinux_get_window_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetWindowCreateContextRequest* {.importc: "xcb_selinux_get_window_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetWindowCreateContextReply* {.importc: "xcb_selinux_get_window_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetWindowContextCookie* {.importc: "xcb_selinux_get_window_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetWindowContextRequest* {.importc: "xcb_selinux_get_window_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbSelinuxGetWindowContextReply* {.importc: "xcb_selinux_get_window_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxListItem* {.importc: "xcb_selinux_list_item_t", bycopy.} = object
    name*: XcbAtom
    objectContextLen* {.importc: "object_context_len".}: uint32
    dataContextLen* {.importc: "data_context_len".}: uint32

  XcbSelinuxListItemIterator* {.importc: "xcb_selinux_list_item_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSelinuxListItem]
    rem*: cint
    index*: cint

  XcbSelinuxSetPropertyCreateContextRequest* {.importc: "xcb_selinux_set_property_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetPropertyCreateContextCookie* {.importc: "xcb_selinux_get_property_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetPropertyCreateContextRequest* {.importc: "xcb_selinux_get_property_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetPropertyCreateContextReply* {.importc: "xcb_selinux_get_property_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxSetPropertyUseContextRequest* {.importc: "xcb_selinux_set_property_use_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetPropertyUseContextCookie* {.importc: "xcb_selinux_get_property_use_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetPropertyUseContextRequest* {.importc: "xcb_selinux_get_property_use_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetPropertyUseContextReply* {.importc: "xcb_selinux_get_property_use_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetPropertyContextCookie* {.importc: "xcb_selinux_get_property_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetPropertyContextRequest* {.importc: "xcb_selinux_get_property_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    property*: XcbAtom

  XcbSelinuxGetPropertyContextReply* {.importc: "xcb_selinux_get_property_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetPropertyDataContextCookie* {.importc: "xcb_selinux_get_property_data_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetPropertyDataContextRequest* {.importc: "xcb_selinux_get_property_data_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow
    property*: XcbAtom

  XcbSelinuxGetPropertyDataContextReply* {.importc: "xcb_selinux_get_property_data_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxListPropertiesCookie* {.importc: "xcb_selinux_list_properties_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxListPropertiesRequest* {.importc: "xcb_selinux_list_properties_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    window*: XcbWindow

  XcbSelinuxListPropertiesReply* {.importc: "xcb_selinux_list_properties_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    propertiesLen* {.importc: "properties_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxSetSelectionCreateContextRequest* {.importc: "xcb_selinux_set_selection_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetSelectionCreateContextCookie* {.importc: "xcb_selinux_get_selection_create_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetSelectionCreateContextRequest* {.importc: "xcb_selinux_get_selection_create_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetSelectionCreateContextReply* {.importc: "xcb_selinux_get_selection_create_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxSetSelectionUseContextRequest* {.importc: "xcb_selinux_set_selection_use_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    contextLen* {.importc: "context_len".}: uint32

  XcbSelinuxGetSelectionUseContextCookie* {.importc: "xcb_selinux_get_selection_use_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetSelectionUseContextRequest* {.importc: "xcb_selinux_get_selection_use_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxGetSelectionUseContextReply* {.importc: "xcb_selinux_get_selection_use_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetSelectionContextCookie* {.importc: "xcb_selinux_get_selection_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetSelectionContextRequest* {.importc: "xcb_selinux_get_selection_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    selection*: XcbAtom

  XcbSelinuxGetSelectionContextReply* {.importc: "xcb_selinux_get_selection_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetSelectionDataContextCookie* {.importc: "xcb_selinux_get_selection_data_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetSelectionDataContextRequest* {.importc: "xcb_selinux_get_selection_data_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    selection*: XcbAtom

  XcbSelinuxGetSelectionDataContextReply* {.importc: "xcb_selinux_get_selection_data_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxListSelectionsCookie* {.importc: "xcb_selinux_list_selections_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxListSelectionsRequest* {.importc: "xcb_selinux_list_selections_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSelinuxListSelectionsReply* {.importc: "xcb_selinux_list_selections_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    selectionsLen* {.importc: "selections_len".}: uint32
    pad1: array[20, uint8]

  XcbSelinuxGetClientContextCookie* {.importc: "xcb_selinux_get_client_context_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSelinuxGetClientContextRequest* {.importc: "xcb_selinux_get_client_context_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    resource*: uint32

  XcbSelinuxGetClientContextReply* {.importc: "xcb_selinux_get_client_context_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    contextLen* {.importc: "context_len".}: uint32
    pad1: array[20, uint8]

{.push cdecl.}

proc selinuxQueryVersion*(c: ptr XcbConnection; clientMajor: uint8; clientMinor: uint8): XcbSelinuxQueryVersionCookie {.importc: "xcb_selinux_query_version".}
proc selinuxQueryVersionUnchecked*(c: ptr XcbConnection; clientMajor: uint8; clientMinor: uint8): XcbSelinuxQueryVersionCookie {.importc: "xcb_selinux_query_version_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxQueryVersionCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxQueryVersionReply {.importc: "xcb_selinux_query_version_reply".}
proc setDeviceCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_device_create_context_sizeof".}
proc setDeviceCreateContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_device_create_context_checked".}
proc setDeviceCreateContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_device_create_context".}
proc context*(R: ptr XcbSelinuxSetDeviceCreateContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_device_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetDeviceCreateContextRequest): cint {.importc: "xcb_selinux_set_device_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetDeviceCreateContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_device_create_context_context_end".}
proc getDeviceCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_device_create_context_sizeof".}
proc getDeviceCreateContext*(c: ptr XcbConnection): XcbSelinuxGetDeviceCreateContextCookie {.importc: "xcb_selinux_get_device_create_context".}
proc getDeviceCreateContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetDeviceCreateContextCookie {.importc: "xcb_selinux_get_device_create_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetDeviceCreateContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_device_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetDeviceCreateContextReply): cint {.importc: "xcb_selinux_get_device_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetDeviceCreateContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_device_create_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetDeviceCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetDeviceCreateContextReply {.importc: "xcb_selinux_get_device_create_context_reply".}
proc setDeviceContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_device_context_sizeof".}
proc setDeviceContextChecked*(c: ptr XcbConnection; device: uint32; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_device_context_checked".}
proc setDeviceContext*(c: ptr XcbConnection; device: uint32; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_device_context".}
proc context*(R: ptr XcbSelinuxSetDeviceContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_device_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetDeviceContextRequest): cint {.importc: "xcb_selinux_set_device_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetDeviceContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_device_context_context_end".}
proc getDeviceContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_device_context_sizeof".}
proc getDeviceContext*(c: ptr XcbConnection; device: uint32): XcbSelinuxGetDeviceContextCookie {.importc: "xcb_selinux_get_device_context".}
proc getDeviceContextUnchecked*(c: ptr XcbConnection; device: uint32): XcbSelinuxGetDeviceContextCookie {.importc: "xcb_selinux_get_device_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetDeviceContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_device_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetDeviceContextReply): cint {.importc: "xcb_selinux_get_device_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetDeviceContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_device_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetDeviceContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetDeviceContextReply {.importc: "xcb_selinux_get_device_context_reply".}
proc setWindowCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_window_create_context_sizeof".}
proc setWindowCreateContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_window_create_context_checked".}
proc setWindowCreateContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_window_create_context".}
proc context*(R: ptr XcbSelinuxSetWindowCreateContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_window_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetWindowCreateContextRequest): cint {.importc: "xcb_selinux_set_window_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetWindowCreateContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_window_create_context_context_end".}
proc getWindowCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_window_create_context_sizeof".}
proc getWindowCreateContext*(c: ptr XcbConnection): XcbSelinuxGetWindowCreateContextCookie {.importc: "xcb_selinux_get_window_create_context".}
proc getWindowCreateContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetWindowCreateContextCookie {.importc: "xcb_selinux_get_window_create_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetWindowCreateContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_window_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetWindowCreateContextReply): cint {.importc: "xcb_selinux_get_window_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetWindowCreateContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_window_create_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetWindowCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetWindowCreateContextReply {.importc: "xcb_selinux_get_window_create_context_reply".}
proc getWindowContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_window_context_sizeof".}
proc getWindowContext*(c: ptr XcbConnection; window: XcbWindow): XcbSelinuxGetWindowContextCookie {.importc: "xcb_selinux_get_window_context".}
proc getWindowContextUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbSelinuxGetWindowContextCookie {.importc: "xcb_selinux_get_window_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetWindowContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_window_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetWindowContextReply): cint {.importc: "xcb_selinux_get_window_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetWindowContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_window_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetWindowContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetWindowContextReply {.importc: "xcb_selinux_get_window_context_reply".}
proc listItemSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_list_item_sizeof".}
proc listItemObjectContext*(R: ptr XcbSelinuxListItem): ptr UncheckedArray[char] {.importc: "xcb_selinux_list_item_object_context".}
proc listItemObjectContextLength*(R: ptr XcbSelinuxListItem): cint {.importc: "xcb_selinux_list_item_object_context_length".}
proc listItemObjectContextEnd*(R: ptr XcbSelinuxListItem): XcbGenericIterator {.importc: "xcb_selinux_list_item_object_context_end".}
proc listItemDataContext*(R: ptr XcbSelinuxListItem): ptr UncheckedArray[char] {.importc: "xcb_selinux_list_item_data_context".}
proc listItemDataContextLength*(R: ptr XcbSelinuxListItem): cint {.importc: "xcb_selinux_list_item_data_context_length".}
proc listItemDataContextEnd*(R: ptr XcbSelinuxListItem): XcbGenericIterator {.importc: "xcb_selinux_list_item_data_context_end".}
proc next*(i: ptr XcbSelinuxListItemIterator) {.importc: "xcb_selinux_list_item_next".}
proc iterEnd*(i: XcbSelinuxListItemIterator): XcbGenericIterator {.importc: "xcb_selinux_list_item_end".}
proc setPropertyCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_property_create_context_sizeof".}
proc setPropertyCreateContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_property_create_context_checked".}
proc setPropertyCreateContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_property_create_context".}
proc context*(R: ptr XcbSelinuxSetPropertyCreateContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_property_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetPropertyCreateContextRequest): cint {.importc: "xcb_selinux_set_property_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetPropertyCreateContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_property_create_context_context_end".}
proc getPropertyCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_property_create_context_sizeof".}
proc getPropertyCreateContext*(c: ptr XcbConnection): XcbSelinuxGetPropertyCreateContextCookie {.importc: "xcb_selinux_get_property_create_context".}
proc getPropertyCreateContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetPropertyCreateContextCookie {.importc: "xcb_selinux_get_property_create_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetPropertyCreateContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_property_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetPropertyCreateContextReply): cint {.importc: "xcb_selinux_get_property_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetPropertyCreateContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_property_create_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetPropertyCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetPropertyCreateContextReply {.importc: "xcb_selinux_get_property_create_context_reply".}
proc setPropertyUseContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_property_use_context_sizeof".}
proc setPropertyUseContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_property_use_context_checked".}
proc setPropertyUseContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_property_use_context".}
proc context*(R: ptr XcbSelinuxSetPropertyUseContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_property_use_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetPropertyUseContextRequest): cint {.importc: "xcb_selinux_set_property_use_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetPropertyUseContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_property_use_context_context_end".}
proc getPropertyUseContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_property_use_context_sizeof".}
proc getPropertyUseContext*(c: ptr XcbConnection): XcbSelinuxGetPropertyUseContextCookie {.importc: "xcb_selinux_get_property_use_context".}
proc getPropertyUseContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetPropertyUseContextCookie {.importc: "xcb_selinux_get_property_use_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetPropertyUseContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_property_use_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetPropertyUseContextReply): cint {.importc: "xcb_selinux_get_property_use_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetPropertyUseContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_property_use_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetPropertyUseContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetPropertyUseContextReply {.importc: "xcb_selinux_get_property_use_context_reply".}
proc getPropertyContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_property_context_sizeof".}
proc getPropertyContext*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbSelinuxGetPropertyContextCookie {.importc: "xcb_selinux_get_property_context".}
proc getPropertyContextUnchecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbSelinuxGetPropertyContextCookie {.importc: "xcb_selinux_get_property_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetPropertyContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_property_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetPropertyContextReply): cint {.importc: "xcb_selinux_get_property_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetPropertyContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_property_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetPropertyContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetPropertyContextReply {.importc: "xcb_selinux_get_property_context_reply".}
proc getPropertyDataContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_property_data_context_sizeof".}
proc getPropertyDataContext*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbSelinuxGetPropertyDataContextCookie {.importc: "xcb_selinux_get_property_data_context".}
proc getPropertyDataContextUnchecked*(c: ptr XcbConnection; window: XcbWindow; property: XcbAtom): XcbSelinuxGetPropertyDataContextCookie {.importc: "xcb_selinux_get_property_data_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetPropertyDataContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_property_data_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetPropertyDataContextReply): cint {.importc: "xcb_selinux_get_property_data_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetPropertyDataContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_property_data_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetPropertyDataContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetPropertyDataContextReply {.importc: "xcb_selinux_get_property_data_context_reply".}
proc listPropertiesSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_list_properties_sizeof".}
proc listProperties*(c: ptr XcbConnection; window: XcbWindow): XcbSelinuxListPropertiesCookie {.importc: "xcb_selinux_list_properties".}
proc listPropertiesUnchecked*(c: ptr XcbConnection; window: XcbWindow): XcbSelinuxListPropertiesCookie {.importc: "xcb_selinux_list_properties_unchecked".}
proc propertiesLength*(R: ptr XcbSelinuxListPropertiesReply): cint {.importc: "xcb_selinux_list_properties_properties_length".}
proc propertiesIterator*(R: ptr XcbSelinuxListPropertiesReply): XcbSelinuxListItemIterator {.importc: "xcb_selinux_list_properties_properties_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxListPropertiesCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxListPropertiesReply {.importc: "xcb_selinux_list_properties_reply".}
proc setSelectionCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_selection_create_context_sizeof".}
proc setSelectionCreateContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_selection_create_context_checked".}
proc setSelectionCreateContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_selection_create_context".}
proc context*(R: ptr XcbSelinuxSetSelectionCreateContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_selection_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetSelectionCreateContextRequest): cint {.importc: "xcb_selinux_set_selection_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetSelectionCreateContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_selection_create_context_context_end".}
proc getSelectionCreateContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_selection_create_context_sizeof".}
proc getSelectionCreateContext*(c: ptr XcbConnection): XcbSelinuxGetSelectionCreateContextCookie {.importc: "xcb_selinux_get_selection_create_context".}
proc getSelectionCreateContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetSelectionCreateContextCookie {.importc: "xcb_selinux_get_selection_create_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetSelectionCreateContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_selection_create_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetSelectionCreateContextReply): cint {.importc: "xcb_selinux_get_selection_create_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetSelectionCreateContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_selection_create_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetSelectionCreateContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetSelectionCreateContextReply {.importc: "xcb_selinux_get_selection_create_context_reply".}
proc setSelectionUseContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_set_selection_use_context_sizeof".}
proc setSelectionUseContextChecked*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_selection_use_context_checked".}
proc setSelectionUseContext*(c: ptr XcbConnection; contextLen: uint32; context: ptr UncheckedArray[char]): XcbVoidCookie {.discardable, importc: "xcb_selinux_set_selection_use_context".}
proc context*(R: ptr XcbSelinuxSetSelectionUseContextRequest): ptr UncheckedArray[char] {.importc: "xcb_selinux_set_selection_use_context_context".}
proc contextLength*(R: ptr XcbSelinuxSetSelectionUseContextRequest): cint {.importc: "xcb_selinux_set_selection_use_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxSetSelectionUseContextRequest): XcbGenericIterator {.importc: "xcb_selinux_set_selection_use_context_context_end".}
proc getSelectionUseContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_selection_use_context_sizeof".}
proc getSelectionUseContext*(c: ptr XcbConnection): XcbSelinuxGetSelectionUseContextCookie {.importc: "xcb_selinux_get_selection_use_context".}
proc getSelectionUseContextUnchecked*(c: ptr XcbConnection): XcbSelinuxGetSelectionUseContextCookie {.importc: "xcb_selinux_get_selection_use_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetSelectionUseContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_selection_use_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetSelectionUseContextReply): cint {.importc: "xcb_selinux_get_selection_use_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetSelectionUseContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_selection_use_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetSelectionUseContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetSelectionUseContextReply {.importc: "xcb_selinux_get_selection_use_context_reply".}
proc getSelectionContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_selection_context_sizeof".}
proc getSelectionContext*(c: ptr XcbConnection; selection: XcbAtom): XcbSelinuxGetSelectionContextCookie {.importc: "xcb_selinux_get_selection_context".}
proc getSelectionContextUnchecked*(c: ptr XcbConnection; selection: XcbAtom): XcbSelinuxGetSelectionContextCookie {.importc: "xcb_selinux_get_selection_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetSelectionContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_selection_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetSelectionContextReply): cint {.importc: "xcb_selinux_get_selection_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetSelectionContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_selection_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetSelectionContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetSelectionContextReply {.importc: "xcb_selinux_get_selection_context_reply".}
proc getSelectionDataContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_selection_data_context_sizeof".}
proc getSelectionDataContext*(c: ptr XcbConnection; selection: XcbAtom): XcbSelinuxGetSelectionDataContextCookie {.importc: "xcb_selinux_get_selection_data_context".}
proc getSelectionDataContextUnchecked*(c: ptr XcbConnection; selection: XcbAtom): XcbSelinuxGetSelectionDataContextCookie {.importc: "xcb_selinux_get_selection_data_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetSelectionDataContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_selection_data_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetSelectionDataContextReply): cint {.importc: "xcb_selinux_get_selection_data_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetSelectionDataContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_selection_data_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetSelectionDataContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetSelectionDataContextReply {.importc: "xcb_selinux_get_selection_data_context_reply".}
proc listSelectionsSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_list_selections_sizeof".}
proc listSelections*(c: ptr XcbConnection): XcbSelinuxListSelectionsCookie {.importc: "xcb_selinux_list_selections".}
proc listSelectionsUnchecked*(c: ptr XcbConnection): XcbSelinuxListSelectionsCookie {.importc: "xcb_selinux_list_selections_unchecked".}
proc selectionsLength*(R: ptr XcbSelinuxListSelectionsReply): cint {.importc: "xcb_selinux_list_selections_selections_length".}
proc selectionsIterator*(R: ptr XcbSelinuxListSelectionsReply): XcbSelinuxListItemIterator {.importc: "xcb_selinux_list_selections_selections_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxListSelectionsCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxListSelectionsReply {.importc: "xcb_selinux_list_selections_reply".}
proc getClientContextSizeof*(buffer: pointer): cint {.importc: "xcb_selinux_get_client_context_sizeof".}
proc getClientContext*(c: ptr XcbConnection; resource: uint32): XcbSelinuxGetClientContextCookie {.importc: "xcb_selinux_get_client_context".}
proc getClientContextUnchecked*(c: ptr XcbConnection; resource: uint32): XcbSelinuxGetClientContextCookie {.importc: "xcb_selinux_get_client_context_unchecked".}
proc context*(R: ptr XcbSelinuxGetClientContextReply): ptr UncheckedArray[char] {.importc: "xcb_selinux_get_client_context_context".}
proc contextLength*(R: ptr XcbSelinuxGetClientContextReply): cint {.importc: "xcb_selinux_get_client_context_context_length".}
proc contextEnd*(R: ptr XcbSelinuxGetClientContextReply): XcbGenericIterator {.importc: "xcb_selinux_get_client_context_context_end".}
proc reply*(c: ptr XcbConnection; cookie: XcbSelinuxGetClientContextCookie; e: ptr ptr XcbGenericError): ptr XcbSelinuxGetClientContextReply {.importc: "xcb_selinux_get_client_context_reply".}

{.pop.}
{.pop.}
