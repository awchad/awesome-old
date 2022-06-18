local wibox = require('wibox')
local beautiful = require('beautiful')
local vicious = require('vicious')

local __WIDGET_SYSTEM_PKG = wibox.widget {
  font = beautiful.system_widgets.font,
  widget = wibox.widget.textbox
}

local __CONTAINER_WIDGET = {
  {
    {
      {
        __WIDGET_SYSTEM_PKG,
        bg = beautiful.statusbar.background,
        widget = wibox.container.background
      },
      bottom = 3,
      widget = wibox.container.margin,
    },
    bg = beautiful.system_widgets.cpu,
    widget = wibox.container.background
  },
  fg = beautiful.system_widgets.cpu,
  widget = wibox.container.background
}

vicious.register(__WIDGET_SYSTEM_PKG, vicious.widgets.pkg, function (_, args)
  local pkg_count = tonumber(args[1])

  if pkg_count == 0 then
    return ('   up to date ')
  elseif pkg_count == 1 then
    return ('   1 update ')
  else
    return ('   %s updates '):format(pkg_count)
  end
end, 3600, 'Arch')

return __CONTAINER_WIDGET

