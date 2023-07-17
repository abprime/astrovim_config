return {
  "mfussenegger/nvim-dap-python",
  -- overrides `require("nvim-dap-python").setup(...)`
  opts = {
    test_runner = "pytest",
    test_runner_args = { "--color=yes" },
    pythonPath = function()
      -- Use the currently active virtualenv path
      -- also check if .venv exists
      if vim.fn.isdirectory ".venv" == 1 then return ".venv/bin/python" end
      return vim.fn.system "poetry env info -p"
    end,
  },
}
