-- View add_file projects marks.
vim.keymap.set('n', '<leader>h', ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- Marks the file to revisit later.
vim.keymap.set('n', '<leader>ha', ":lua require('harpoon.mark').add_file()<CR>")

vim.keymap.set('n', '<leader>hq', ":lua require('harpoon.ui').nav_prev()<CR>")

vim.keymap.set('n', '<leader>he', ":lua require('harpoon.ui').nav_next()<CR>")
