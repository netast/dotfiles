local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find File" },
		b = { "Find Buffer" },
		d = { "Find Diagnostics" },
		h = { "Find Help" },
		w = { "Find Text" },
	},
	e = { "File Manager" },
	o = { "Git status" },
	x = { "Close Buffer" },
	w = { "Save" },
	t = { name = "Terminal", f = { "Float terminal" }, h = { "Horizontal terminal" } },
	h = { "No highlight" },
	g = { name = "Git", b = "Branches", c = "Commits", s = "Status" },
	c = { name = "Comment", l = "Comment Line" },
	l = {
		name = "LSP",
		d = "Diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "Rename",
		a = "Action",
		s = "Symbol",
	},
	d = {
		name = "Debug",
		c = "Start/Continue",
		t = "Toggle breakpoint",
		n = "Step Over",
		i = "Step In",
		q = "Terminate",
	},
}, { prefix = "<leader>" })

wk.register({
	d = "Go to Definition",
	D = "Go to Declaration",
	r = "Show references",
	i = "Go to Implementation",
}, { prefix = "g" })
