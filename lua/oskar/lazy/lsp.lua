return {
	{
		"neovim/nvim-lspconfig",
		config = function()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})

vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			runtime = { version = 'LuaJIT' },
			workspace = {
				checkThirdParty = false,
				library = { vim.env.VIMRUNTIME },
			},
		},
	},
})

-- enable servers
vim.lsp.enable('lua_ls') -- Lua LS
vim.lsp.enable('pyright') -- Python LS
vim.lsp.enable('ruff') -- ruff linter
vim.lsp.enable('jdtls') -- Java
vim.lsp.enable('clangd') -- C/C++
vim.lsp.enable('rust_analyzer') -- Rust3
vim.lsp.enable('ts_ls') -- Typescript


		end, 
		
	}
}


