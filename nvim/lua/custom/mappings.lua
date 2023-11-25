---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-f>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvim tree." },
    ["<leader>gg"] = {
      function()
        require("nvterm.terminal").toggle("float")
        require("nvterm.terminal").send("lazygit", "float")
      end,
      "toggle floating term",
    },
  },
}

-- more keybinds!

return M
