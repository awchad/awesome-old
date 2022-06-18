local xrdb = require('awchad.theme.xrdb')

local R = {}

R.statusbar = require('awchad.theme.statusbar')
R.workspaces = require('awchad.theme.workspaces')
R.system_widgets = require('awchad.theme.system-widgets')

R.useless_gap = xrdb.dpi(8)

R.border_width = xrdb.dpi(3)

R.border_color_normal = xrdb.color12
R.border_color_active = xrdb.color04
R.border_color_urgent = xrdb.color01
R.border_color_new = xrdb.color10

return R
