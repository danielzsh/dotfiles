-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ac", function()
  vim.cmd("!./run.sh % > run.out")
  vim.cmd("e run.out")
end, { desc = "Run file" })

vim.keymap.set("n", "<leader>cc", function()
  vim.cmd("!./compile.sh %")
end, { desc = "Preprocess file" })
