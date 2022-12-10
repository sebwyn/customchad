local M = {}

M.disabled = {
  n = {
    ["<TAB>"] = "",
    ["<S-TAB>"] = "",
  }
}

M.general = {
  n = {
    ["<leader>;"] = { ":bp<CR>:bd #<CR>", "delete buffer", opts = { nowait = true } },
  },

  v = {
    [">"] = { ">gv", "Indent mainting selection", opts = { nowait = true } },
    ["<"] = { "<gv", "Unindent mainting selection", opts = { nowait = true } },
  },
}

M.tabufline = {
  n = {
    ["<C-j>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<C-k>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>x"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating terminal",
      opts = { nowait = true },
    },
  },
}

-- more keybinds!

return M
