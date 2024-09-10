-- This allows to set the colors to lazy load properly
local spec = {
  -- {
  --   "catppuccin/nvim",
  --   name = "colors_catppuccin",
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha", -- mocha, macchiato, frappe, latte
  --     })
  --   end,
  -- },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   name = "colors_gruvbox",
  --   opts = {
  --     contrast = "soft", -- hard, soft
  --   },
  -- },
  -- {
  --   "sainnhe/gruvbox-material",
  --   name = "colors_gruvbox-material",
  --   opts = {},
  -- },
}

vim.keymap.set("n", "<leader>uu", function() --> Show all custom colors in telescope...
  for _, color in ipairs(spec) do --> Load all colors in spec....
    vim.cmd("Lazy load " .. color.name) --> vim colorschemes cannot be required...
  end

  vim.schedule(function() --> Needs to be scheduled:
    -- stylua: ignore
    local builtins = { "zellner", "torte", "slate", "shine", "ron", "quiet", "peachpuff",
    "pablo", "murphy", "lunaperche", "koehler", "industry", "evening", "elflord",
    "desert", "delek", "default", "darkblue", "blue" }

    local completion = vim.fn.getcompletion
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.fn.getcompletion = function() --> override
      return vim.tbl_filter(function(color)
        return not vim.tbl_contains(builtins, color) --
      end, completion("", "color"))
    end

    vim.cmd("Telescope colorscheme enable_preview=true")
    vim.fn.getcompletion = completion --> restore
  end)
end, { desc = "Telescope custom colors", silent = true })

return spec
