return {
    "aktersnurra/no-clown-fiesta.nvim",
    name = "no-clown-fiesta",
    config = function()
        require("no-clown-fiesta").setup({
            transparent = true,
        })
        vim.cmd('colorscheme no-clown-fiesta')
    end
}
