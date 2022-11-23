-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local plugin = require('core.pack').register_plugin
local conf = require('modules.tools.config')

plugin({
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  config = conf.telescope,
  requires = {
    { 'nvim-lua/plenary.nvim', opt = true },
    { 'nvim-telescope/telescope-fzy-native.nvim', opt = true },
  },
})

plugin({
  'folke/which-key.nvim',
  config = conf.whichkey
})

plugin({
  'gelguy/wilder.nvim',
  config = conf.wilder
})

plugin({
  'famiu/bufdelete.nvim',
  config = conf.bufdelete
})

plugin({
  'lewis6991/gitsigns.nvim',
  config = conf.gitsigns
})