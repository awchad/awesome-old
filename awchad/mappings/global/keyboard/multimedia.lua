local awful = require('awful')
local audio = require('awchad.configuration.audio')

awful.keyboard.append_global_keybindings({
  awful.key({}, 'XF86AudioRaiseVolume', function()
    local controller = audio.controller
    local value = audio.increase_volume_command.value
    local control = audio.increase_volume_command.control
    local args_t = audio.increase_volume_command.args

    local args = ''

    for _, arg in ipairs(args_t) do
      args = args .. ' ' .. arg
    end

    args = args:gsub('$0', control)
    args = args:gsub('$1', value)

    awful.spawn(string.format('%s %s', controller, args))
    awesome.emit_signal('multimedia::volume_changed')
  end, {
    description = 'increase volume',
    group = 'multimedia',
  }),
  awful.key({}, 'XF86AudioLowerVolume', function()
    local controller = audio.controller
    local value = audio.decrease_volume_command.value
    local control = audio.decrease_volume_command.control
    local args_t = audio.decrease_volume_command.args

    local args = ''

    for _, arg in ipairs(args_t) do
      args = args .. ' ' .. arg
    end

    args = args:gsub('$0', control)
    args = args:gsub('$1', value)

    awful.spawn(string.format('%s %s', controller, args))
    awesome.emit_signal('multimedia::volume_changed')
  end, {
    description = 'decrease volume',
    group = 'multimedia',
  }),
  awful.key({}, 'XF86AudioMute', function()
    local controller = audio.controller
    local control = audio.mute_control_command.control
    local args_t = audio.mute_control_command.args

    local args = ''

    for _, arg in ipairs(args_t) do
      args = args .. ' ' .. arg
    end

    args = args:gsub('$0', control)

    awful.spawn(string.format('%s %s', controller, args))
    awesome.emit_signal('multimedia::volume_toggled')
  end, {
    description = 'mute volume',
    group = 'multimedia',
  }),
})
