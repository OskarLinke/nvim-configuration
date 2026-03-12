return {
    "mason-org/mason.nvim",
    opts = {
		ensure_installed = {
			'lua_ls',		-- Lua LS
			'pyright', 		-- Python LS
			'ruff',			-- ruff linter
			'omnisharp', 		-- C# LS, REQUIRES .NET 6.0 SDK TO BUILD
			'jdtls',		-- Java LS
			'clangd',		-- C/C++ LS
			'rust_analyzer',	-- Rust LS
		},
	}
}
