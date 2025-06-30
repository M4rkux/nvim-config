local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- init.lua
vim.opt.clipboard = "unnamedplus"

if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

require("vim-options")
require("lazy").setup("plugins")

