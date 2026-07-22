return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'mingw32-make' },
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                file_ignore_patterns = { 'node_modules' },
            },
        })
        telescope.load_extension('fzf')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
        vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Grep word under cursor' })
    end,
}
