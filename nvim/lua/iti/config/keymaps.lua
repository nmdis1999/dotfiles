local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { noremap = true, silent = true})

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimise (for some reason doesn't work rn)

