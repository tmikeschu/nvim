-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use git root as project root (instead of nearest package.json via LSP)
vim.g.root_spec = { { ".git" }, "lsp", "cwd" }

-- Don't sync vim registers with system clipboard
vim.opt.clipboard = ""
