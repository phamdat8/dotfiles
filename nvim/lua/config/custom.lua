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

-- Map a key to the search function (e.g., <leader>s)
vim.api.nvim_set_keymap("n", "<A-f>", ":lua SearchWordUnderCursor()<CR>", { noremap = true, silent = true })
