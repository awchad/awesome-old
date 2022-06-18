local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local __WIDGET_SYSTEM_MEM = wibox.widget {
  font = beautiful.system_widgets.font,
  widget = wibox.widget.textbox
}

local __CONTAINER_WIDGET = {
  {
    {
      {
        __WIDGET_SYSTEM_MEM,
        bg = beautiful.statusbar.background,
        widget = wibox.container.background
      },
      bottom = 3,
      widget = wibox.container.margin,
    },
    bg = beautiful.system_widgets.memory,
    widget = wibox.container.background
  },
  fg = beautiful.system_widgets.memory,
  widget = wibox.container.background
}

vicious.register(__WIDGET_SYSTEM_MEM, vicious.widgets.mem, '   ram: $2M ($1%) ', 1)

return __CONTAINER_WIDGET

