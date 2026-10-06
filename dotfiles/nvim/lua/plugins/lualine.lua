return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        theme = "gruvbox",
        section_separators = "",
        component_separators = "",
        globalstatus = true,
      },
      sections = {
        lualine_x = { "diagnostics", "encoding", "filetype" },
      },
    })
  end,
}
