import ./xcb

{.passl: "-lxcb-xrm".}
{.push cdecl, header: "xcb/xcb_xrm.h".}

type XcbXrmDatabase* {.importc: "xcb_xrm_database_t", incompleteStruct.} = object

proc xrmDatabaseFromDefault*(conn: ptr XcbConnection): ptr XcbXrmDatabase {.importc: "xcb_xrm_database_from_default".}
proc xrmDatabaseFromResourceManager*(conn: ptr XcbConnection; screen: ptr XcbScreen): ptr XcbXrmDatabase {.importc: "xcb_xrm_database_from_resource_manager".}
proc xrmDatabaseFromString*(str: cstring): ptr XcbXrmDatabase {.importc: "xcb_xrm_database_from_string".}
proc xrmDatabaseFromFile*(filename: cstring): ptr XcbXrmDatabase {.importc: "xcb_xrm_database_from_file".}
proc toString*(database: ptr XcbXrmDatabase): cstring {.importc: "xcb_xrm_database_to_string".}
proc combine*(sourceDb: ptr XcbXrmDatabase; targetDb: ptr ptr XcbXrmDatabase; override: bool) {.importc: "xcb_xrm_database_combine".}
proc putResource*(database: ptr ptr XcbXrmDatabase; resource, value: cstring) {.importc: "xcb_xrm_database_put_resource".}
proc putResourceLine*(database: ptr ptr XcbXrmDatabase; line: cstring) {.importc: "xcb_xrm_database_put_resource_line".}
proc free*(database: ptr XcbXrmDatabase) {.importc: "xcb_xrm_database_free".}
proc getString*(database: ptr XcbXrmDatabase; resName, resClass: cstring; `out`: cstringArray): cint {.importc: "xcb_xrm_resource_get_string".}
proc getLong*(database: ptr XcbXrmDatabase; resName, resClass: cstring; `out`: ptr clong): cint {.importc: "xcb_xrm_resource_get_long".}
proc getBool*(database: ptr XcbXrmDatabase; resName, resClass: cstring; `out`: ptr bool): cint {.importc: "xcb_xrm_resource_get_bool".}

{.pop.}
