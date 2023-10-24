---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>q<CR>", "Quix quit" },
    -- ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["\\"] = { "<cmd>:vsplit <CR>", "Vertical split" },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find todo" },
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "Open LazyGit" },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
  t = {
    ["<C-]>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
    },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
}

-- more keybinds!

return M
