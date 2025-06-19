return {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
        default = {
            dir_path = "",
            relative_to_current_file = true,
        },
    },
    keys = {
        {"<leader>pi", "<cmd>PasteImage<cr>", desc = "Paste Image from clipboard"},
    }
}