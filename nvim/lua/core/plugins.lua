
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
         "nvim-neo-tree/neo-tree.nvim",
         branch = "v3.x",
         dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
	    "s1n7ax/nvim-window-picker"
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
          }
        },
	{ "ellisonleao/gruvbox.nvim",priority = 1000, config = true, opts = ...},
	{ "catppuccin/nvim", name = "catppuccin" , priority = 1000 },
	{ "nvim-treesitter/nvim-treesitter"},
	{ "neovim/nvim-lspconfig" },
	{
         'akinsho/flutter-tools.nvim',
         lazy = false,
         dependencies = {
          'nvim-lua/plenary.nvim',
          'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim",}
})

