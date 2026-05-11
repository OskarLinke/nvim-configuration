-- Toggle diagnostic virtual text
vim.keymap.set("n", "<leader>dt", function()
	local current = vim.diagnostic.config().virtual_text
	vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle diagnostic virtual text" })

-- Move highlighted lines around with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Leader yank and normal yank remaps
vim.keymap.set("n", "<leader>y", '"+y') -- Yank to system clipboard in normal mode
vim.keymap.set("v", "<leader>y", '"+y') -- Yank to system clipboard in visual mode
vim.keymap.set("n", "<leader>Y", '"+y$') -- Cap Y yanks to system clipboard in normal mode
vim.keymap.set("v", "<leader>Y", '"+y$') -- Cap Y yanks to system clipboard in visual mode 

-- Go to function definitions 
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
