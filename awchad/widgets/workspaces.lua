local awful = require('awful')
local beautiful = require('beautiful')

local __WIDGET_WORKSPACES = function(args)
  return awful.widget.taglist({ screen = args.screen,
    filter = awful.widget.taglist.filter.all,
    buttons = {
      awful.button({}, 1, function(tag)
        tag:view_only()
      end),
      awful.button({ AWCHAD_MODIFIER }, 1, function(tag)
        if client.focus then
          client.focus:move_to_tag(tag)
        end
      end),
      awful.button({}, 3, awful.tag.viewtoggle),
      awful.button({ AWCHAD_MODIFIER }, 3, function(tag)
        if client.focus then
          client.focus:toggle_tag(tag)
        end
      end),
      awful.button({}, 4, function(tag)
        awful.tag.viewprev(tag.screen)
      end),
      awful.button({}, 5, function(tag)
        awful.tag.viewnext(tag.screen)
      end),
    },
    style = {
      font = beautiful.workspaces.font,

      spacing = beautiful.workspaces.spacing,

      bg_focus = beautiful.workspaces.background,
      bg_urgent = beautiful.workspaces.background,
      bg_occupied = beautiful.workspaces.background,
      bg_empty = beautiful.workspaces.background,
      bg_volatile = beautiful.workspaces.background,

      fg_focus = beautiful.workspaces.focused,
      fg_urgent = beautiful.workspaces.urgent,
      fg_occupied = beautiful.workspaces.occupied,
      fg_empty = beautiful.workspaces.empty,
      fg_volatile = beautiful.workspaces.volatile,
    },
  })
end

return __WIDGET_WORKSPACES
