require("flutter-tools").setup({
	debugger = { enabled = true, run_via_dap = true, exception_breakpoints = {} },
	dev_log = { enabled = true, notify_errors = true, open_cmd = "tabedit" },
	dev_tools = { autostart = true, auto_open_browser = true },
	widget_guides = { enabled = true },
	lsp = { color = { enabled = true, background = true, foreground = true } },
	decoratiions = { statusline = { app_version = true } },
})
