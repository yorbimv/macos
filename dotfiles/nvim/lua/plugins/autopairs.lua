return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local autopairs = require("nvim-autopairs")
    autopairs.setup({})
    local cmp = require("cmp")
    cmp.event:on("confirm_done", require("nvim-autopairs.completion.cmp").on_confirm_done())
  end,
}
