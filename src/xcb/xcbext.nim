import ./xcb
import posix

{.push header: "xcb/xcbext.h".}

type
  XcbExtension* {.importc: "xcb_extension_t", bycopy.} = object
    name*: cstring
    global_id*: cint

  XcbProtocolRequest* {.importc: "xcb_protocol_request_t", bycopy.} = object
    count*: csize_t
    ext*: ptr XcbExtension
    opcode*: uint8
    isvoid*: uint8

  XcbSendRequestFlags* {.importc: "xcbsendrequestflags".} = enum
    xcbRequestChecked = 1 shl 0, xcbRequestRaw = 1 shl 1,
    xcbRequestDiscardReply = 1 shl 2, xcbRequestReplyFds = 1 shl 3

{.push cdecl.}

proc sendRequest*(c: ptr XcbConnection; flags: cint; vector: ptr IOVec; request: ptr XcbProtocolRequest): cuint {.importc: "xcb_send_request".}
proc sendRequestWithFds*(c: ptr XcbConnection; flags: cint; vector: ptr IOVec; request: ptr XcbProtocolRequest; numFds: cuint; fds: ptr cint): cuint {.importc: "xcb_send_request_with_fds".}
proc sendRequest64*(c: ptr XcbConnection; flags: cint; vector: ptr IOVec; request: ptr XcbProtocolRequest): uint64 {.importc: "xcb_send_request64".}
proc sendRequestWithFds64*(c: ptr XcbConnection; flags: cint; vector: ptr IOVec; request: ptr XcbProtocolRequest; numFds: cuint; fds: ptr cint): uint64 {.importc: "xcb_send_request_with_fds64".}
proc sendFd*(c: ptr XcbConnection; fd: cint) {.importc: "xcb_send_fd".}
proc takeSocket*(c: ptr XcbConnection; returnSocket: proc (closure: pointer); closure: pointer; flags: cint; sent: ptr uint64): cint {.importc: "xcb_take_socket".}
proc writev*(c: ptr XcbConnection; vector: ptr IOVec; count: cint; requests: uint64): cint {.importc: "xcb_writev".}
proc waitForReply*(c: ptr XcbConnection; request: cuint; e: ptr ptr XcbGenericError): pointer {.importc: "xcb_wait_for_reply".}
proc waitForReply*(c: ptr XcbConnection; request: uint64; e: ptr ptr XcbGenericError): pointer {.importc: "xcb_wait_for_reply64".}
proc pollForReply*(c: ptr XcbConnection; request: cuint; reply: ptr pointer; error: ptr ptr XcbGenericError): cint {.importc: "xcb_poll_for_reply".}
proc pollForReply*(c: ptr XcbConnection; request: uint64; reply: ptr pointer; error: ptr ptr XcbGenericError): cint {.importc: "xcb_poll_for_reply64".}
proc getReplyFds*(c: ptr XcbConnection; reply: pointer; replylen: csize_t): ptr cint {.importc: "xcb_get_reply_fds".}
proc xcbPopcount*(mask: uint32): cint {.importc: "xcb_popcount".}
proc xcbSumof*(list: ptr uint8; len: cint): cint {.importc: "xcb_sumof".}

{.pop.}
{.pop.}
