return {
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
        transparent_background_level = 0,
        italics = true,
        float_style = "bright",
        diagnostic_text_highlight = true,
        diagnostic_virtual_text = "colored",
      })
      vim.cmd("colorscheme everforest")
    end,
  },
}
