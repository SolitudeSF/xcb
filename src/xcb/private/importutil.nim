import macros

const xcbDynlib* {.booldefine.} = true

macro rename*(name: static[string], node: untyped): untyped =
  result = copyNimTree node
  when not xcbDynlib:
    result[0][1].add nnkExprColonExpr.newTree(ident"importc", newLit name)
