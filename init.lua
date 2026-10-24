-- ~/.config/nvim/init.lua

require("config.lazy")

if vim.env.TERM_PROGRAM == "ghostty" then
    vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
            io.write("\27[<u")
        end,
    })
end
