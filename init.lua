local autocmd = vim.api.nvim_create_autocmd

vim.cmd("set rnu!");

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
