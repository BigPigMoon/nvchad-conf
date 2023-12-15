---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>q<CR>", "quick exit", opts = { nowait = true } },
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "open LazyGit" },
    ["\\"] = { "<cmd>vsplit<CR>", "Split screen vertically" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "find todos" },
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Tab left",
    },
    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Tab left",
    },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>gdt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "update crates",
    },
  },
}
-- more keybinds!

return M
