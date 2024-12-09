return {
        {
            "stevearc/conform.nvim",
            -- event = 'BufWritePre', -- uncomment for format on save
            opts = require "configs.conform",
        },
        {
            "neovim/nvim-lspconfig",
            config = function()
                require "configs.lspconfig"
            end,
        },
        {
            'vyfor/cord.nvim',
            run = './build || .\\build',
            config = function()
                require('cord').setup()
            end,
        },
        {
            "Pocco81/auto-save.nvim",
            config = function()
                require("auto-save").setup {}
            end,
        },
}
