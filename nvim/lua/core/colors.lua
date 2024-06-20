vim.opt.termguicolors = true

function SetColor(color)
	-- color = color or "catppuccin"
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

SetColor()
