return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorador" },
    { "<leader>nt", "<cmd>Neotree reveal<cr>", desc = "Explorador (archivo actual)" },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      filtered_items = { hide_dotfiles = false, hide_gitignored = true },
    },
    window = {
      mappings = {
        ["<space>"] = "none",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<bs>"] = "navigate_up",
      },
    },
  },
}
