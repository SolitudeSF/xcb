import system/ansi_c, strformat
import xcb/xcb

const modifiers = [
  "Shift", "Lock", "Ctrl", "Alt", "Mod2", "Mod3", "Mod4", "Mod5",
    "Button1", "Button2", "Button3", "Button4", "Button5"
]

proc printModifiers(s: uint16) =
  stdout.write "Modifier mask: "
  var mask = s
  for m in modifiers:
    if (mask and 1) != 0:
      stdout.write m
    mask = mask shr 1
  stdout.write '\n'

let
  conn = xcbConnect(nil, nil)
  screen = conn.getSetup.rootsIterator.data[0].addr
  win = conn.generateId.XcbWindow
  mask = xcbCwBackPixel.uint32 or xcbCwEventMask.uint32
  values = [
    screen.whitePixel,
    xcbEventMaskExposure.uint32      or
    xcbEventMaskButtonPress.uint32   or
    xcbEventMaskButtonRelease.uint32 or
    xcbEventMaskPointerMotion.uint32 or
    xcbEventMaskEnterWindow.uint32   or
    xcbEventMaskLeaveWindow.uint32   or
    xcbEventMaskKeyPress.uint32      or
    xcbEventMaskKeyRelease.uint32
  ]

conn.createWindow 0, win, screen.root, 0, 0, 150, 150, 10, xcbWindowClassInputOutput.uint16,
  screen.rootVisual, mask, unsafeAddr values

conn.map win

discard conn.flush

var event = conn.waitForEvent

while event != nil:
  case event.responseType and not 0x80'u8
  of xcbExpose:
    let e = cast[ptr XcbExposeEvent](event)
    echo &"Window {e.window.int} exposed. Region to be redrawn at location ({e.x}, {e.y}), with dimensions ({e.width}, {e.height})"
  of xcbButtonPress:
    let e = cast[ptr XcbButtonPressEvent](event)
    e.state.printModifiers
    case e.detail.uint8
    of 4:
      echo &"Wheel Button up in window {e.event.int}, at coordinates ({e.eventX}, {e.eventY})"
    of 5:
      echo &"Wheel Button down in window {e.event.int}, at coordinates ({e.eventX}, {e.eventY})"
    else:
      echo &"Button {e.detail.int} pressed in window {e.event.int}, at coordinates ({e.eventX}, {e.eventY})"
  of xcbButtonRelease:
    let e = cast[ptr XcbButtonReleaseEvent](event)
    e.state.printModifiers
    echo &"Button {e.detail.int} released in window {e.event.int}, at coordinates ({e.eventX}, {e.eventY})"
  of xcbMotionNotify:
    let e = cast[ptr XcbMotionNotifyEvent](event)
    echo &"Mouse moved in window {e.detail.int}, at coordinates ({e.eventX}, {e.eventY})"
  of xcbEnterNotify:
    let e = cast[ptr XcbEnterNotifyEvent](event)
    echo &"Mouse entered window {e.detail.int}, at coordinates ({e.eventX}, {e.eventY})"
  of xcbLeaveNotify:
    let e = cast[ptr XcbLeaveNotifyEvent](event)
    echo &"Mouse left window {e.detail.int}, at coordinates ({e.eventX}, {e.eventY})"
  of xcbKeyPress:
    let e = cast[ptr XcbKeyPressEvent](event)
    e.state.printModifiers
    echo &"Key pressed in window {e.detail.int}"
  of xcbKeyRelease:
    let e = cast[ptr XcbKeyReleaseEvent](event)
    e.state.printModifiers
    echo &"Key released in window {e.detail.int}"
  else:
    echo "Unknown event: ", event.responseType

  event.c_free
  event = conn.waitForEvent
