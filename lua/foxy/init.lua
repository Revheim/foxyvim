print("Foxy!")
require("foxy.lazy")
require("foxy.options")
require("foxy.keymap")
require("foxy.plugins")
require("foxy.setbg")

require('neoscroll').setup()
-- require('cmp').setup()

-- vim.api.nvim_create_augroup('AutoFormatting', {})
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*.lua',
--   group = 'AutoFormatting',
--   callback = function()
--     vim.lsp.buf.format({ async = true })
--     vim.cmd.write()
--   end,
-- })

-- on_attach = function(client, bufnr)
--   vim.keymap.set('n', '<A-s>', function()
--     local params = vim.lsp.util.make_formatting_params({})
--     local handler = function(err, result)
--       if not result then return end
-- 
--       vim.lsp.util.apply_text_edits(result, bufnr, client.offset_encoding)
--       vim.cmd('write')
--     end
-- 
--     client.request('textDocument/formatting', params, handler, bufnr)
--   end, {buffer = bufnr})
-- end
