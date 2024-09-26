local keymap = vim.keymap

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "ss", ":split<Return>", { silent = true })
keymap.set("n", "sw", ":vsplit<Return>", { silent = true })
keymap.set("n", "<Tab>", "<C-w>w")
keymap.set("i", "<Tab>", "<Return>")

keymap.set("", "<A-s>", ":w<Return>")
keymap.set("i", "jj", "<Esc>")
keymap.set("i", "qq", "<Esc>")
keymap.set("n", "<space>", ":")
keymap.set("n", "q", ":q<Return>")

keymap.set("n", "`", "$a,5<Esc>")
keymap.set("n", "<A-g>", ":BrowserSearch ")
keymap.set("n", "1", ":cd ~/work-space/MIMS_BE<Return>")
keymap.set("n", "2", ":cd ~/work-space/MIMS_FE<Return>")
keymap.set("n", "tn", ":tabnew<Return>")
keymap.set("n", "tj", ":tabprevious<Return>")
keymap.set("n", "tk", ":tabnext<Return>")
keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

vim.api.nvim_set_keymap("n", "<A-f>", ":lua SearchWordUnderCursor()<CR>", { noremap = true, silent = true })
