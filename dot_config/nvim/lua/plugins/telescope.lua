-- change some telescope options and a keymap to browse plugin files
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
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
    -- dependencies = {
    --   "nvim-telescope/telescope-fzf-native.nvim",
    --   build = "make",
    --   config = function()
    --     require("telescope").load_extension("fzf")
    --   end,
    -- },

    -- fuzzy finder prioritizing filenames and smartcase search
    dependencies = {
      "natecraddock/telescope-zf-native.nvim",
      config = function()
        require("telescope").load_extension("zf-native")
      end,
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
    },
  },
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("undo")
    end,

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
}
