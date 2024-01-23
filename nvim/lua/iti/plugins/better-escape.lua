local config = function()
    local escape = require("better_escape")
    escape.setup({
    mapping = { "jj", "jk" },
    timeout = vim.o.timeoutlen,
    })
end

return {
    "max397574/better-escape.nvim",
    lazy = false,
    config = config,
}
