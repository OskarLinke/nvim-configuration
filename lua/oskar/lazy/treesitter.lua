return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    -- Enable treesitter highlight and indent for all buffers
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })

    -- Install parsers on first run
    require("nvim-treesitter.install").install({
      "c", "lua", "javascript", "html", "python", "typescript"
    })
  end
}
