local xrdb = require('awchad.theme.xrdb')

return {
  background = xrdb.background,

  font = 'JetBrains Mono Bold 12',
  spacing = xrdb.dpi(4),

  focused = xrdb.color04,
  urgent = xrdb.color01,
  occupied = xrdb.color12,
  empty = xrdb.color08,
  volatile = xrdb.color03,
}
