return {
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    config = function()
      require("github-theme").setup({})
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_high_contrast",
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
