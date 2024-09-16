local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.swapfile = false

vim.g.neovide_padding_top = 12
vim.g.neovide_padding_left = 12
vim.g.neovide_padding_right = 12
vim.g.neovide_padding_bottom = 12
vim.g.neovide_refresh_rate = 75

vim.neovide_background_color = "#1f2335"

vim.g.neovide_transparency = 1.0

vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 200.0
vim.g.neovide_floating_blur_amount_y = 200.0
vim.g.neovide_remember_dimensions = true
vim.g.neovide_remember_window_size = true

vim.o.guifont = "JetBrains Mono:h16"

vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_length = 0.00

if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
