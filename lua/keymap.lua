local K = {}

-- NOTE: Setup custom keymap
K.setup_custom_keymap = function()
  vim.keymap.set("n", "<C-o>", "a<CR><esc>", { desc = "Go down by one line" })
  vim.keymap.set("n", "<leader>hl", "<Cmd>nohl<CR>", { desc = "Remove highlight" })
  vim.keymap.set("n", "<C-a>", "gg<S-V><S-G>", { desc = "Select all" })
end

-- NOTE: Setup keymap for flash
K.flash_keymaps = {
  { "f",     mode = { "n", "x", "o" }, function() require("flash").jump() end,   desc = "Flash" },
  { "<c-f>", mode = { "c" },           function() require("flash").toggle() end, desc = "Toggle Flash Search" },
}
return K