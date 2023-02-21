local dap = require('dap')
local dap_ui = require('dapui')
dap_ui.setup()
require('dap-python').setup('/usr/bin/python3')

vim.keymap.set('n', "<leader>tb", dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>db', dap_ui.toggle)
-- require('dap-python').resolve_python = function()
--     return '/absolute/path/to/python'
-- end
