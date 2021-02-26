import xcb/[xcb, dpms]

let c = xcbConnect(nil, nil)

c.prefetchExtensionData addr xcbDpmsId

let
  vc = c.dpmsGetVersion(1, 1)
  cc = c.dpmsCapable
  tc = c.dpmsGetTimeouts
  ic = c.dpmsInfo

  ver = c.reply(vc, nil)
  cap = c.reply(cc, nil)
  time = c.reply(tc, nil)
  info = c.reply(ic, nil)

echo ver[]
echo cap[]
echo time[]
echo info[]

c.disconnect
