local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- My personal keymaps
keymap.set("i", "æ", "`", opts)

-- Move line
local optsMovelineDown = {
  noremap = true,
  silent = true,
  desc = "Move line down",
}
keymap.set("n", "<s-down>", ":m .+1<CR>==", optsMovelineDown)
keymap.set("v", "<s-down>", ":m '>+1<CR>gv=gv", optsMovelineDown)

local optsMovelineUp = {
  noremap = true,
  silent = true,
  desc = "Move line up",
}
keymap.set("v", "<s-up>", ":m '<-2<CR>gv=gv", optsMovelineUp)
keymap.set("n", "<s-up>", ":m .-2<CR>==", optsMovelineUp)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<s-j>", function()
  vim.diagnostic.goto_next()
end, opts)
