require("config.lazy")

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.number = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.history = 1000
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.backup = false
vim.o.autoread = true
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.g.have_nerd_font = true

-- Use ; for commands
vim.keymap.set("n", ";", ":")

-- Clear highlights on escape
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Use \ to switch to alternate buffer
vim.keymap.set("n", "\\", "<C-^>")

-- Close current buffer
vim.keymap.set("n", "<leader>q", ":bd<cr>")

-- Copy buffer path to system clipboard
vim.keymap.set("n", "<leader>f", ':let @+ = expand(" % ")<cr>')

-- Hints for nonobvious filetypes
vim.filetype.add({
  filename = {
    ["Brewfile"] = "ruby",
  },
})
