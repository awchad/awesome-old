local awful = require('awful')
local wibox = require('wibox')
local beautiful = require('beautiful')

local workspaces = require('awchad.configuration.workspaces')

local widgets = require('awchad.widgets')

screen.connect_signal('request::desktop_decoration', function(screen)
  awful.tag(workspaces.tags, screen, awful.layout.layouts[workspaces.initial_layout_index])

  screen.workspaces = widgets.workspaces({
    screen = screen
  })

  screen.statusbar = awful.wibar({
    screen = screen,
    position = beautiful.statusbar.position,
    height = beautiful.statusbar.height,
    bg = beautiful.statusbar.background,
    fg = beautiful.statusbar.foreground,
    widget = {
      {
        {
          screen.workspaces,
          right = 16,
          left = 16,
          widget = wibox.container.margin
        },
        layout = wibox.layout.fixed.horizontal,
      },
      nil,
      {
        widgets.system.kernel,
        widgets.system.cpu,
        widgets.system.physical_memory,
        widgets.system.disk,
        widgets.system.network,
        widgets.system.packages,
        widgets.system.date,
        spacing = beautiful.system_widgets.spacing,
        layout = wibox.layout.fixed.horizontal,
      },
      layout = wibox.layout.align.horizontal
    },
  })
end)
