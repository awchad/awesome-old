local beautiful = require('beautiful.xresources')

local xrdb = beautiful.get_current_theme()

return {
  dpi = beautiful.apply_dpi,

  background = xrdb.background,
  foreground = xrdb.foreground,

  color00 = xrdb.color0,
  color01 = xrdb.color1,
  color02 = xrdb.color2,
  color03 = xrdb.color3,
  color04 = xrdb.color4,
  color05 = xrdb.color5,
  color06 = xrdb.color6,
  color07 = xrdb.color7,
  color08 = xrdb.color8,
  color09 = xrdb.color9,
  color10 = xrdb.color10,
  color11 = xrdb.color11,
  color12 = xrdb.color12,
  color13 = xrdb.color13,
  color14 = xrdb.color14,
  color15 = xrdb.color15,
}
