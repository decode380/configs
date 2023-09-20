local M = {}

M.general_custom = {
  i = {
    ["jk"] = {"<Esc>", "Escape insert mode"},
  },
  n = {
    ["o"] = {"o<Esc>", "Escape insert new line down"},
    ["O"] = {"O<Esc>", "Escape insert new line up"},
    ["<leader>;"] = {"A;<esc>", "insert ; in end of line"},
    ["<leader>'"] = {"<cmd> s/\"/'/g <CR>", "change \" for ' in line"},
    ["<M-Left>"] = {"zh", "Horizontal scroll left"},
    ["<M-Right>"] = {"zl", "Horizontal scroll right"},
  },
  v = {
    -- ["<leader>'"] = {"<cmd> '<,'>s/\"/'/g <CR>", "change \" for ' in line"},
  }
}

M.window = {
  n = {
    ["o"] = {"o<Esc>", "Escape insert new line down"},
    ["O"] = {"O<Esc>", "Escape insert new line up"},
    ["<C-Left>"] = {"<cmd> vertical resize -2 <CR>", "Drecrease width"},
    ["<C-Right>"] = {"<cmd> vertical resize +2h <CR>", "Increase width"},
    ["<C-Up>"] = {"<cmd> resize +2 <CR>", "Increase height"},
    ["<C-Down>"] = {"<cmd> resize -2 <CR>", "Decrease height"},
  },
}

M.debug = {
  n = {
    ["<F5>"] = {"<cmd>lua require'dap'.continue()<CR>", "Launch or continue"},
    ["<F10>"] = {"<cmd>lua require'dap'.step_over()<CR>", "Step over"},
    ["<F11>"] = {"<cmd>lua require'dap'.step_into()<CR>", "Step into"},
    ["<F12>"] = {"<cmd>lua require'dap'.step_out()<CR>", "Step out"},
    ["<leader>db"] = {"<cmd>lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint"},
    ["<leader>dt"] = {"<cmd>lua require'dapui'.toggle()<CR>", "Toggle dap"},
    -- ["<leader>dr"] = {"<cmd>lua require'dap'.toggle()<CR>", "Toggle repl"},
    -- ["<leader>B"] = {"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "Breakpoint Condition"},
    -- ["<leader>lp"] = {"<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", "Log point message"},
    ["<leader>dr"] = {"<cmd>lua require'dap'.repl.toggle()<CR>", "Toggle REPL"},
    ["<leader>dl"] = {"<cmd>lua require'dap'.run_last()<CR>", "Run Last"},
  }
}

return M
