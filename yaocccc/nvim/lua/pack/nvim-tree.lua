local G = require('G')
local M = {}

function M.config()
    G.g.nvim_tree_firsttime = 1
    G.map({ { 'n', 'T', 'g:nvim_tree_firsttime != 1 ? ":NvimTreeToggle<cr>" : ":let g:nvim_tree_firsttime = 0<cr>:NvimTreeToggle $PWD<cr>"', {silent = true, noremap = true, expr = true}} })
    G.cmd("hi! NvimTreeCursorLine cterm=NONE ctermbg=237")
    G.cmd("hi! link NvimTreeFolderIcon NvimTreeFolderName")
end

function M.setup()
    local nvim_tree = require("nvim-tree")
    nvim_tree.setup({
        sort_by = "case_sensitive",
        view = {
            adaptive_size = true,
            mappings = {
                list = {
                    { key = "P", action = "cd" },
                    { key = "<BS>", action = "dir_up" },
                    { key = "<Esc>", action = "close" },
                    { key = "<Tab>", action = "expand" },
                    { key = "<Right>", action = "expand" },
                    { key = "<Left>", action = "close_node" },
                    { key = ">", action = "next_git_item" },
                    { key = "<", action = "prev_git_item" },
                    { key = "?", action = "toggle_help" },
                    { key = "A", action = "create" },
                },
            },
            float = { enable = true, open_win_config = { border = "rounded", width = 30, height = 20, row = 0, col = 999 } }
        },
        update_focused_file = {
            enable = true,
            update_root = false,
            ignore_list = {},
        },
        renderer = {
            group_empty = true,
            indent_markers = { enable = true },
            icons = {
                git_placement = "after", webdev_colors = true,
                glyphs = { git = { unstaged = "~", staged = "✓", unmerged = "", renamed = "+", untracked = "?", deleted = "", ignored = " " } }
            }
        },
        filters = { dotfiles = true },
        diagnostics = {
            enable = true, show_on_dirs = true, debounce_delay = 50,
            icons = { hint = "", info = "", warning = "", error = "" }
        },
    })
end

return M
