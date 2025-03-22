vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
--vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
--vim.keymap.set('n', '<leader>lz', ':Lazy<CR>')

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

--Luke Smith document compiler
--vim.keymap.set('n', '<leader>dc', ":w! | !compiler '%:p'<CR>")

--debugger
--vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
--vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
--vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
--vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
--vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
--vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
--vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
--vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
--vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
--vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
--    require('dap.ui.widgets').hover()
--end)
--vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
--    require('dap.ui.widgets').preview()
--end)
--vim.keymap.set('n', '<Leader>df', function()
--    local widgets = require('dap.ui.widgets')
--    widgets.centered_float(widgets.frames)
--end)
--vim.keymap.set('n', '<Leader>ds', function()
--    local widgets = require('dap.ui.widgets')
--    widgets.centered_float(widgets.scopes)
--end)
