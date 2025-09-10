-- Configure catppuccin
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
    },
})

-- Enable Catppuccin by default. This line ensures that this theme is enabled every time vim is opened.
vim.cmd("colorscheme catppuccin")

-- Enable Catppuccino by <leader>[C]hange [C]olorscheme [C]atppuccino
vim.keymap.set("n", "<leader>ccc", function()
  vim.cmd("colorscheme catppuccin")
end)

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
