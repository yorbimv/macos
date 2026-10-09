return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorador" },
    { "<leader>nt", "<cmd>Neotree reveal<cr>", desc = "Explorador (archivo actual)" },
  },
  opts = {
    close_if_last_window = false,
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      filtered_items = { hide_dotfiles = false, hide_gitignored = true },
      use_libuv_file_watcher = true,
    },
    window = {
      width = 35,
      mappings = {
        ["<space>"] = "none",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<bs>"] = "navigate_up",
        ["X"] = "clear_selection",
        ["P"] = { "toggle_preview", config = { use_float = false } },
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 and vim.fn.winnr("$") == 1 then
          vim.cmd("Neotree show")
        end
      end,
    })
  end,
}
