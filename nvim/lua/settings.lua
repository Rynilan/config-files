vim.cmd("set number relativenumber")
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.diagnostic.config({
  virtual_text = {
    prefix = "",
    severity_sort = true,
    spacing = 2,
    source = "never",
    format = function(diagnostic)
      return string.format("%s", diagnostic.message)
    end,
  },
  signs = true,
  underline = true,
})
