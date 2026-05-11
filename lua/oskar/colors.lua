local default = "tokyonight-moon"
local rose =  "#f7768e"
local violet ="#7aa2f7"

-- Set colorscheme
vim.cmd.colorscheme("tokyonight-night")
-- Customize line numbers
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = violet })
vim.api.nvim_set_hl(0, "LineNr", { fg = rose })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = violet })
vim.api.nvim_set_hl(0, "Comment", { fg = "#ff9e64" })

