return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "gopls",
        "delve",
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
}
