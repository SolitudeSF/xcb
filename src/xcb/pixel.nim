import ./image, ./bitops

proc putPixelXY32M*(image: ptr XcbImage; x, y: uint32; pixel: cint) {.inline.} =
  let
    unit = (x shr 3) and not xcbMask(2)
    b = xcbMask(2) - ((x shr 3) and xcbMask(2))
    bit = xcbMask(3) - (x and xcbMask(3))
    m = 1'u8 shl bit
    p = (pixel shl bit).uint8
    bp = cast[ptr uint8](cast[int](image.data) + int(y * image.stride) + int(unit or b))
  bp[] = (bp[] and not m) or p

proc putPixelXY32L*(image: ptr XcbImage; x, y: uint32; pixel: cint) {.inline.} =
  let
    bit = x and xcbMask(3)
    m = 1'u8 shl bit
    p = (pixel shl bit).uint8
    bp = cast[ptr uint8](cast[int](image.data) + (y * image.stride).int + (x shr 3).int)
  bp[] = (bp[] and not m) or p

proc getPixelXY32M*(image: ptr XcbImage; x: uint32; y: uint32): cint {.inline.} =
  let
    unit = (x shr 3) and not xcbMask(2)
    b = xcbMask(2) - ((x shr 3) and xcbMask(2))
    bit = xcbMask(3) - (x and xcbMask(3))
    bp = cast[ptr uint8](cast[int](image.data) + int(y * image.stride) + int(unit or b))
  result = (bp[] shr bit).cint and 1

proc getPixelXY32L*(image: ptr XcbImage; x: uint32; y: uint32): cint {.inline.} =
  let
    bit: uint32 = x and xcbMask(3)
    bp = cast[ptr uint8](cast[int](image.data) + int(y * image.stride) + int(x shr 3))
  result = (bp[] shr bit).cint and 1

proc putPixelZ8*(image: ptr XcbImage; x: uint32; y: uint32; pixel: uint8) {.inline.} =
  image.data[x + y * image.stride] = pixel

proc getPixelZ8*(image: ptr XcbImage; x, y: uint32): uint8 {.inline.} =
  result = image.data[x + y * image.stride]

proc putPixelZ32M*(image: ptr XcbImage; x, y, pixel: uint32) {.inline.} =
  let row = cast[ptr UncheckedArray[uint8]](cast[int](image.data) + int(y * image.stride))
  row[x shl 2] = uint8(pixel shr 24)
  row[(x shl 2) + 1] = uint8(pixel shr 16)
  row[(x shl 2) + 2] = uint8(pixel shr 8)
  row[(x shl 2) + 3] = uint8(pixel)

proc putPixelZ32L*(image: ptr XcbImage; x, y, pixel: uint32) {.inline.} =
  let row = cast[ptr UncheckedArray[uint8]](cast[int](image.data) + int(y * image.stride))
  row[x shl 2] = uint8(pixel)
  row[(x shl 2) + 1] = uint8(pixel shr 8)
  row[(x shl 2) + 2] = uint8(pixel shr 16)
  row[(x shl 2) + 3] = uint8(pixel shr 24)

proc getPixelZ32M*(image: ptr XcbImage; x: uint32; y: uint32): uint32 {.inline.} =
  let row = cast[ptr UncheckedArray[uint8]](cast[int](image.data) + int(y * image.stride))
  var pixel: uint32 = row[x shl 2] shl 24
  pixel = pixel or row[(x shl 2) + 1] shl 16
  pixel = pixel or row[(x shl 2) + 2] shl 8
  return pixel or row[(x shl 2) + 3]

proc getPixelZ32L*(image: ptr XcbImage; x: uint32; y: uint32): uint32 {.inline.} =
  let row = cast[ptr UncheckedArray[uint8]](cast[int](image.data) + int(y * image.stride))
  var pixel: uint32 = row[x shl 2]
  pixel = pixel or row[(x shl 2) + 1] shl 8
  pixel = pixel or row[(x shl 2) + 2] shl 16
  return pixel or row[(x shl 2) + 3] shl 24
