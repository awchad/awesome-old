local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup')

local apps = require('awchad.configuration.apps')

awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER }, 's', hotkeys_popup.show_help, {
    description = 'show help',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'r', awesome.restart, {
    description = 'reload awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'q', awesome.quit, {
    description = 'quit awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'd', function()
    local app = apps.app_launcher.path
    local args = ''

    for _, arg in ipairs(apps.app_launcher.args or {}) do
      args = args .. ' ' .. arg
    end

    awful.spawn(app .. ' ' .. args)
  end, {
    description = 'run app launcher',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'x', function()
    local app = apps.command_prompt.path
    local args = ''

    for _, arg in ipairs(apps.command_prompt.args or {}) do
      args = args .. ' ' .. arg
    end

    awful.spawn(app .. ' ' .. args)
  end, {
    description = 'run command prompt',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Return', function()
    local app = apps.terminal_emulator.path
    local args = ''

    for _, arg in ipairs(apps.terminal_emulator.args or {}) do
      args = args .. ' ' .. arg
    end

    awful.spawn(app .. ' ' .. args)
  end, {
    description = 'open a terminal',
    group = 'launcher',
  }),
})
