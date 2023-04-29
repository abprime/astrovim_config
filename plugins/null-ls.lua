return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local utils = require "null-ls.utils"

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      formatting.black.with {
        prefer_local = ".venv/bin/",
      },
      diagnostics.flake8.with {
        prefer_local = ".venv/bin/",
      },
      diagnostics.mypy.with {
        prefer_local = ".venv/bin/",
      },
    }
    return config -- return final config table
  end,
}
