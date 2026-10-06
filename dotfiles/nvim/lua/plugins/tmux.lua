return {
  {
    "benmills/vimux",
    cmd = { "VimuxRunCommand", "VimuxPromptCommand", "VimuxRunLastCommand", "VimuxCloseRunner" },
    keys = {
      { "<leader>vp", "<cmd>VimuxPromptCommand<cr>", desc = "Vimux: comando" },
      { "<leader>vl", "<cmd>VimuxRunLastCommand<cr>", desc = "Vimux: último comando" },
      { "<leader>vz", "<cmd>VimuxCloseRunner<cr>", desc = "Vimux: cerrar" },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
