local function get_cur_file_extension(bufnr)
  bufnr = bufnr or 0
  return "." .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":e")
end

return {
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters_by_ft = {
  --       go = { "gofumpt", "gci" },
  --     },
  --   },
  -- },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        go = { "golangcilint" },
        markdown = { "vale" },
      },
      linters = {
        vale = {
          args = {
            "--config=/Users/a515466/.config/vale/.vale.ini",
            "--no-exit",
            "--output",
            "JSON",
            "--ext",
            get_cur_file_extension,
          },
        },
      },
    },
  },
}
