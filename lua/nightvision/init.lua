local M = {}

function M.setup()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "nightvision"
    
    vim.o.termguicolors = true
    
    local groups = require("nightvision.groups").groups()

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
