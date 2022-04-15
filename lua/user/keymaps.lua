local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "



-- Normal Mode --

-- Toggle Lexplore
keymap("n", "<leader>e", ":Lex<CR>", opts)

-- Moving
keymap("n", "zh", "^", opts)
keymap("n", "zl", "$", opts)

-- Text editing
keymap("n", "z;", "A;<Esc>", opts)



-- Insert Mode --

-- Moving
keymap("i", "zh", "<Esc>I", opts)
keymap("i", "zl", "<End>", opts)

-- Text editing
keymap("i", "z;", "<Esc>A;", opts)



-- Visual Mode --

-- Stay in visual mode when indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)



-- Visual Block Mode --

