return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    "BufReadPre " .. vim.fn.expand '~' .. "/Documents/Obsidian/*.md",
    "BufNewFile " ..  vim.fn.expand '~' .. "/Documents/Obsidian/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "~/Documents/Obsidian",
      },
    },
    disable_frontmatter = true,

    templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        substitutions = {},
    },
    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",
  },
}
