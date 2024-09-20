-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.env.PATH = "/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:" .. vim.env.PATH
