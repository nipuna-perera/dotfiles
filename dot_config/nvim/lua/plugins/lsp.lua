return {
  -- inlay hints
  {
    "simrat39/inlay-hints.nvim",
    config = function(_, _)
      require("inlay-hints").setup({
        only_current_line = true,
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = nil,
      automatic_installation = true,
      automatic_setup = false,
    },
  },
  { import = "plugins.lang" },
}
