local function get_cur_file_extension(bufnr)
  bufnr = bufnr or 0
  return "." .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":e")
end

return {
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
            "--config=/Users/mangoair/.config/vale/.vale.ini",
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
