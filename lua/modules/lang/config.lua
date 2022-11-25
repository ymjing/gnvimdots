local config = {}

function config.nvim_treesitter()
  vim.api.nvim_command('set foldmethod=expr')
  vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      "bash",
      "fish",
      "c",
      "cpp",
      "java",
      "kotlin",
      "proto",
      "lua",
      "go",
      "json",
      "yaml",
      "toml",
      "make",
      "python",
      "rust",
      "html",
    },
    ignore_install = { 'phpdoc' },
    highlight = {
      enable = true,
      disable = { "vim" },
      additional_vim_regex_highlighting = false,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ['fo'] = '@function.outer',
          ['fi'] = '@function.inner',
          ['co'] = '@class.outer',
          ['ci'] = '@class.inner',
        },
      },
    },
  })
end

return config
