return {
    -- Interactive checkboxes with orgmode
    {
        "nvim-orgmode/orgmode",
        config = function()
            require("orgmode").setup({
                org_todo_keywords = { "TODO", "|", "DONE" },
                org_todo_keyword_faces = {
                    TODO = ":foreground #FF8800 :weight bold",
                    DONE = ":foreground #50FA7B :weight bold",
                },
            })
        end,
    },

    -- Auto-format bullets and checkboxes
    {
        "dkarter/bullets.vim",
        ft = { "markdown", "text", "org" }, -- Filetypes where it should be active
        config = function()
            vim.g.bullets_set_mappings = 1
            vim.g.bullets_enable_in_empty_buffers = 1
            vim.g.bullets_indent_on_tab = 1
            vim.g.bullets_line_spacing = 1
        end,
    },
    
}
