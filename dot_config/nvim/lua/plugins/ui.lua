return {
  -- Disable
  { "akinsho/bufferline.nvim", enabled = false },

  -- Themes
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "gruvbox",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-mocha",
      colorscheme = "nightfox",
    },
  },
  { "EdenEast/nightfox.nvim", lazy = false },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- mocha, macchiato, frappe, latte
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "soft", -- hard, soft
    },
  },
  {
    "folke/zen-mode.nvim",
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      on_colors = function(colors)
        colors.border = colors.comment
      end,
    },
  },
  {
    "sainnhe/gruvbox-material",
    opts = {},
  },

  -- Other plugins
  {
    "folke/twilight.nvim",
    opts = {},
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", mode = "n", "window left" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", mode = "n", "window right" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", mode = "n", "window down" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", mode = "n", "window up" },
    },
  },
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   opts = {
  --     default_component_configs = {
  --       name = {
  --         use_git_status_colors = false,
  --       },
  --       icon = {
  --         folder_empty = "󰜌",
  --         folder_empty_open = "󰜌",
  --       },
  --       document_symbols = {
  --         kinds = {
  --           File = { icon = "󰈙", hl = "Tag" },
  --           Namespace = { icon = "󰌗", hl = "Include" },
  --           Package = { icon = "󰏖", hl = "Label" },
  --           Class = { icon = "󰌗", hl = "Include" },
  --           Property = { icon = "󰆧", hl = "@property" },
  --           Enum = { icon = "󰒻", hl = "@number" },
  --           Function = { icon = "󰊕", hl = "Function" },
  --           String = { icon = "󰀬", hl = "String" },
  --           Number = { icon = "󰎠", hl = "Number" },
  --           Array = { icon = "󰅪", hl = "Type" },
  --           Object = { icon = "󰅩", hl = "Type" },
  --           Key = { icon = "󰌋", hl = "" },
  --           Struct = { icon = "󰌗", hl = "Type" },
  --           Operator = { icon = "󰆕", hl = "Operator" },
  --           TypeParameter = { icon = "󰊄", hl = "Type" },
  --           StaticMethod = { icon = "󰠄 ", hl = "Function" },
  --         },
  --       },
  --       git_status = {
  --         symbols = {
  --           renamed = "R",
  --           untracked = "U",
  --           modified = "M",
  --           deleted = "D",
  --           conflict = "C",
  --         },
  --       },
  --     },
  --     renderers = {
  --       file = {
  --         { "icon" },
  --         {
  --           "container",
  --           width = "100%",
  --           right_padding = 1,
  --           content = {
  --             {
  --               "name",
  --               use_git_status_colors = true,
  --               zindex = 10,
  --             },
  --             { "diagnostics", zindex = 20, align = "right" },
  --             { "git_status", zindex = 20, align = "right" },
  --           },
  --         },
  --       },
  --       directory = {
  --         { "icon" },
  --         {
  --           "container",
  --           width = "100%",
  --           right_padding = 1,
  --           content = {
  --             {
  --               "name",
  --               use_git_status_colors = true,
  --               zindex = 10,
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
