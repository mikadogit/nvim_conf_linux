local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<F4>"] = {
      "Debugger : run last",
    },
    ["<F5>"] = {
      "Debugger : step into",
    },
    ["<F6>"] = {
      "Debugger : step over",
    },
    ["<F7>"] = {
      "Debugger : step out",
    },
    ["<F8>"] = {
      "Debugger : continue or start",
    },
    ["<leader>bm"] = {
      "Debugger : break message",
    },
    ["<leader>bc"] = {
      "Debugger : break condition",
    },
    ["<leader>bb"] = {
      "Debugger : toggle breakpoint",
    },
    ["<leader>cb"] = {
      "Debugger : clear all breakpoints",
    },
    ["<leader>pf"] = {
      "Debugger : print frames",
    },
    ["<leader>pe"] = {
      "Debugger : print expression",
    },
    ["<leader>ps"] = {
      "Debugger : print scopes",
    },
    ["<leader>pt"] = {
      "Debugger : print threads",
    },
    ["<F9>"] = {
      "<cmd> AerialToggle!<CR>",
      "List functions,vars,...",
    },
    ["<leader>pp"] = {
      "<cmd> echo expand('%:p')<CR>",
      "Print current file path",
    }

    -- ["<leader>dr"] = {
   --   "<cmd> DapContinue <CR>",
   --   "Start or continue the debugger",
   -- }
  }
}

return M
