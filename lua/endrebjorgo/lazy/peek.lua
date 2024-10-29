return {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup({
            app = "browser"
        })
        --vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        --vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        vim.keymap.set("n", "<leader>po", require("peek").open)
        vim.keymap.set("n", "<leader>pc", require("peek").open)
    end
}
