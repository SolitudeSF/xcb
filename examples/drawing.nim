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

var event: ptr XcbGenericEvent

while true:
  event = conn.waitForEvent

  echo event[]

  case event.responseType and not 0x80'u8
  of xcbExpose:

    conn.polyPoint(xcbCoordModeOrigin.uint8, window.XcbDrawable, foreground, 4, addr points[0])
    conn.polyLine(xcbCoordModePrevious.uint8, window.XcbDrawable, foreground, 4, addr polylines[0])
    conn.polySegment(window.XcbDrawable, foreground, 2, addr segments[0])
    conn.polyRectangle(window.XcbDrawable, foreground, 2, addr rectangles[0])
    conn.polyArc(window.XcbDrawable, foreground, 2, addr arcs[0])

    discard conn.flush

  else:
    discard

  # free event
