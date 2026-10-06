return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  config = function()
    local parsers = {
      "lua", "vim", "vimdoc", "php", "javascript", "typescript", "tsx",
      "python", "html", "css", "json", "yaml", "bash", "markdown",
      "markdown_inline", "sql", "regex",
    }
    require("nvim-treesitter").setup()
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
