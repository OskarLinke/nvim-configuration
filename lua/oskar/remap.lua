-- Move highlighted lines around with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Leader yank and normal yank remaps
vim.keymap.set("n", "<leader>y", '"+y') -- Yank to system clipboard in normal mode
vim.keymap.set("v", "<leader>y", '"+y') -- Yank to system clipboard in visual mode
vim.keymap.set("n", "<leader>Y", '"+Y') -- Cap Y yanks to system clipboard
