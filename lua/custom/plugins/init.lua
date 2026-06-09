-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

return {
  {
    'stevearc/oil.nvim',
    --  ---@module 'oil'
    --  ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    -- line comment is 'gcc' and block comment is 'gbc'
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup()
      -- Optional: Define mappings for commenting
      -- local cm = require('Comment')
      -- cm.setup {
      --   mappings = {
      --     basic = true,
      --     extra = true,
      --   },
      -- }
    end,
  },
  -- {
  --   'ray-x/go.nvim',
  --   dependencies = {
  --     'ray-x/guihua.lua',
  --     'neovim/nvim-lspconfig',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  --   event = { 'CmdlineEnter' },
  --   ft = { 'go', 'gomod' },
  --   build = ':lua require("go.install").update_all_sync()',
  --   config = function()
  --     require('go').setup {
  --       -- lsp_keymaps = false,
  --       -- other options
  --     }
  --     local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
  --     vim.api.nvim_create_autocmd('BufWritePre', {
  --       pattern = '*.go',
  --       callback = function()
  --         require('go.format').goimports()
  --       end,
  --       group = format_sync_grp,
  --     })
  --   end,
  -- },
  -- -- TODO these packages are new and not showing
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    end,
  },
  {
    'jma02/tectonic.nvim',
    opts = {},
  },
}
