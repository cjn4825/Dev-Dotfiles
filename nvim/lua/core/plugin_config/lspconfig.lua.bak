-- windowed borders for everything lsp related
vim.o.winborder = "rounded"

local function apply_ui_fixes()
    local bordercolor = '#ebdbb2'

    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = bordercolor })
    vim.api.nvim_set_hl(0, 'CmpBorder', { fg = bordercolor })

    vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
    vim.api.nvim_set_hl(0, 'CmpPmenu', { link = 'Normal' })

    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#fb4934" })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#fabd2f" })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#83a598" })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#8ec07c" })
end

apply_ui_fixes()
vim.api.nvim_create_autocmd('ColorScheme', { pattern = '*', callback = apply_ui_fixes })

-- mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "pyright",
        "bashls",
    },
    automatic_enable = true,
})

-- keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)

vim.keymap.set('n', 'K', function()
    vim.lsp.buf.hover({ border = "rounded" })
end, opts)

-- general diagnostics
vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
    },
})

-- fix undefined global vim issue
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            }
        }
    }
})

-- attempt at getting yamlls autocomplete to work
-- vim.lsp.config("yamlls", {
--     settings = {
--         yaml = {
--             schemaStore = {
--                 enable = true,
--                 url = "https://www.schemastore.org/api/json/catalog.json"
--             },
--             validate = true,
--             completion = true,
--             hover = true
--         }
--     }
-- })
