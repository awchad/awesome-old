local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local __WIDGET_SYSTEM_DISK = wibox.widget {
  font = beautiful.system_widgets.font,
  widget = wibox.widget.textbox
}

local __CONTAINER_WIDGET = {
  {
    {
      {
        __WIDGET_SYSTEM_DISK,
        bg = beautiful.statusbar.background,
        widget = wibox.container.background
      },
      bottom = 3,
      widget = wibox.container.margin,
    },
    bg = beautiful.system_widgets.disk,
    widget = wibox.container.background
  },
  fg = beautiful.system_widgets.disk,
  widget = wibox.container.background
}

vicious.register(__WIDGET_SYSTEM_DISK, vicious.widgets.fs, '  disk: ${/ avail_gb}G free ', 900)

return __CONTAINER_WIDGET

