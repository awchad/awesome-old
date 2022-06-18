return {
  controller = '/usr/bin/amixer',
  increase_volume_command = {
    value = 5,
    control = 'Master',
    args = {
      '-q',
      'sset',
      '$0',
      '$1%+',
    },
  },
  decrease_volume_command = {
    value = 5,
    control = 'Master',
    args = {
      '-q',
      'sset',
      '$0',
      '$1%-',
    },
  },
  mute_control_command = {
    control = 'Master',
    args = {
      '-q',
      'sset',
      '$0',
      'toggle'
    },
  },
}
