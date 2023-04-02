local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua" },
  {
    command = "prettier",
    extra_args = { "--print-width", "88" },
    filetypes = { "typescript", "typescriptreact", "css", "scss" },
  },
  { command = "black", filetypes = { "python" } },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "flake8",
    extra_args = {
      "--max-line-length", "88" -- to match black's max-line-length
    },
    filetypes = { "python" }
  },
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },
  {
    command = "eslint_d", -- eslint_d is like eslint, but faster
    extra_args = {
      "--max-len", "88"
    },
    filetypes = { "typescript", "typescriptreact" },
  },
}
