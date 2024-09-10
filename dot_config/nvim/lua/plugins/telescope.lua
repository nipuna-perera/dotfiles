-- change some telescope options and a keymap to browse plugin files
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>space", false
      },
      {
        "<leader><space>",
        ":lua require('telescope').extensions.smart_open.smart_open()<CR>",
      },
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").find_files({
            hidden = true,
            no_ignore = true,
            no_ignore_parent = true,
            find_command = { "rg", "--files", "-g", "!{.git,node_modules,.gradle,tmp,dist,test-results}" },
          })
        end,
        desc = "Find Files (hidden included)",
      },
    },
    -- fuzzy finder prioritizing filenames and smartcase search
    dependencies = {
      {
        "danielfalk/smart-open.nvim",
        branch = "0.2.x",
        dependencies = {
          "kkharji/sqlite.lua",
          -- -- Only required if using match_algorithm fzf
          { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
        },
      },
      -- {
      --   "natecraddock/telescope-zf-native.nvim",
      --   config = function()
      --     require("telescope").load_extension("zf-native")
      --   end,
      -- },
      {
        "biozz/whop.nvim",
        config = function()
          require("whop").setup({})
          vim.keymap.set("n", "<leader>fw", ":Telescope whop<CR>", { noremap = true, desc = "whop.nvim (telescope)" })
        end,
      },
      {
        "debugloop/telescope-undo.nvim",
        keys = {
          {
            "<leader>U",
            function()
              return require("telescope").extensions.undo.undo()
            end,
            desc = "Undo History",
          },
        },
      },
    },
    opts = {
      defaults = {
        -- show me the filename first
        path_display = function(_, rawPath)
          local utils = require("telescope.utils")
          local tail = utils.path_tail(rawPath)
          local path = utils.transform_path({
            path_display = {
              absolute = 0,
            },
          }, rawPath)
          return string.format("%s | %s", tail, path)
        end,
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.55, results_width = 0.8 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        winblend = 0,
      },
      pickers = {
        buffers = {
          sort_mru = true,
        },
      },
      extensions = {
        smart_open = {
          match_algorithm = "fzf",
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("smart_open")
      telescope.load_extension("whop")
      telescope.load_extension("undo")
    end,
  },
}
