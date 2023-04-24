return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "go",
        "gomod",
        "gowork",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        gopls = function(_, opts)
          local ih = require("inlay-hints")
          require("lazyvim.util").on_attach(function(client, bufnr)
            if client.name == "gopls" then
              ih.on_attach(client, bufnr)
              -- workaround for gopls not supporting semanticTokensProvider
              -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
              if not client.server_capabilities.semanticTokensProvider then
                local semantic = client.config.capabilities.textDocument.semanticTokens
                client.server_capabilities.semanticTokensProvider = {
                  full = true,
                  legend = {
                    tokenTypes = semantic.tokenTypes,
                    tokenModifiers = semantic.tokenModifiers,
                  },
                  range = true,
                }
              end
            end
          end)
          opts.settings = {
            gopls = {
              semanticTokens = true,
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = false,
                rangeVariableTypes = true,
              },
            },
          }
        end,
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.gofumpt,
        nls.builtins.diagnostics.golangci_lint,
        nls.builtins.code_actions.gomodifytags,
        nls.builtins.code_actions.impl,
        nls.builtins.code_actions.refactoring,
      })
    end,
  },
  {
    "mason.nvim",
    opts = {
      ensure_installed = { "delve" },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-go",
    },
    opts = function(_, opts)
      opts.adapters = vim.list_extend(opts.adapters or {}, {
        require("neotest-go"),
      })
    end,
  },
}
