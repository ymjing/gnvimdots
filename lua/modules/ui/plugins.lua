-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local plugin = require('core.pack').register_plugin
local conf = require('modules.ui.config')

plugin({
  'shaunsingh/nord.nvim',
  config = conf.nord
})

plugin({
  'glepnir/dashboard-nvim',
  config = conf.dashboard
})

plugin({
  'nvim-lualine/lualine.nvim',
  config = conf.lualine,
  requires = 'kyazdani42/nvim-web-devicons'
})

plugin({
  'kyazdani42/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  requires = 'kyazdani42/nvim-web-devicons',
})

plugin({
  'akinsho/nvim-bufferline.lua',
  config = conf.nvim_bufferline,
  requires = 'kyazdani42/nvim-web-devicons'
})

plugin({
  'akinsho/toggleterm.nvim',
  config = conf.toggleterm,
  event = "UIEnter"
})