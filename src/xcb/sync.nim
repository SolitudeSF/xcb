import ./xcb

const
  xcbSyncMajorVersion* = 3
  xcbSyncMinorVersion* = 1
  xcbSyncCounter* = 0
  xcbSyncAlarm* = 1
  xcbSyncInitialize* = 0
  xcbSyncListSystemCounters* = 1
  xcbSyncCreateCounter* = 2
  xcbSyncDestroyCounter* = 6
  xcbSyncQueryCounter* = 5
  xcbSyncAwait* = 7
  xcbSyncChangeCounter* = 4
  xcbSyncSetCounter* = 3
  xcbSyncCreateAlarm* = 8
  xcbSyncChangeAlarm* = 9
  xcbSyncDestroyAlarm* = 11
  xcbSyncQueryAlarm* = 10
  xcbSyncSetPriority* = 12
  xcbSyncGetPriority* = 13
  xcbSyncCreateFence* = 14
  xcbSyncTriggerFence* = 15
  xcbSyncResetFence* = 16
  xcbSyncDestroyFence* = 17
  xcbSyncQueryFence* = 18
  xcbSyncAwaitFence* = 19
  xcbSyncCounterNotify* = 0
  xcbSyncAlarmNotify* = 1

{.passl: "-lxcb-sync".}
{.push header: "xcb/sync.h".}

var xcbSyncId* {.extern: "xcb_sync_id".}: XcbExtension

