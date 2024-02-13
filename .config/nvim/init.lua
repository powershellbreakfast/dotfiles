-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("gruvbox").setup({
  transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")
