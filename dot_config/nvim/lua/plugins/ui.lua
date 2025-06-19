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
      -- colorscheme = "nightfox",
      colorscheme = "everforest",
    },
  },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  -- },
  {
    "sainnhe/everforest",
    lazy = false,
  },
  -- Other plugins
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
}
