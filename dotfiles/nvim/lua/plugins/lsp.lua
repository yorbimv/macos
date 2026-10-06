return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("mason").setup()

    local servers = {
      "lua_ls", "ts_ls", "pyright", "phpactor",
      "html", "cssls", "emmet_language_server",
      "jsonls", "yamlls", "bashls", "sqlls",
    }

    require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_installation = true,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("*", { capabilities = capabilities })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    })

    vim.lsp.enable(servers)

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, desc = desc })
        end
        map("n", "gd", vim.lsp.buf.definition, "Ir a definición")
        map("n", "gD", vim.lsp.buf.declaration, "Ir a declaración")
        map("n", "gr", vim.lsp.buf.references, "Referencias")
        map("n", "gi", vim.lsp.buf.implementation, "Implementaciones")
        map("n", "K", vim.lsp.buf.hover, "Información")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Renombrar símbolo")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Acción de código")
        map("n", "[d", vim.diagnostic.goto_prev, "Diagnóstico anterior")
        map("n", "]d", vim.diagnostic.goto_next, "Diagnóstico siguiente")
        map("n", "<leader>d", vim.diagnostic.open_float, "Ver diagnóstico")
      end,
    })
  end,
}
