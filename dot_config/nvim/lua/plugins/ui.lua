return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
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
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
}
