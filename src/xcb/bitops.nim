import ./xcb

func `-`(u: uint32): uint32 {.inline.} =
  not u + 1

func xcbMask*(n: uint32): uint32 {.inline.} =
  if n == 32:
    not 0'u32
  else:
    (1'u32 shl n) - 1

func xcbPopcount*(x: uint32): uint32 {.inline.} =
  const
    m1 = 0x55555555
    m2 = 0x33333333
    m4 = 0x0f0f0f0f

  var x = x
  x -= (x shr 1) and m1
  x = (x and m2) + ((x shr 2) and m2)
  x = (x + (x shr 4)) and m4
  x += x shr 8
  return (x + (x shr 16)) and 0x3f

func xcbRoundup2*(base, pad: uint32): uint32 {.inline.} =
  (base + pad - 1'u32) and -pad

func xcbRounddown2*(base, pad: uint32): uint32 {.inline.} =
  base and -pad

func xcbRoundup*(base, pad: uint32): uint32 {.inline.} =
  result = base + pad - 1
  if ((pad - 1) and pad) == 0:
    result = result and -pad
  else:
    result -= result mod pad

func xcbRounddown*(base, pad: uint32): uint32 {.inline.} =
  if ((pad - 1) and pad) == 0:
    return base and -pad
  else:
    return base - (base mod pad)

func xcbBitReverse*(x: uint32, n: uint8): uint32 {.inline.} =
  const
    m1 = 0x00ff00ff
    m2 = 0x0f0f0f0f
    m3 = 0x33333333
    m4 = 0x55555555

  result = (x shl 16) or (x shr 16)
  result = ((result and m1) shl 8) or ((result shr 8) and m1)
  result = ((result and m2) shl 4) or ((result shr 4) and m2)
  result = ((result and m3) shl 2) or ((result shr 2) and m3)
  result = ((result and m4) shl 1) or ((result shr 1) and m4)
  result = result shr (32 - n)

func xcbHostByteOrder*: XcbImageOrder =
  case cpuEndian
  of bigEndian:
    xcbImageOrderMsbFirst
  of littleEndian:
    xcbImageOrderLsbFirst
