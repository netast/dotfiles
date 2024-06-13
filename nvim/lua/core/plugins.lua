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
    { "ellisonleao/gruvbox.nvim",       priority = 1000,     config = true,  opts = ... },
    { "catppuccin/nvim",                name = "catppuccin", priority = 1000 },
    { "nvim-treesitter/nvim-treesitter" },
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
    { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' }, { 'hrsh7th/nvim-cmp' }, { 'lewis6991:wq/gitsigns.nvim' },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim", },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'jose-elias-alvarez/null-ls.nvim' },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "lewis6991/gitsigns.nvim"
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        "windwp/nvim-ts-autotag"
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        "terrortylor/nvim-comment"
    },
    { 'akinsho/toggleterm.nvim',        version = "*", config = true },


})
