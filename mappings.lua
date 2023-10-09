local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = '',
    ["<leader>e"] = '',
    ["<C-s>"] = '',
    ["<C-c>"] = '',
  }
}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "Save file" },
    ["<leader>y"] = { "\"*y" },
    ["<leader>d"] = { "\"*d" },
    ["<leader>s"] =  {[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]},
  },

  v = {
    ["J"] =  {":m '>+1<CR>gv=gv"},
    ["K"] =  {":m '<-2<CR>gv=gv"},

    ["<leader>y"] = {"\"+y"},
    ["<leader>p"] = {"\"+p"},
    ["<leader>d"] = {"\"+d"},
  }

}


M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<leader>o"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.harpoon = {
  n = {
    -- Navigation through hunks
    ["<leader>a"] = {
      function()
        require('harpoon.mark').add_file()
      end,
      "Harpoon add file"
    },
    ["<C-e>"] = {
      function()
        require('harpoon.ui').toggle_quick_menu()
      end,
      "Harpoon toggle menu"
    },
    ["<leader>1"] = {
      function()
        require('harpoon.ui').nav_file(1)
      end,
      "Harppon open file 1"
    },
    ["<leader>2"] = {
      function()
        require('harpoon.ui').nav_file(2)
      end,
      "Harppon open file 2"
    },
    ["<leader>3"] = {
      function()
        require('harpoon.ui').nav_file(3)
      end,
      "Harppon open file 3"
    },
    ["<leader>4"] = {
      function()
        require('harpoon.ui').nav_file(4)
      end,
      "Harppon open file 4"
    },
    ["<leader>5"] = {
      function()
        require('harpoon.ui').nav_file(5)
      end,
      "Harppon open file 5"
    },
    ["<leader>6"] = {
      function()
        require('harpoon.ui').nav_file(6)
      end,
      "Harppon open file 6"
    },
    ["<leader>7"] = {
      function()
        require('harpoon.ui').nav_file(7)
      end,
      "Harppon open file 7"
    },
    ["<leader>8"] = {
      function()
        require('harpoon.ui').nav_file(8)
      end,
      "Harppon open file 8"
    },
    ["<leader>9"] = {
      function()
        require('harpoon.ui').nav_file(9)
      end,
      "Harppon open file 9"
    },
  }
}

M.undotree = {
  n = {
    ["<leader>0"] = { "<cmd> UndotreeToggle <CR>", "Toggle UndoTree" }
  }
}

M.lazygit = {
  n = {
    -- Navigation through hunks
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Toggle relative number" },
  }
}

M.lspconfig = {
  plugin = true,
  n = {
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },
    ["<leader>lb"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },
    ["<S-z>"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
    ["<leader>li"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },
    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },
    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },
    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },
    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },
    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
    ["<leader>x"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },
    ["<leader>lca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },

  v = {
    ["<leader>lca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.nvterm = {
  plugin = true,
  t = {
    ["<f7>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
    ["<f7>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
}

return M
