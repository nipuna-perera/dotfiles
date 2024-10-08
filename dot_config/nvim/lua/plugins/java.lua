local Util = require("lazyvim.util")

return {

  -- Add java to treesitter.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "java" })
    end,
  },

  -- Ensure java debugger and test packages are installed.
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.registries = opts.registries or {}
          table.insert(opts.registries, 1, "github:nvim-java/mason-registry")
          table.insert(opts.registries, "github:mason-org/mason-registry")
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { "java-test", "java-debug-adapter" })
        end,
      },
    },
  },

  -- Set up nvim-java
  {
    "nvim-java/nvim-java",
    lazy = true,
    ft = "java",
    dependencies = {
      { "nvim-java/lua-async-await" },
      { "nvim-java/nvim-java-core" },
      { "nvim-java/nvim-java-test" },
      { "nvim-java/nvim-java-dap" },
      { "nvim-java/nvim-java-refactor" },
      {
        "neovim/nvim-lspconfig",
        opts = {
          -- make sure mason installs the server
          servers = {
            jdtls = {
              keys = {
                -- Workaround for the lack of a DAP strategy in neotest-java
                {
                  "<leader>td",
                  function()
                    require("java").dap.config_dap()
                    require("java").test.debug_current_method()
                  end,
                  desc = "Debug Nearest (Java)",
                },
              },
            },
          },
        },
      },
      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
          handlers = {
            ["jdtls"] = function()
              require("java").setup({
                java_test = {
                  enable = Util.has("nvim-dap"),
                },
                java_debug_adapter = {
                  enable = Util.has("nvim-dap"),
                },
                jdk = {
                  auto_install = false,
                },
              })
            end,
          },
        },
      },
    },
  },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "rcasia/neotest-java",
    },
    opts = {
      adapters = {
        ["neotest-java"] = {},
      },
    },
  },
}
