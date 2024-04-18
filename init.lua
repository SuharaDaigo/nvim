require("keymaps")
require("options")
require("lazyvim")

-- vimtex settings
vim.g.vimtex_compiler_latexmk = {
    build_dir = 'build',
    continuous = true,
    callback = function(bufnum, status)
        if status == 0 then
            vim.api.nvim_command('redraw! | echo "Build success"')
        else
            vim.api.nvim_command('redraw! | echo "Build failed"')
        end
    end
}
