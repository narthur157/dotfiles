vim.g.mapleader = " "

-- Modern Diagnostic (Linting) Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous error" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next error" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line error details" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open error list (Old loclist)" })

vim.keymap.set("n", "<leader>pv", function()
  vim.cmd("edit " .. vim.fn.stdpath("config"))
end, { silent = true, desc = "Open Neovim config directory" })

-- =============================================================================
-- 1. GLOBAL VARIABLES & LEADER KEY
-- =============================================================================
vim.g.mapleader = "," -- Set your leader key to comma

-- =============================================================================
-- 2. VIM OPTIONS (vim.opt)
-- =============================================================================
-- Security & Interface
vim.opt.modelines = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true

-- Formatting & Whitespace
vim.opt.wrap = true
vim.opt.textwidth = 79
vim.opt.formatoptions = "tcqrn1"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Navigation & Pairs
vim.opt.scrolloff = 3
vim.opt.matchpairs:append("<:>")

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Invisible Characters
vim.opt.listchars = { tab = "▸ ", eol = "¬" }
-- vim.opt.list = true -- Uncomment to enable by default

-- UI Appearance
vim.opt.background = "dark"

-- =============================================================================
-- 3. KEYMAPS (vim.keymap.set)
-- =============================================================================
-- Move up/down by visual/editor lines
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

-- Search overrides (Forces very-magic searching mode)
vim.keymap.set("n", "/", "/\\v")
vim.keymap.set("v", "/", "/\\v")

-- Clear search highlighting
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", { silent = true })

-- Textmate formatting holdouts
vim.keymap.set("n", "<leader>q", "gqip")

-- Toggle visible tabs and newlines
vim.keymap.set("n", "<leader>l", ":set list!<CR>", { silent = true })

require("config.lazy")
