-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--

-- Enable spell checking
vim.opt.spell = true

-- Set spell languages (English, Ukrainian, Russian)
vim.opt.spelllang = { "en", "uk", "ru" }

-- Use both tree-sitter and spell for better detection
vim.opt.spelloptions = "camel"

-- Disable smooth scrolling
vim.opt.smoothscroll = false

-- Set scroll jump to move multiple lines at once for faster scrolling
vim.opt.scrolljump = 5

-- Optional: Set scroll offset (lines to keep visible above/below cursor)
vim.opt.scrolloff = 8

-- vim.opt.conceallevel = 2
