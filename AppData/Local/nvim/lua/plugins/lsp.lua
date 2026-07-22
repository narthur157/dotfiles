return {
  -- 1. Ensure Mason installs the correct tools automatically
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      -- Installs the formal Language Servers (LSP) for completions/diagnostics
      ensure_installed = { "ts_ls", "html" }, 
    },
  }
}

