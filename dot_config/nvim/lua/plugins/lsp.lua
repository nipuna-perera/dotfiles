return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "gopls",
        "terraform-ls",
        "tflint",
        "yamlfmt",
        "yamllint",
        "typescript-language-server",
        "jdtls",
        "golangci-lint-langserver",
        "go-debug-adapter",
        "ansible-language-server",
        "ansible-lint",
      },
    },
  },
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
