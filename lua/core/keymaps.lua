vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
--vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
--vim.keymap.set('n', '<leader>lz', ':Lazy<CR>')

-- Open the selection
vim.keymap.set('v', '<leader>o', '"ly:!open <C-r>l<CR><CR>')

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Golang if err != nil
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set('n', 'K', "mzJ`z")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")

vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")
vim.keymap.set('v', '<leader>y', "\"+y")

vim.keymap.set('n', '<leader>p', "\"+p")
vim.keymap.set('n', '<leader>P', "\"+P")
vim.keymap.set('v', '<leader>p', "\"+p")

vim.keymap.set('n', '<leader>x', "\"+x")
vim.keymap.set('v', '<leader>x', "\"+x")
