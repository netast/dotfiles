local dap = require('dap')

-- Dotnet
dap.adapters.coreclr = {
    type = 'executable',
    command = vim.fn.expand("$HOME/.local/share/nvim/mason/bin/netcoredbg"),
    args = { '--interpreter=vscode' }
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

-- Dart / Flutter
dap.adapters.dart = {
    type = 'executable',
    command = 'dart',
    args = { 'debug_adapter' }
}
dap.adapters.flutter = {
    type = 'executable',
    command = 'flutter',
    args = { 'debug_adapter' }
}
dap.configurations.dart = {
    {
        type = "dart",
        request = "launch",
        name = "Launch dart",
        dartSdkPath = "dart",
        flutterSdkPath = "flutter",
        program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
        cwd = "${workspaceFolder}",
    },
    {
        type = "flutter",
        request = "launch",
        name = "Launch flutter",
        dartSdkPath = "dart",
        flutterSdkPath = "flutter",
        program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
        cwd = "${workspaceFolder}",
    }
}
