return {
    'machakann/vim-highlightedyank',
    lazy = false,
    config = function()
        -- Setting up the HighlightedyankRegion with transparent text selection and 20% opacity yellow background
        vim.api.nvim_exec([[
            highlight HighlightedyankRegion cterm=underline gui=underline ctermbg=NONE guibg=#FFFF0033
            augroup HighlightYank
                autocmd!
                autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="HighlightedyankRegion", timeout=150}
            augroup END
        ]], false)
    end
}


