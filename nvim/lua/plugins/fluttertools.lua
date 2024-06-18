require("flutter-tools").setup {
    debugger = {
        enabled =true,
        run_via_dap = true,
        exception_breakpoints = {},
    },
    dev_log = {
        enabled = false,
        notify_errors = false,
    }
}

