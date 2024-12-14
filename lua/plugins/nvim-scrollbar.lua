return {
    -- Scrollbar plugin
    "petertriho/nvim-scrollbar",
    opts = {}, -- default options (empty if no customization is needed)
    config = function()
        require("scrollbar").setup({
            show = true,
            handle = {
                color = "#888888", -- Customize scrollbar handle color
            },
            marks = {
                Search = { color = "#FFCC00" }, -- Highlight search matches
                Error = { color = "#FF5555" },  -- Highlight errors
                Warn = { color = "#FFFF55" },  -- Highlight warnings
                Info = { color = "#55FFFF" },  -- Highlight info
                Hint = { color = "#55FF55" },  -- Highlight hints
                Misc = { color = "#AAAAAA" },  -- Miscellaneous
            },
        })
    end,
}
