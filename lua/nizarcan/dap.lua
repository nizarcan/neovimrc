local dap = require('dap')

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Launch file",
    program = "${file}",
    pythonPath = function()
      -- Get the root directory of the current project
      local project_root = vim.fn.getcwd()

      -- Specify the relative path to the virtual environment's Python executable
      local venv_python_relative_path = 'venv/bin/python'

      -- Construct the absolute path to the Python executable within the virtual environment
      local venv_python_path = project_root .. '/' .. venv_python_relative_path

      -- Check if the virtual environment exists, use its Python executable; otherwise, use the system Python
      if vim.fn.isdirectory(venv_python_path) == 1 then
        return venv_python_path
      else
        -- Specify the default system Python path
        return '/opt/homebrew/bin/python3'
      end
    end,
  },
}
