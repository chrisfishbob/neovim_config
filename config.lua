lvim.plugins = {
    -- Themes
    {
        "chrisfishbob/Everbloom",
    },
    -- Harpoon
    { "ThePrimeagen/harpoon" },
    -- Autosave
    {
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {}
        end
    },
    -- Undotree
    { "mbbill/undotree" },
}


require("everblush").setup({
    transparent_background = true
})

-- Set default color scheme
lvim.colorscheme = "everblush"

-- Undotree toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Centering the cursor in various scenarios
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "n", "nzz")


-- Move blocks of text while in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Unables copy and pasting outside of vim
-- vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Spaces > tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Misc
vim.opt.relativenumber = true
vim.opt.incsearch = true
vim.opt.scrolloff = 10
vim.key.set("n", "<C-c>", "<ESC>")

-- The Dark Arts
vim.keymap.set("n", "Q", "<nop>")

-- Navigating between references
vim.keymap.set("n", "pr", "<C-w>jk<CR>zz")
vim.keymap.set("n", "nr", "<C-w>jj<CR>zz")
