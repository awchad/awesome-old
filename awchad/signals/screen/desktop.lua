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
      layout = wibox.layout.align.horizontal,
      {
        layout = wibox.layout.fixed.horizontal,
        screen.workspaces,
      },
    },
  })
end)
