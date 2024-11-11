local cmd = 'silent !git -C ' .. vim.fn.stdpath("config") .. ' pull --ff-only'
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd(cmd)
    end,
})
require("endrebjorgo")
