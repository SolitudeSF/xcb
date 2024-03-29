import private/importutil

when xcbDynlib:
  {.push dynlib: "libxcb-util.so(|.1)".}
else:
  {.passl: "-lxcb-util".}
  {.push header: "xcb/xcb_atom.h".}

{.push cdecl.}

proc nameByScreen*(base: cstring, screen: uint8): cstring {.importc: "xcb_atom_name_by_screen".}
proc nameByResource*(base: cstring, resource: uint32): cstring {.importc: "xcb_atom_name_by_resource".}
proc nameUnique*(base: cstring, id: uint32): cstring {.importc: "xcb_atom_name_unique".}

{.pop.}
{.pop.}
