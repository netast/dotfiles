local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})
lspconfig.prismals.setup({})
lspconfig.golangci_lint_ls.setup({})
lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } } } } })
lspconfig.pyright.setup({})
lspconfig.ruff_lsp.setup({})

local pid = vim.fn.getpid()
-- local omnisharp_bin="/Users/yp/.local/share/nvim/mason/bin/omnisharp"
local omnisharp_bin = vim.fn.expand("$HOME/.local/share/nvim/mason/bin/omnisharp")
lspconfig.omnisharp.setup({
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
})

-- Docker
lspconfig.docker_compose_language_service.setup({})

lspconfig.dockerls.setup({
	settings = {
		docker = {
			languageserver = { formatter = { ignoreMultilineInstructions = true } },
		},
	},
})

lspconfig.yamlls.setup({})

lspconfig.bashls.setup({})

vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		-- vim.keymap
		--     .set('n', '<Leader>sa', vim.lsp.buf.add_workspace_folder, opts)
		-- vim.keymap.set('n', '<Leader>sr', vim.lsp.buf.remove_workspace_folder,
		--                opts)
		-- vim.keymap.set('n', '<Leader>sl', function()
		--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		-- end, opts)
		-- vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, opts)
		-- vim.keymap.set({'n', 'v'}, '<Leader>la', vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<Leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
		vim.keymap.set("n", "ca", vim.lsp.buf.code_action, opts)
		-- vim.keymap.set('x', 'ca', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
	end,
})
