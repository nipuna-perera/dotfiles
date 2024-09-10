return {
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.animate = { enabled = false }
      opts.keys["<M-Right>"] = function(win)
        win:resize("width", -5)
      end
      opts.keys["<M-Left>"] = function(win)
        win:resize("width", 5)
      end
      opts.keys["<M-Up>"] = function(win)
        win:resize("height", 5)
      end
      opts.keys["<M-Down>"] = function(win)
        win:resize("height", -5)
      end
    end,
  },
}
