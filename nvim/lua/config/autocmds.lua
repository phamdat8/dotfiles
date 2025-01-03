-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

function SearchWordUnderCursor()
  -- Get the word under the cursor
  local word = vim.fn.expand("<cword>")

  -- Search for the word (forward search)
  if word ~= "" then
    -- Perform the search and highlight matches
    vim.fn.setreg("/", "\\<" .. word .. "\\>")
    vim.cmd("set hlsearch")
    print("Searching for: " .. word)
  else
    print("No word under the cursor")
  end
end
