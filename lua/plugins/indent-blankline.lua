return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function ()
        require("ibl").setup {
            indent = {},
            whitespace = { highlight = { "Whitespace", "NonText", "Function", "Label" } },
            scope = {enabled = true,
               show_start = true,
               show_end = false,
               injected_languages = false,
               highlight = { "Function", "Label" },
               priority = 500
           }
        }
    end
}

