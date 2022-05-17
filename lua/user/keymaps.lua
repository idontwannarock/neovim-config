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

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)


-- Visual Block Mode --

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal --

-- Better teminal nagivation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Telescope
--keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = 10 }))<cr>", opts)
--keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
