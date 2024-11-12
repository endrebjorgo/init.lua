-- Rust lifetime specifier
vim.keymap.set("n", "<leader>lt", "i<'a><Esc>")
vim.keymap.set("n", "<leader>lr", "i&'a<Esc>")

-- Obsidian
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")

