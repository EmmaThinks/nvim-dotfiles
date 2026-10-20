return {
  {
    "stevearc/overseer.nvim",
    opts = {
      templates = { "builtin" },
    },
    config = function(_, opts)
      local overseer = require("overseer")
      overseer.setup(opts)

      vim.keymap.set("n", "<leader>rr", "<cmd>OverseerRun<cr>", { desc = "Seleccionar/Ejecutar tarea" })
      vim.keymap.set("n", "<leader>ro", "<cmd>OverseerToggle<cr>", { desc = "Ver ventana de compilación" })

      vim.keymap.set("n", "<leader>rc", function()
        local file = vim.fn.expand("%")
        local out = vim.fn.expand("%:r")
        overseer.new_task({
          name = "Compilar y correr C",
          cmd = { "bash", "-c", string.format("gcc -Wall -Wextra -O2 '%s' -o '%s' && ./'%s'", file, out, out) },
          components = { "default", "on_output_summarize", "unique" },
        }):start()
        overseer.open({ enter = false })
      end, { desc = "Compilar y correr archivo C" })

      vim.keymap.set("n", "<leader>rb", function()
        overseer.new_task({
          name = "Cargo Run",
          cmd = { "cargo", "run" },
          components = { "default", "on_output_summarize", "unique" },
        }):start()
        overseer.open({ enter = false })
      end, { desc = "Cargo Run" })

      vim.keymap.set("n", "<leader>rs", function()
        local out = "./" .. vim.fn.expand("%:r")
        vim.cmd("split | terminal sudo " .. out)
      end, { desc = "Ejecutar binario con sudo" })
    end,
  },
}
