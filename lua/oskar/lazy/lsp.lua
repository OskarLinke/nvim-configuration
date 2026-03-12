return {
	{
		"neovim/nvim-lspconfig", 
		config = function() 
		
-- enable servers
vim.lsp.enable('lua_ls') -- Lua LS
vim.lsp.enable('pyright') -- Python LS
vim.lsp.enable('ruff') -- ruff linter
vim.lsp.enable('jdtls') -- Java
vim.lsp.enable('clangd') -- C/C++
vim.lsp.enable('omnisharp') -- C#
vim.lsp.enable('rust_analyzer') -- Rust3


		end, 
		
	}
}


