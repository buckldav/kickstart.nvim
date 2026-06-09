vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.pack.add({
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/echasnovski/mini.icons' },
  { src = 'https://github.com/numToStr/Comment.nvim' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/jma02/tectonic.nvim' },
})

require('oil').setup {}
require('mini.icons').setup {}
require('Comment').setup()
require('nvim-tree').setup {
  sort = { sorter = 'case_sensitive' },
  view = { width = 30 },
  renderer = { group_empty = true },
  filters = { dotfiles = true },
}
