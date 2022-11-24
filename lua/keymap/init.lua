-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
-- recommend plugins key defines in this file

require('keymap.config')
local key = require('core.keymap')
local nmap = key.nmap
local silent, noremap = key.silent, key.noremap
local opts = key.new_opts
local cmd = key.cmd

-- usage of plugins
nmap({
  -- packer
  { '<Leader>pu', cmd('PackerUpdate'), opts(noremap, silent) },
  { '<Leader>pi', cmd('PackerInstall'), opts(noremap, silent) },
  { '<Leader>pc', cmd('PackerCompile'), opts(noremap, silent) },
  -- dashboard
  { '<Leader>n', cmd('DashboardNewFile'), opts(noremap, silent) },
  { '<Leader>ss', cmd('SessionSave'), opts(noremap, silent) },
  { '<Leader>sl', cmd('SessionLoad'), opts(noremap, silent) },
  -- nvimtree
  { '<Leader>e', cmd('NvimTreeToggle'), opts(noremap, silent) },
  -- Telescope
  { '<Leader>b', cmd('Telescope buffers'), opts(noremap, silent) },
  { '<Leader>fa', cmd('Telescope live_grep'), opts(noremap, silent) },
  { '<Leader>ff', cmd('Telescope find_files'), opts(noremap, silent) },
  -- ToggleTerm
  { '<Leader>tt', cmd('ToggleTerm'), opts(noremap, silent) },
  -- bufdelete
  { '<Leader>w', cmd('Bdelete'), opts(noremap, silent) },
  -- lspsaga
  { 'ca', cmd('Lspsaga code_action'), opts(noremap, silient) },
  { 'ch', cmd('Lspsaga hover_doc'), opts(noremap, silient) },
  { 'cd', cmd('Lspsaga peek_definition'), opts(noremap, silient) },
  { 'cf', cmd('Lspsaga lsp_finder'), opts(noremap, silient) },
  { 'c]', cmd('Lspsaga diagnostic_jump_next'), opts(noremap, silient) },
  { 'c[', cmd('Lspsaga diagnostic_jump_prev'), opts(noremap, silient) },
})
