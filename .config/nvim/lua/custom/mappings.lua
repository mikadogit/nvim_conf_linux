local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<F4>"] = {
      "<cmd> :lua require('dap').run_last() <CR>",
      "Debugger : run last",
    },
    ["<F5>"] = {
      "<cmd> :lua require('dap').step_into()<CR>",
      "Debugger : step into",
    },
    ["<F6>"] = {
      "<cmd> :lua require('dap').step_over()<CR>",
      "Debugger : step over",
    },
    ["<F7>"] = {
      "<cmd> :lua require('dap').step_out()<CR>",
      "Debugger : step out",
    },
    ["<F8>"] = {
      "<cmd> :lua require('dap').continue()<CR>",
      "Debugger : continue or start",
    },
    ["<leader>bm"] = {
      "<cmd> :lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
      "Debugger : break message",
    },
    ["<leader>bc"] = {
      "<cmd> :lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      "Debugger : break condition",
    },
    ["<leader>dq"] = {
        "<cmd> :lua require('dapui').close()<CR>",
        "Debugger : close IHM"
    },
    ["<leader>dc"] = {
        "<cmd> :lua require('dap').clear_breakpoints()<CR>",
        "Debugger : clear all breakpoints"
    },
    ["<leader>bb"] = {
      "<cmd> :lua require('dap').toggle_breakpoint()<CR>",
      "Debugger : toggle breakpoint",
    },
    ["<leader>cb"] = {
      "<cmd> :lua require('dap').clear_breakpoints()<CR>",
      "Debugger : clear all breakpoints",
    },
    ["<leader>pf"] = {
      "<cmd> :lua require('dap.ui.widgets').centered_float(widgets.frames)<CR>",
      "Debugger : print frames",
    },
    ["<leader>pe"] = {
      "<cmd> :lua require('dap.ui.widgets').centered_float(widgets.expression)<CR>",
      "Debugger : print expression",
    },
    ["<leader>ps"] = {
      "<cmd> :lua require('dap.ui.widgets').centered_float(widgets.scopes)<CR>",
      "Debugger : print scopes",
    },
    ["<leader>pt"] = {
      "<cmd> :lua require('dap.ui.widgets').centered_float(widgets.threads)<CR>",
      "Debugger : print threads",
    },
    ["<F9>"] = {
      "<cmd> AerialToggle!<CR>",
      "List functions,vars,...",
    },
    ["<leader>pp"] = {
      "<cmd> echo expand('%:p')<CR>",
      "Print current file path",
    },
    ["<leader>ll"] = {
      "<cmd> TroubleToggle<CR>",
      "List Warnings Errors ...",
    },
    ["<leader>ml"] = {
      "<cmd>:!make 2>&1 | tee make_logs.txt <CR>",
      "Make the .makefile saving errors and warnings into make_logs.txt",
    },
    ["<leader>mc"] = {
      "<cmd>:! make clean & rm make_logs.txt <CR>",
      "Make clear",
    },
    ["<A-Right>"] = {
      "<cmd>:lua require('bufjump').forward()<CR>",
      "Jump forward",
    },
    ["<A-Left>"] = {
      "<cmd>:lua require('bufjump').backward()<CR>",
      "Jump forward",
    },
    -- ["<leader>dr"] = {
   --   "<cmd> DapContinue <CR>",
   --   "Start or continue the debugger",
   -- }
  }
}

return M
