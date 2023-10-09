local plugins = {
  {
    "ThePrimeagen/harpoon",
    cmd = "Harpoon"
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle"
  },

  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<A-l>",
          next = "<A-]>",
          prev = "<A-[",
        }
      }
    },
    config = function()
      require "custom.configs.copilot"
    end  
  },

  {
    'machakann/vim-highlightedyank',
    event = 'TextYankPost *',
    config = function()
      require "custom.configs.highlightedyank"
    end
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    lazy = false,
    config = function()
      require "custom.configs.todo"
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "tpope/vim-surround",
    lazy = false,
  },

  {
    "NvChad/nvterm",
    init = function()
      require("core.utils").load_mappings "nvterm"
    end,
    config = function(_, opts)
      require "base46.term"
      require("nvterm").setup(opts)
    end,
    opts = function()
      return require("custom.configs.nvterm_config")
    end,
  },
}

return plugins
