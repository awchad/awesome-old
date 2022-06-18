return {
  workspaces = require('awchad.widgets.workspaces'),
  system = {
    kernel = require('awchad.widgets.system.kernel'),
    cpu = require('awchad.widgets.system.cpu'),
    physical_memory = require('awchad.widgets.system.physical-memory'),
    date = require('awchad.widgets.system.date'),
    disk = require('awchad.widgets.system.disk'),
    network = require('awchad.widgets.system.network'),
    packages = require('awchad.widgets.system.packages')
  }
}
