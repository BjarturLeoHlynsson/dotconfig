return {
    "jim-at-jibba/micropython.nvim",
    dependencies = { "akinsho/toggleterm.nvim", "stevearc/dressing.nvim" },
--    cmd = { "MicropythonRun", "MicropythonConnect" }, -- Load only when these commands are used
    config = function()
        vim.keymap.set("n", "<leader>imr", function()
            require("micropython_nvim").run()
        end, { desc = "Run MicroPython script" })
    end,
}
