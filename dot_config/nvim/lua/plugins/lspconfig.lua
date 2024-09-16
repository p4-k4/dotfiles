return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Setup for Bash Language Server
    lspconfig.bashls.setup({})

    -- Setup for Nix Language Server
    -- lspconfig.nil_ls.setup({})

    -- Setup for Lua Language Server
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    vim.diagnostic.config({
      virtual_text = false,
    })
  end,
}
