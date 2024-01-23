return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = "hard"
    vim.cmd('colorscheme gruvbox-material')

    -- Override specific colors after applying the colorscheme
    vim.cmd("highlight Normal guibg=#000000")
  end
}

