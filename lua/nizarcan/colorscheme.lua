-- Enable Catppuccin by default. This line ensures that this theme is enabled every time vim is opened.
vim.cmd("colorscheme catppuccin")

-- Enable Kanagawa Dragon by <leader>[C]hange [C]olorscheme [K]anagawa [D]ragon
vim.keymap.set("n", "<leader>ctkd", function()
  vim.cmd("colorscheme kanagawa-dragon")
end)

-- This keymap stands for blind this mf
vim.keymap.set("n", "<leader>btmf", function()
  require("kanagawa").load("lotus")
end)

-- Sometimes you got to be boring
vim.keymap.set("n", "<leader>BORING", function()
  vim.cmd("colorscheme no-clown-fiesta")
end)
