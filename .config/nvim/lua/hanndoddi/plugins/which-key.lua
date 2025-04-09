return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {}, -- keep this for plugin setup
    config = function() --custom colors for which-key removed can be added if needed: highlight "WhichKeyDesc guifg=#6A7DE9 guibg=NONE" "highlight WhichKey guifg=#00ff00 guibg=NONE"
      vim.cmd [[
        highlight WhichKeyGroup guifg=#ffaa00 guibg=NONE 
      ]]
 
      -- which-key group names
      local present, wk = pcall(require, 'which-key')
      if present then
        wk.add {
          { '<leader>t', group = 'Tabs' },
          { '<leader>s', group = 'Splits', icon = ""},
          { '<leader>h', group = 'Git' },
          { '<leader>e', group = 'File Tree' },
          { '<leader>c', group = 'Code Action' },
          { '<leader>n', group = 'Search Highlight' },
          { '<leader>o', group = 'Org', icon = ""},
          { '<leader>r', group = 'LSP', icon = ""},
          { '<leader>w', group = 'Session'},
          { '<leader>i', group = 'IDE', icon = ""},
          { '<leader>ip', group = 'PlatformIO', icon = ""},
          { '<leader>æ', name = 'Terminal', icon = ""},
        }
      end
    end,
    dependencies = {
      { 'echasnovski/mini.icons', lazy = true }, -- cleanly tucked in
    },
  },
}
