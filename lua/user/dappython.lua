local M = {
  "mfussenegger/nvim-dap-python",
  commit = "db72bf6ab9f75fe841e8e11e772ee7fef6f484f1",
  event = "VeryLazy",
}

function M.config()
  require("dap-python").setup("python3")
end

return M
