return {
  {  "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "tsserver", "rubocop", "eslint", "solargraph" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup ({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup ({
        capabilities = capabilities
      })
      lspconfig.rubocop.setup ({
        capabilities = capabilities
      })

      lspconfig.eslint.setup ({
        capabilities = capabilities
      })

      lspconfig.solargraph.setup ({
        capabilities = capabilities
      })

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
    end
  },
}