type
  XcbSyncAlarm* {.importc: "xcb_sync_alarm_t".} = distinct uint32
  XcbSyncCounter* {.importc: "xcb_sync_counter_t".} = distinct uint32
  XcbSyncFence* {.importc: "xcb_sync_fence_t".} = distinct uint32

  XcbSyncAlarmIterator* {.importc: "xcb_sync_alarm_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncAlarm]
    rem*: cint
    index*: cint

  XcbSyncAlarmstate* {.importc: "xcb_sync_alarmstate_t".} = enum
    xcbSyncAlarmstateActive = 0, xcbSyncAlarmstateInactive = 1,
    xcbSyncAlarmstateDestroyed = 2

  XcbSyncCounterIterator* {.importc: "xcb_sync_counter_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncCounter]
    rem*: cint
    index*: cint

  XcbSyncFenceIterator* {.importc: "xcb_sync_fence_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncFence]
    rem*: cint
    index*: cint

  XcbSyncTesttype* {.importc: "xcb_sync_testtype_t".} = enum
    xcbSyncTesttypePositiveTransition = 0,
    xcbSyncTesttypeNegativeTransition = 1,
    xcbSyncTesttypePositiveComparison = 2,
    xcbSyncTesttypeNegativeComparison = 3

  XcbSyncValuetype* {.importc: "xcb_sync_valuetype_t".} = enum
    xcbSyncValuetypeAbsolute = 0, xcbSyncValuetypeRelative = 1

  XcbSyncCa* {.importc: "xcb_sync_ca_t".} = enum
    xcbSyncCaCounter = 1, xcbSyncCaValueType = 2, xcbSyncCaValue = 4,
    xcbSyncCaTestType = 8, xcbSyncCaDelta = 16, xcbSyncCaEvents = 32

  XcbSyncInt64* {.importc: "xcb_sync_int64_t", bycopy.} = object
    hi*: int32
    lo*: uint32

  XcbSyncInt64Iterator* {.importc: "xcbSyncInt64_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncInt64]
    rem*: cint
    index*: cint

  XcbSyncSystemcounter* {.importc: "xcb_sync_systemcounter_t", bycopy.} = object
    counter*: XcbSyncCounter
    resolution*: XcbSyncInt64
    nameLen* {.importc: "name_len".}: uint16

  XcbSyncSystemcounterIterator* {.importc: "xcb_sync_systemcounter_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncSystemcounter]
    rem*: cint
    index*: cint

  XcbSyncTrigger* {.importc: "xcb_sync_trigger_t", bycopy.} = object
    counter*: XcbSyncCounter
    waitType* {.importc: "wait_type".}: uint32
    waitValue* {.importc: "wait_value".}: XcbSyncInt64
    testType* {.importc: "test_type".}: uint32

  XcbSyncTriggerIterator* {.importc: "xcb_sync_trigger_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncTrigger]
    rem*: cint
    index*: cint

  XcbSyncWaitcondition* {.importc: "xcb_sync_waitcondition_t", bycopy.} = object
    trigger*: XcbSyncTrigger
    eventThreshold* {.importc: "event_threshold".}: XcbSyncInt64

  XcbSyncWaitconditionIterator* {.importc: "xcb_sync_waitcondition_iterator_t", bycopy.} = object
    data*: ptr UncheckedArray[XcbSyncWaitcondition]
    rem*: cint
    index*: cint

  XcbSyncCounterError* {.importc: "xcb_sync_counter_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    badCounter* {.importc: "bad_counter".}: uint32
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8

  XcbSyncAlarmError* {.importc: "xcb_sync_alarm_error_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    errorCode* {.importc: "error_code".}: uint8
    sequence*: uint16
    badAlarm* {.importc: "bad_alarm".}: uint32
    minorOpcode* {.importc: "minor_opcode".}: uint16
    majorOpcode* {.importc: "major_opcode".}: uint8

  XcbSyncInitializeCookie* {.importc: "xcb_sync_initialize_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncInitializeRequest* {.importc: "xcb_sync_initialize_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    desiredMajorVersion* {.importc: "desired_major_version".}: uint8
    desiredMinorVersion* {.importc: "desired_minor_version".}: uint8

  XcbSyncInitializeReply* {.importc: "xcb_sync_initialize_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    majorVersion* {.importc: "major_version".}: uint8
    minorVersion* {.importc: "minor_version".}: uint8
    pad1: array[22, uint8]

  XcbSyncListSystemCountersCookie* {.importc: "xcb_sync_list_system_counters_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncListSystemCountersRequest* {.importc: "xcb_sync_list_system_counters_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSyncListSystemCountersReply* {.importc: "xcb_sync_list_system_counters_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    countersLen* {.importc: "counters_len".}: uint32
    pad1: array[20, uint8]

  XcbSyncCreateCounterRequest* {.importc: "xcb_sync_create_counter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    id*: XcbSyncCounter
    initialValue* {.importc: "initial_value".}: XcbSyncInt64

  XcbSyncDestroyCounterRequest* {.importc: "xcb_sync_destroy_counter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    counter*: XcbSyncCounter

  XcbSyncQueryCounterCookie* {.importc: "xcb_sync_query_counter_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncQueryCounterRequest* {.importc: "xcb_sync_query_counter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    counter*: XcbSyncCounter

  XcbSyncQueryCounterReply* {.importc: "xcb_sync_query_counter_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    counterValue* {.importc: "counter_value".}: XcbSyncInt64

  XcbSyncAwaitRequest* {.importc: "xcb_sync_await_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSyncChangeCounterRequest* {.importc: "xcb_sync_change_counter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    counter*: XcbSyncCounter
    amount*: XcbSyncInt64

  XcbSyncSetCounterRequest* {.importc: "xcb_sync_set_counter_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    counter*: XcbSyncCounter
    value*: XcbSyncInt64

  XcbSyncCreateAlarmValueList* {.importc: "xcb_sync_create_alarm_value_list_t", bycopy.} = object
    counter*: XcbSyncCounter
    valueType*: uint32
    value*: XcbSyncInt64
    testType*: uint32
    delta*: XcbSyncInt64
    events*: uint32

  XcbSyncCreateAlarmRequest* {.importc: "xcb_sync_create_alarm_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    id*: XcbSyncAlarm
    valueMask* {.importc: "value_mask".}: uint32

  XcbSyncChangeAlarmValueList* {.importc: "xcb_sync_change_alarm_value_list_t", bycopy.} = object
    counter*: XcbSyncCounter
    valueType*: uint32
    value*: XcbSyncInt64
    testType*: uint32
    delta*: XcbSyncInt64
    events*: uint32

  XcbSyncChangeAlarmRequest* {.importc: "xcb_sync_change_alarm_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    id*: XcbSyncAlarm
    valueMask* {.importc: "value_mask".}: uint32

  XcbSyncDestroyAlarmRequest* {.importc: "xcb_sync_destroy_alarm_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    alarm*: XcbSyncAlarm

  XcbSyncQueryAlarmCookie* {.importc: "xcb_sync_query_alarm_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncQueryAlarmRequest* {.importc: "xcb_sync_query_alarm_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    alarm*: XcbSyncAlarm

  XcbSyncQueryAlarmReply* {.importc: "xcb_sync_query_alarm_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    trigger*: XcbSyncTrigger
    delta*: XcbSyncInt64
    events*: uint8
    state*: uint8
    pad1: array[2, uint8]

  XcbSyncSetPriorityRequest* {.importc: "xcb_sync_set_priority_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    id*: uint32
    priority*: int32

  XcbSyncGetPriorityCookie* {.importc: "xcb_sync_get_priority_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncGetPriorityRequest* {.importc: "xcb_sync_get_priority_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    id*: uint32

  XcbSyncGetPriorityReply* {.importc: "xcb_sync_get_priority_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    priority*: int32

  XcbSyncCreateFenceRequest* {.importc: "xcb_sync_create_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    drawable*: XcbDrawable
    fence*: XcbSyncFence
    initiallyTriggered* {.importc: "initially_triggered".}: uint8

  XcbSyncTriggerFenceRequest* {.importc: "xcb_sync_trigger_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    fence*: XcbSyncFence

  XcbSyncResetFenceRequest* {.importc: "xcb_sync_reset_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    fence*: XcbSyncFence

  XcbSyncDestroyFenceRequest* {.importc: "xcb_sync_destroy_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    fence*: XcbSyncFence

  XcbSyncQueryFenceCookie* {.importc: "xcb_sync_query_fence_cookie_t", bycopy.} = object
    sequence*: cuint

  XcbSyncQueryFenceRequest* {.importc: "xcb_sync_query_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16
    fence*: XcbSyncFence

  XcbSyncQueryFenceReply* {.importc: "xcb_sync_query_fence_reply_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    pad0: uint8
    sequence*: uint16
    length*: uint32
    triggered*: uint8
    pad1: array[23, uint8]

  XcbSyncAwaitFenceRequest* {.importc: "xcb_sync_await_fence_request_t", bycopy.} = object
    majorOpcode* {.importc: "major_opcode".}: uint8
    minorOpcode* {.importc: "minor_opcode".}: uint8
    length*: uint16

  XcbSyncCounterNotifyEvent* {.importc: "xcb_sync_counter_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    kind*: uint8
    sequence*: uint16
    counter*: XcbSyncCounter
    waitValue* {.importc: "wait_value".}: XcbSyncInt64
    counterValue* {.importc: "counter_value".}: XcbSyncInt64
    timestamp*: XcbTimestamp
    count*: uint16
    destroyed*: uint8
    pad0: uint8

  XcbSyncAlarmNotifyEvent* {.importc: "xcb_sync_alarm_notify_event_t", bycopy.} = object
    responseType* {.importc: "response_type".}: uint8
    kind*: uint8
    sequence*: uint16
    alarm*: XcbSyncAlarm
    counterValue* {.importc: "counter_value".}: XcbSyncInt64
    alarmValue* {.importc: "alarm_value".}: XcbSyncInt64
    timestamp*: XcbTimestamp
    state*: uint8
    pad0: array[3, uint8]

{.push cdecl.}

proc next*(i: ptr XcbSyncAlarmIterator) {.importc: "xcb_sync_alarm_next".}
proc iterEnd*(i: XcbSyncAlarmIterator): XcbGenericIterator {.importc: "xcb_sync_alarm_end".}
proc next*(i: ptr XcbSyncCounterIterator) {.importc: "xcb_sync_counter_next".}
proc iterEnd*(i: XcbSyncCounterIterator): XcbGenericIterator {.importc: "xcb_sync_counter_end".}
proc next*(i: ptr XcbSyncFenceIterator) {.importc: "xcb_sync_fence_next".}
proc iterEnd*(i: XcbSyncFenceIterator): XcbGenericIterator {.importc: "xcb_sync_fence_end".}
proc next*(i: ptr XcbSyncInt64Iterator) {.importc: "xcb_sync_int64_next".}
proc iterEnd*(i: XcbSyncInt64Iterator): XcbGenericIterator {.importc: "xcb_sync_int64_end".}
proc systemcounterSizeof*(buffer: pointer): cint {.importc: "xcb_sync_systemcounter_sizeof".}
proc name*(R: ptr XcbSyncSystemcounter): ptr UncheckedArray[char] {.importc: "xcb_sync_systemcounter_name".}
proc nameLength*(R: ptr XcbSyncSystemcounter): cint {.importc: "xcb_sync_systemcounter_name_length".}
proc nameEnd*(R: ptr XcbSyncSystemcounter): XcbGenericIterator {.importc: "xcb_sync_systemcounter_name_end".}
proc next*(i: ptr XcbSyncSystemcounterIterator) {.importc: "xcb_sync_systemcounter_next".}
proc iterEnd*(i: XcbSyncSystemcounterIterator): XcbGenericIterator {.importc: "xcb_sync_systemcounter_end".}
proc next*(i: ptr XcbSyncTriggerIterator) {.importc: "xcb_sync_trigger_next".}
proc iterEnd*(i: XcbSyncTriggerIterator): XcbGenericIterator {.importc: "xcb_sync_trigger_end".}
proc next*(i: ptr XcbSyncWaitconditionIterator) {.importc: "xcb_sync_waitcondition_next".}
proc iterEnd*(i: XcbSyncWaitconditionIterator): XcbGenericIterator {.importc: "xcb_sync_waitcondition_end".}
proc syncInitialize*(c: ptr XcbConnection; desiredMajorVersion: uint8; desiredMinorVersion: uint8): XcbSyncInitializeCookie {.importc: "xcb_sync_initialize".}
proc syncInitializeUnchecked*(c: ptr XcbConnection; desiredMajorVersion: uint8; desiredMinorVersion: uint8): XcbSyncInitializeCookie {.importc: "xcb_sync_initialize_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncInitializeCookie; e: ptr ptr XcbGenericError): ptr XcbSyncInitializeReply {.importc: "xcb_sync_initialize_reply".}
proc listSystemCountersSizeof*(buffer: pointer): cint {.importc: "xcb_sync_list_system_counters_sizeof".}
proc listSystemCounters*(c: ptr XcbConnection): XcbSyncListSystemCountersCookie {.importc: "xcb_sync_list_system_counters".}
proc listSystemCountersUnchecked*(c: ptr XcbConnection): XcbSyncListSystemCountersCookie {.importc: "xcb_sync_list_system_counters_unchecked".}
proc countersLength*(R: ptr XcbSyncListSystemCountersReply): cint {.importc: "xcb_sync_list_system_counters_counters_length".}
proc countersIterator*(R: ptr XcbSyncListSystemCountersReply): XcbSyncSystemcounterIterator {.importc: "xcb_sync_list_system_counters_counters_iterator".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncListSystemCountersCookie; e: ptr ptr XcbGenericError): ptr XcbSyncListSystemCountersReply {.importc: "xcb_sync_list_system_counters_reply".}
proc createCounterChecked*(c: ptr XcbConnection; id: XcbSyncCounter; initialValue: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_create_counter_checked".}
proc createCounter*(c: ptr XcbConnection; id: XcbSyncCounter; initialValue: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_create_counter".}
proc destroyChecked*(c: ptr XcbConnection; counter: XcbSyncCounter): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_counter_checked".}
proc destroy*(c: ptr XcbConnection; counter: XcbSyncCounter): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_counter".}
proc query*(c: ptr XcbConnection; counter: XcbSyncCounter): XcbSyncQueryCounterCookie {.importc: "xcb_sync_query_counter".}
proc queryUnchecked*(c: ptr XcbConnection; counter: XcbSyncCounter): XcbSyncQueryCounterCookie {.importc: "xcb_sync_query_counter_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncQueryCounterCookie; e: ptr ptr XcbGenericError): ptr XcbSyncQueryCounterReply {.importc: "xcb_sync_query_counter_reply".}
proc awaitSizeof*(buffer: pointer; waitListLen: uint32): cint {.importc: "xcb_sync_await_sizeof".}
proc waitChecked*(c: ptr XcbConnection; waitListLen: uint32; waitList: ptr XcbSyncWaitcondition): XcbVoidCookie {.discardable, importc: "xcb_sync_await_checked".}
proc wait*(c: ptr XcbConnection; waitListLen: uint32; waitList: ptr XcbSyncWaitcondition): XcbVoidCookie {.discardable, importc: "xcb_sync_await".}
proc waitList*(R: ptr XcbSyncAwaitRequest): ptr UncheckedArray[XcbSyncWaitcondition] {.importc: "xcb_sync_await_wait_list".}
proc waitListLength*(R: ptr XcbSyncAwaitRequest): cint {.importc: "xcb_sync_await_wait_list_length".}
proc waitListIterator*(R: ptr XcbSyncAwaitRequest): XcbSyncWaitconditionIterator {.importc: "xcb_sync_await_wait_list_iterator".}
proc changeChecked*(c: ptr XcbConnection; counter: XcbSyncCounter; amount: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_change_counter_checked".}
proc change*(c: ptr XcbConnection; counter: XcbSyncCounter; amount: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_change_counter".}
proc setChecked*(c: ptr XcbConnection; counter: XcbSyncCounter; value: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_set_counter_checked".}
proc set*(c: ptr XcbConnection; counter: XcbSyncCounter; value: XcbSyncInt64): XcbVoidCookie {.discardable, importc: "xcb_sync_set_counter".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbSyncCreateAlarmValueList): cint {.importc: "xcb_sync_create_alarm_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbSyncCreateAlarmValueList): cint {.importc: "xcb_sync_create_alarm_value_list_unpack".}
proc createAlarmValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_sync_create_alarm_value_list_sizeof".}
proc createAlarmSizeof*(buffer: pointer): cint {.importc: "xcb_sync_create_alarm_sizeof".}
proc createAlarmChecked*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_sync_create_alarm_checked".}
proc createAlarm*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_sync_create_alarm".}
proc createAlarmAuxChecked*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: ptr XcbSyncCreateAlarmValueList): XcbVoidCookie {.discardable, importc: "xcb_sync_create_alarm_aux_checked".}
proc createAlarmAux*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: ptr XcbSyncCreateAlarmValueList): XcbVoidCookie {.discardable, importc: "xcb_sync_create_alarm_aux".}
proc valueList*(R: ptr XcbSyncCreateAlarmRequest): pointer {.importc: "xcb_sync_create_alarm_value_list".}
proc serialize*(buffer: ptr pointer; valueMask: uint32; aux: ptr XcbSyncChangeAlarmValueList): cint {.importc: "xcb_sync_change_alarm_value_list_serialize".}
proc unpack*(buffer: pointer; valueMask: uint32; aux: ptr XcbSyncChangeAlarmValueList): cint {.importc: "xcb_sync_change_alarm_value_list_unpack".}
proc changeAlarmValueListSizeof*(buffer: pointer; valueMask: uint32): cint {.importc: "xcb_sync_change_alarm_value_list_sizeof".}
proc changeAlarmSizeof*(buffer: pointer): cint {.importc: "xcb_sync_change_alarm_sizeof".}
proc changeChangeAlarmChecked*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_sync_change_alarm_checked".}
proc changeChangeAlarm*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: pointer): XcbVoidCookie {.discardable, importc: "xcb_sync_change_alarm".}
proc changeAlarmAuxChecked*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: ptr XcbSyncChangeAlarmValueList): XcbVoidCookie {.discardable, importc: "xcb_sync_change_alarm_aux_checked".}
proc changeAlarmAux*(c: ptr XcbConnection; id: XcbSyncAlarm; valueMask: uint32; valueList: ptr XcbSyncChangeAlarmValueList): XcbVoidCookie {.discardable, importc: "xcb_sync_change_alarm_aux".}
proc changeAlarmValueList*(R: ptr XcbSyncChangeAlarmRequest): pointer {.importc: "xcb_sync_change_alarm_value_list".}
proc destroyChecked*(c: ptr XcbConnection; alarm: XcbSyncAlarm): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_alarm_checked".}
proc destroy*(c: ptr XcbConnection; alarm: XcbSyncAlarm): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_alarm".}
proc query*(c: ptr XcbConnection; alarm: XcbSyncAlarm): XcbSyncQueryAlarmCookie {.importc: "xcb_sync_query_alarm".}
proc queryUnchecked*(c: ptr XcbConnection; alarm: XcbSyncAlarm): XcbSyncQueryAlarmCookie {.importc: "xcb_sync_query_alarm_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncQueryAlarmCookie; e: ptr ptr XcbGenericError): ptr XcbSyncQueryAlarmReply {.importc: "xcb_sync_query_alarm_reply".}
pretPriorityChecked*(c: ptr XcbConnection; id: uint32; priority: int32): XcbVoidCookie {.discardable, importc: "xcb_sync_set_priority_checked".}
pretPriority*(c: ptr XcbConnection; id: uint32; priority: int32): XcbVoidCookie {.discardable, importc: "xcb_sync_set_priority".}
pretPriority*(c: ptr XcbConnection; id: uint32): XcbSyncGetPriorityCookie {.importc: "xcb_sync_get_priority".}
pretPriorityUnchecked*(c: ptr XcbConnection; id: uint32): XcbSyncGetPriorityCookie {.importc: "xcb_sync_get_priority_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncGetPriorityCookie; e: ptr ptr XcbGenericError): ptr XcbSyncGetPriorityReply {.importc: "xcb_sync_get_priority_reply".}
proc createFenceChecked*(c: ptr XcbConnection; drawable: XcbDrawable; fence: XcbSyncFence; initiallyTriggered: uint8): XcbVoidCookie {.discardable, importc: "xcb_sync_create_fence_checked".}
proc createFence*(c: ptr XcbConnection; drawable: XcbDrawable; fence: XcbSyncFence; initiallyTriggered: uint8): XcbVoidCookie {.discardable, importc: "xcb_sync_create_fence".}
proc triggerChecked*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_trigger_fence_checked".}
proc trigger*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_trigger_fence".}
proc resetChecked*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_reset_fence_checked".}
proc reset*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_reset_fence".}
proc destroyChecked*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_fence_checked".}
proc destroy*(c: ptr XcbConnection; fence: XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_destroy_fence".}
proc query*(c: ptr XcbConnection; fence: XcbSyncFence): XcbSyncQueryFenceCookie {.importc: "xcb_sync_query_fence".}
proc queryUnchecked*(c: ptr XcbConnection; fence: XcbSyncFence): XcbSyncQueryFenceCookie {.importc: "xcb_sync_query_fence_unchecked".}
proc reply*(c: ptr XcbConnection; cookie: XcbSyncQueryFenceCookie; e: ptr ptr XcbGenericError): ptr XcbSyncQueryFenceReply {.importc: "xcb_sync_query_fence_reply".}
proc awaitFenceSizeof*(buffer: pointer; fenceListLen: uint32): cint {.importc: "xcb_sync_await_fence_sizeof".}
proc awaitChecked*(c: ptr XcbConnection; fenceListLen: uint32; fenceList: ptr XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_await_fence_checked".}
proc await*(c: ptr XcbConnection; fenceListLen: uint32; fenceList: ptr XcbSyncFence): XcbVoidCookie {.discardable, importc: "xcb_sync_await_fence".}
proc fenceList*(R: ptr XcbSyncAwaitFenceRequest): ptr XcbSyncFence {.importc: "xcb_sync_await_fence_fence_list".}
proc fenceListLength*(R: ptr XcbSyncAwaitFenceRequest): cint {.importc: "xcb_sync_await_fence_fence_list_length".}
proc fenceListEnd*(R: ptr XcbSyncAwaitFenceRequest): XcbGenericIterator {.importc: "xcb_sync_await_fence_fence_list_end".}

{.pop.}
{.pop.}
