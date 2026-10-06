return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Salto rápido (Flash)" },
    { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Selección por árbol" },
  },
}
