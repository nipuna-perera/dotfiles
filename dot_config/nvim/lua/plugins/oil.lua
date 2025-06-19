local detail = false

return {
  "stevearc/oil.nvim",
  --@module 'oil'
  --@type oil.SetupOpts
  opts = {
    keymaps = {
      ["gd"] = {
        desc = "Toggle file detail view",
        callback = function()
          detail = not detail
          if detail then
            require("oil").set_columns({
              "icon",
              "permissions",
              "size",
              "mtime",
            })
          else
            require("oil").set_columns({
              "icon",
            })
          end
        end,
      },
    },
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    {
      "<leader>fm",
      "<cmd>Oil<cr>",
      desc = "Open oil.nvim",
    },
  },
  setup = function(_, opts)
    require("oil").setup(opts)
  end,
}
