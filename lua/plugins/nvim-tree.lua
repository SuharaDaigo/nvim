return {
"nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup {
      update_focused_file = {
         enable = true,
         update_cwd = true,
      },
      view = {
         width = '25%',
         side = "right",
         signcolumn = 'no',
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = 'name',
        icons = {
          glyphs = {
            git = {
              unstaged = '!', renamed = '»',
              untracked = '?', deleted = '✘',
              staged = '✓', unmerged = '', ignored = '◌',
            },
          },
        },
      },
    }
  end,
  keys = {
   {mode = "n", "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeをトグルする"},
   {mode = "n", "<leader>o", "<cmd>NvimTreeFocus<CR>", desc = "NvimTreeにフォーカスする"},
  },
}
