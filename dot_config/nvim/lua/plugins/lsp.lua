return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "ansible-lint",
        "go-debug-adapter",
        "gofumpt",
        "golangci-lint",
        "gomodifytags",
        "gopls",
        "jdtls",
        "shellcheck",
        "shfmt",
        "stylua",
        "terraform-ls",
        "tflint",
        "typescript-language-server",
        "yamlfmt",
        "yamllint",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 4096, -- Increase memory limit for tsserver
              },
            },
          },
        },
      }
    }
  }
}
