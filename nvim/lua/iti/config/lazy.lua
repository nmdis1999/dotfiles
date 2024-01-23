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

require("iti.config.globals")
require("iti.config.options")
require("iti.config.keymaps")
require("iti.config.autocmds")

local opts = {
    defaults = {
        lazy = true,
    },
    install = {
        colorscheme = { "gruvbox-material" },
    },
    rtp = {
        disabled_plugins = {
            "gzip",
            "matchit",
            "matchparen",
            "netrw",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
    },
    change_detection = {
        notify = false,
    },
}

local plugins = "iti.plugins"
require("lazy").setup(plugins, opts)
