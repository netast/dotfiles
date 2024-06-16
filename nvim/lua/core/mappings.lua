vim.g.mapleader = " "

-- Neo Tree
vim.keymap.set('n','<leader>e',':Neotree float reveal<CR>')
vim.keymap.set('n','<leader>o',':Neotree float git_status<CR>')

vim.keymap.set('n','K',vim.lsp.buf.hover)
vim.keymap.set('n','gd',vim.lsp.buf.definition)
vim.keymap.set('n','ca',vim.lsp.buf.code_action)
vim.keymap.set('n','K',vim.lsp.buf.hover)

-- Buffline
vim.keymap.set('n','<Tab>',':BufferLineCycleNext<CR>')
vim.keymap.set('n','<s-Tab>',':BufferLineCyclePrev<CR>')

vim.keymap.set('n','<leader>x',':BufferLinePickClose<CR>')
vim.keymap.set('n','<leader>X',':BufferLineCloseRight<CR>')
vim.keymap.set('n','<leader>s',':BufferLineSortByTabs<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')
vim.keymap.set('v', '<leader>/', ":CommentToggle<CR>")

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Debugger
vim.keymap.set('n', '<Leader>dt', ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<Leader>dc', ':DapContinue<CR>')
vim.keymap.set('n', '<Leader>dn', ':DapStepOver<CR>')
vim.keymap.set('n', '<Leader>di', ':DapStepInto<CR>')
vim.keymap.set('n', '<Leader>dq', ':DapTerminate<CR>')
