local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local none_ls = require "null-ls"

  local formatting = none_ls.builtins.formatting

  none_ls.setup {
    sources = {
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with {
        extra_filetypes = { "toml" },
        -- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      -- null_ls.builtins.diagnostics.eslint,
      none_ls.builtins.completion.spell,
    },
  }
end

return M
