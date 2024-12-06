vim.g.slime_target = "tmux"

-- disables default bindings
vim.g.slime_nomappings = 1
vim.g.slime_cell_delimiter = "^\\s*##"

-- send visual selection
vim.keymap.set("v", "<leader>s", '<Plug>SlimeRegionSend')
-- vim.keymap.set("n", "<leader>s", '<Plug>SlimeMotionSend')
vim.keymap.set("n", "<leader>as", '<Plug>SlimeLineSend')

-- SLime cells
vim.keymap.set("n", '<leader>s', '<Plug>SlimeCellsSendAndGoToNext')
vim.keymap.set("n", '<leader>j', '<Plug>SlimeCellsNext')
vim.keymap.set("n", '<leader>k', '<Plug>SlimeCellsPrev')
