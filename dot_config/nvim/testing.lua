-- local bufnr = 778
-- vim.api.nvim_buf_set_text(bufnr, 0, 0, -1, -1, vim.inspect(require("lint").linters_by_ft))
-- vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { vim.inspect(require("lint").linters_by_ft) })

vim.print(require("lint").linters_by_ft)
