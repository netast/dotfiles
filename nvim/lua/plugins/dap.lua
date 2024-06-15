local dap = require('dap')

    -- vim.keymap.set('n', '<Leader>dc', dap.continue, {})
    -- vim.keymap.set('n', '<Leader>dn', dap.step_over, {})
    -- vim.keymap.set('n', '<Leader>di', dap.step_into, {})
    -- vim.keymap.set('n', '<Leader>do', dap.step_out, {})
    -- vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, {})
    --
    -- vim.keymap.set('n', '<Leader>B', dap.set_breakpoint() end)
    -- vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    -- vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
    -- vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
    -- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    --   require('dap.ui.widgets').hover()
    -- end)
    -- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    --   require('dap.ui.widgets').preview()
    -- end)
    -- vim.keymap.set('n', '<Leader>df', function()
    --   local widgets = require('dap.ui.widgets')
    --   widgets.centered_float(widgets.frames)
    -- end)
    -- vim.keymap.set('n', '<Leader>ds', function()
    --   local widgets = require('dap.ui.widgets')
    --   widgets.centered_float(widgets.scopes)
    -- end)
    --

dap.adapters.coreclr = {
  type = 'executable',
  command = vim.fn.expand("$HOME/.local/share/nvim/mason/bin/netcoredbg"),
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
