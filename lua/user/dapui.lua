local M = {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = {
    {
      "mfussenegger/nvim-dap",
      event = "VeryLazy",
    },
    {
      "nvim-neotest/nvim-nio",
      event = "VeryLazy"
    }
  },
}

function M.config()
  require("dapui").setup()
  vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
end

return M
