# This is the settins of NeoVim.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

---@diagnostic disable-next-line: unused-local
local opts = {}

-- Carrega o Lazy.
require("settings")
require("lazy").setup("plugins")

-- Carrega os atalhos definidos por mim.
require("atalhos")
