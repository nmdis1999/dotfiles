return {
    "lervag/vimtex",
    ft = { "tex", "latex" }, -- Plugin loads for tex and latex filetypes
    config = function()
        -- Configuration settings for vimtex plugin
        -- Set PDF viewer to Skim
        vim.g.vimtex_view_method = 'skim'

        -- Additional configuration for Skim
        vim.g.vimtex_view_skim = {
            forward_search = true, -- enables forward search
            reuse = true, -- reuse existing Skim window
            -- specify additional options if needed
        }

        -- Additional configurations for vimtex can be added here
        -- Example: vim.g.vimtex_quickfix_mode = 0 -- Disable quickfix mode
    end,
}

