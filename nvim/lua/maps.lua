local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sw', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', '<Tab>', '<C-w>w')

keymap.set('', '<A-s>', ':w<Return>')
keymap.set('i', 'jj', '<Esc>')
keymap.set('i', 'qq', '<Esc>')
keymap.set('n', '<space>', ':')
keymap.set('n', '<space>', ':')
keymap.set('n', 'q', ':q<Return>')
keymap.set('', '<F1>', '<Esc>')

keymap.set('', '<F3>', 'LazyGit<Return>')
keymap.set('n', '<A-g>', ':BrowserSearch ')
keymap.set('n', 't', ':CocCommand eslint.executeAutofix<Return>' )
