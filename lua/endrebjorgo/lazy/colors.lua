return {
    'aktersnurra/no-clown-fiesta.nvim',
    name = "no-clown-fiesta",
    config = function()
        vim.cmd('colorscheme no-clown-fiesta')
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#111111" })
    end
}
