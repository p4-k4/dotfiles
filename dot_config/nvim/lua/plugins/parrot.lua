local function read_api_key()
  local file = io.open(os.getenv("HOME") .. "/.config/anthropic/api_key", "r")
  if file then
    local content = file:read("*all")
    file:close()
    return content:gsub("^%s*(.-)%s*$", "%1") -- Trim whitespace
  end
  return nil
end

return {
  "frankroeder/parrot.nvim",
  dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  opts = {
    providers = {
      anthropic = {
        api_key = read_api_key() or os.getenv("ANTHROPIC_API_KEY"),
      },
    },
  }
}
