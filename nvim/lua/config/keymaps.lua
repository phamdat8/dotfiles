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

keymap.set("", "<A-s>", ":w<Return>")
keymap.set("i", "jj", "<Esc>")
keymap.set("i", "qq", "<Esc>")
keymap.set("n", "<space>", ":")
keymap.set("n", "q", ":q<Return>")

keymap.set("n", "`", "$a,5<Esc>")
keymap.set("n", "<A-g>", ":BrowserSearch ")
keymap.set("n", "1", ":cd ~/work-space/vendor_portal_ror<Return>")
keymap.set("n", "2", ":cd ~/work-space/vendor_portal_frontend<Return>")
keymap.set("n", "tn", ":tabnew<Return>")
keymap.set("n", "tj", ":tabprevious<Return>")
keymap.set("n", "tk", ":tabnext<Return>")

local status, telescope = pcall(require, "telescope")
if not status then
  return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<C-w>"] = function()
            vim.cmd("normal vbd")
          end,
        },
        ["n"] = {
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd("startinsert")
          end,
        },
      },
    },
  },
})

telescope.load_extension("file_browser")

vim.keymap.set("", "<A-p>", function()
  builtin.find_files({
    no_ignore = false,
    hidden = true,
  })
end)
vim.keymap.set("", "<A-f>", function()
  builtin.live_grep()
end)
vim.keymap.set("", "<F2>", function()
  builtin.buffers()
end)
vim.keymap.set("n", ";t", function()
  builtin.help_tags()
end)
vim.keymap.set("n", ";;", function()
  builtin.resume()
end)
vim.keymap.set("n", ";e", function()
  builtin.diagnostics()
end)
vim.keymap.set("n", "<A-o>", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 400 },
  })
end)
