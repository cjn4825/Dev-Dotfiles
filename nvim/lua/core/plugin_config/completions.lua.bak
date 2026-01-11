-- Snippet Loader
require("luasnip.loaders.from_vscode").lazy_load()

local cmp = require("cmp")

-- completion capabilities to all servers
vim.lsp.config("*", {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

-- setup for window look, keybinds, and sources
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered({
            border = "rounded",
            winhighlight = "Normal:CmpPmenu,FloatBorder:CmpBorder",
        }),
        documentation = cmp.config.window.bordered({
            border = "rounded",
            winhighlight = "Normal:CmpPmenu,FloatBorder:CmpBorder",
        }),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
        ['<C-h>'] = cmp.mapping.complete()
    }),
    sources = {
        { name = 'nvim_lsp', keyword_length = 0 },
        { name = 'luasnip', keyword_length = 0},
        { name = 'path' },
        {
            name = 'buffer',
            keyword_length = 0,
            option = {
                get_bufnrs = function() return vim.api.nvim_list_bufs() end
            }
        },
    },
})
