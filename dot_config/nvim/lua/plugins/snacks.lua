local logo = [[
██╗  ██╗███████╗██╗     ██╗      ██████╗        ███╗   ██╗██╗██████╗ ██╗   ██╗███╗   ██╗ █████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ████╗  ██║██║██╔══██╗██║   ██║████╗  ██║██╔══██╗
███████║█████╗  ██║     ██║     ██║   ██║       ██╔██╗ ██║██║██████╔╝██║   ██║██╔██╗ ██║███████║
██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ██║╚██╗██║██║██╔═══╝ ██║   ██║██║╚██╗██║██╔══██║
██║  ██║███████╗███████╗███████╗╚██████╔╝▄█╗    ██║ ╚████║██║██║     ╚██████╔╝██║ ╚████║██║  ██║
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝    ╚═╝  ╚═══╝╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝
]]

return {
  "folke/snacks.nvim",
  --@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        header = logo,
      },
      sections = {
        {
          section = "header",
        },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
    picker = {
      layout = {
        preset = "ivy",
        layout = { position = "bottom" },
      },
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right",
              size = 40,
            },
          },
        },
      },
    },
    image = {
      doc = {
        enabled = true,
        inline = true,
      },
    },
  },
  keys = {
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find files",
    },
  },
}
