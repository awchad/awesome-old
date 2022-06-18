local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')
local system = require('awchad.configuration.system')

local __WIDGET_SYSTEM_NETWORK = wibox.widget {
  font = beautiful.system_widgets.font,
  widget = wibox.widget.textbox
}

local __CONTAINER_WIDGET = {
  {
    {
      {
        __WIDGET_SYSTEM_NETWORK,
        bg = beautiful.statusbar.background,
        widget = wibox.container.background
      },
      bottom = 3,
      widget = wibox.container.margin,
    },
    bg = beautiful.system_widgets.network,
    widget = wibox.container.background
  },
  fg = beautiful.system_widgets.network,
  widget = wibox.container.background
}

vicious.register(__WIDGET_SYSTEM_NETWORK, vicious.widgets.net, string.format('   ${%s up_kb}kb   ${%s down_kb}kb ', system.network_interface, system.network_interface))

return __CONTAINER_WIDGET

