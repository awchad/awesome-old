local awful = require('awful')
local monitor = require('awchad.configuration.monitor')

awful.keyboard.append_global_keybindings({
  awful.key({}, 'XF86MonBrightnessUp', function()
    local controller = monitor.controller
    local value = monitor.increase_brightness.value
    local args_t = monitor.increase_brightness.args

    local args = ''

    for _, arg in ipairs(args_t) do
      args = args .. ' ' .. arg
    end

    args = args:gsub('$0', value)

    awful.spawn(string.format('%s %s', controller, args))
    awesome.emit_signal('monitor::brightness_changed')
  end, {
    description = 'increase monitor brightness',
    group = 'monitor',
  }),
  awful.key({}, 'XF86MonBrightnessDown', function()
    local controller = monitor.controller
    local value = monitor.decrease_brightness.value
    local args_t = monitor.decrease_brightness.args

    local args = ''

    for _, arg in ipairs(args_t) do
      args = args .. ' ' .. arg
    end

    args = args:gsub('$0', value)

    awful.spawn(string.format('%s %s', controller, args))
    awesome.emit_signal('monitor::brightness_changed')

  end, {
    description = 'decrease monitor brightness',
    group = 'monitor',
  }),
})
