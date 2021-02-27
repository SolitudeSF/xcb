import system/ansi_c
import xcb/xcb

var
  points = [
    XcbPoint(x: 10, y: 10),
    XcbPoint(x: 10, y: 20),
    XcbPoint(x: 20, y: 10),
    XcbPoint(x: 20, y: 20)
  ]

  polylines = [
    XcbPoint(x: 50, y: 10),
    XcbPoint(x: 5, y: 20),
    XcbPoint(x: 25, y: -20),
    XcbPoint(x: 10, y: 10)
  ]

  segments = [
    XcbSegment(x1: 100, y1: 10, x2: 140, y2: 30),
    XcbSegment(x1: 110, y1: 25, x2: 130, y2: 60)
  ]

  rectangles = [
    XcbRectangle(x: 10, y: 50, width: 40, height: 20),
    XcbRectangle(x: 10, y: 50, width: 40, height: 20)
  ]

  arcs = [
    XcbArc(x: 10, y: 100, width: 60, height: 40, angle1: 0, angle2: 90 shl 6),
    XcbArc(x: 90, y: 100, width: 55, height: 40, angle1: 0, angle2: 270 shl 6)
  ]

let
  conn = xcbConnect(nil, nil)
  screen = conn.getSetup.rootsIterator.data[0].addr

var
  window = screen.root
  foreground = conn.generateId.XcbGcontext
  mask = xcbGcForeground.uint32 or xcbGcGraphicsExposures.uint32
  values = [screen.blackPixel, 0]

echo conn.createGc(foreground, window.XcbDrawable, mask, addr values)

window = conn.generateId.XcbWindow
mask = xcbCwBackPixel.uint32 or xcbCwEventMask.uint32
values = [screen.whitePixel, xcbEventMaskExposure.uint32]

echo conn.createWindow(
  xcbCopyFromParent, window, screen.root,
  0, 0,
  150, 150,
  10,
  xcbWindowClassInputOutput.uint16,
  screen.rootVisual,
  mask, addr values)

echo conn.map window
discard conn.flush

var event = conn.waitForEvent

while event != nil:
  case event.responseType and not 0x80'u8
  of xcbExpose:
    conn.polyPoint xcbCoordModeOrigin, window.XcbDrawable, foreground, points.len.uint32, points[0].addr
    conn.polyLine xcbCoordModePrevious, window.XcbDrawable, foreground, polylines.len.uint32, polylines[0].addr
    conn.polySegment window.XcbDrawable, foreground, segments.len.uint32, segments[0].addr
    conn.polyRectangle window.XcbDrawable, foreground, rectangles.len.uint32, rectangles[0].addr
    conn.polyArc window.XcbDrawable, foreground, arcs.len.uint32, arcs[0].addr
    discard conn.flush
  else:
    discard

  event.c_free
  event = conn.waitForEvent
