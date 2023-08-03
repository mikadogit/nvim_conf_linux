local dap = require("dap")

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = 'GDB',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerPath = vim.fn.exepath('gdb'),
    stopAtEntry = true,
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}
dap.configurations.c = dap.configurations.cpp
