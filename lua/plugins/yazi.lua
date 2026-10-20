return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>e",
        function()
          require("yazi").yazi()
        end,
        desc = "Abrir Yazi en el archivo actual",
      },
      {
        "<leader>cw",
        function()
          require("yazi").yazi(nil, vim.fn.getcwd())
        end,
        desc = "Abrir Yazi en el root del proyecto",
      },
    },
    opts = {
      open_for_directories = false,
      floating_window_scaling_factor = 0.85,
    },
  },
}
