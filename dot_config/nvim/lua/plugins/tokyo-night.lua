return {
  "folke/tokyonight.nvim",
  opts = {
    style = "night",
    styles = {
      keywords = { italic = true },
    },
  },

  --   on_highlights = function(hl, c)
  --     hl.Function = {
  --       fg = "#bf68d9",
  --     }
  --     -- hl["@keyword"] = { fg = "#FFFFFF" }
  --     hl["@parameter"] = { fg = "#ED5F9F" }
  --     hl["@constructor"] = { fg = "#e8c88c" }
  --     hl["@operator"] = { fg = c.blue5 }
  --     hl["@punctuation.bracket"] = { fg = "#e8c88c" }
  --     -- hl["@field"] = { fg = "#AA4A44" }
  --     hl.Type = {
  --       fg = "#e2b86b",
  --     }
  --     hl.TSConstructor = {
  --       fg = c.blue1,
  --     }
  --     hl.TSTagDelimiter = {
  --       fg = c.dark5,
  --     }
  --     local prompt = "#2d3149"
  --     hl.TelescopeNormal = {
  --       bg = c.bg,
  --       fg = c.fg_dark,
  --     }
  --   end,
  -- },
}
