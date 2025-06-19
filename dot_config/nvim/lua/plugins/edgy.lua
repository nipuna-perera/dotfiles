return {
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.animate = { enabled = false }
      opts.keys["<C-S-Right>"] = function(win)
        win:resize("width", -5)
      end
      opts.keys["<C-S-Left>"] = function(win)
        win:resize("width", 5)
      end
      opts.keys["<C-S-Up>"] = function(win)
        win:resize("height", 5)
      end
      opts.keys["<C-S-Down>"] = function(win)
        win:resize("height", -5)
      end
    end,
  },
}
