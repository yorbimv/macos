return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Buscar archivos" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Buscar texto" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recientes" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Ayuda" },
    { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Comandos" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = { "%.git/", "node_modules", "vendor" },
      },
    })
    pcall(telescope.load_extension, "fzf")
  end,
}
