local function should_pull()
    local timestamp_file = vim.fn.stdpath("data") .. "/last_pull_timestamp"
    local current_date = os.date("%Y-%m-%d")

    if vim.fn.filereadable(timestamp_file) == 0 then
        vim.fn.writefile({ "1970-01-01" }, timestamp_file)
    end

    if vim.fn.readfile(timestamp_file)[1] ~= current_date then
        vim.fn.writefile({ current_date }, timestamp_file)
        return true
    end

    return false
end

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if should_pull() then
            local config_path = vim.fn.stdpath("config")
            vim.cmd('silent !git -C ' .. config_path .. ' pull --ff-only')
            print("Updated Neovim configuration from GitHub!")
        end
    end,
})

