-- Enable Kanagawa Dragon by default("The GOAT"). This line ensures that this theme is enabled every time vim is opened.
vim.cmd("colorscheme kanagawa-dragon")

-- This keymap stands for blind this mf
vim.keymap.set("n", "<leader>btmf", function() 
  require("kanagawa").load("lotus") 
end)

-- Sometimes you got to be boring
vim.keymap.set("n", "<leader>BORING", function() 
  vim.cmd("colorscheme no-clown-fiesta")
end)
