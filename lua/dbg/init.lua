require("telescope").load_extension("dap")
require("dbg.python")

vim.keymap.set("n", "<leader>dct", '<cmd>lua require"dap".continue()<CR>', { desc = "DAP: continue" })
vim.keymap.set("n", "<leader>dsv", '<cmd>lua require"dap".step_over()<CR>', { desc = "DAP: step over" })
vim.keymap.set("n", "<leader>dsi", '<cmd>lua require"dap".step_into()<CR>', { desc = "DAP: step into" })
vim.keymap.set("n", "<leader>dso", '<cmd>lua require"dap".step_out()<CR>', { desc = "DAP: step out" })
vim.keymap.set("n", "<leader>dtb", '<cmd>lua require"dap".toggle_breakpoint()<CR>', { desc = "DAP: toggle breakpoint" })

vim.keymap.set(
  "n",
  "<leader>dui",
  '<cmd>lua local ui=require"dapui";ui.setup();ui.open()<CR>',
  { desc = "DAP (UI): open UI" }
)
vim.keymap.set("n", "<leader>dut", '<cmd>lua local ui=require"dapui";ui.toggle()<CR>', { desc = "DAP (UI): toggle UI" })
vim.keymap.set(
  "n",
  "<leader>dsc",
  '<cmd>lua require"dap.ui.variables".scopes()<CR>',
  { desc = "DAP (UI): variables/scopes" }
)
vim.keymap.set(
  "n",
  "<leader>dhh",
  '<cmd>lua require"dap.ui.variables".hover()<CR>',
  { desc = "DAP (UI): variables/hover" }
)
vim.keymap.set(
  "v",
  "<leader>dhv",
  '<cmd>lua require"dap.ui.variables".visual_hover()<CR>',
  { desc = "DAP (UI): variables/visual hover" }
)

vim.keymap.set("n", "<leader>duh", '<cmd>lua require"dap.ui.widgets".hover()<CR>', { desc = "DAP (UI): hover widgets" })
vim.keymap.set(
  "n",
  "<leader>duf",
  "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>",
  { desc = "DAP (UI): widgets/centered float" }
)

vim.keymap.set(
  "n",
  "<leader>dsbr",
  '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
  { desc = "DAP: add breakpoint condition" }
)
vim.keymap.set(
  "n",
  "<leader>dsbm",
  '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>',
  { desc = "DAP: log point message" }
)
vim.keymap.set("n", "<leader>dro", '<cmd>lua require"dap".repl.open()<CR>', { desc = "DAP: open REPL" })
vim.keymap.set("n", "<leader>drl", '<cmd>lua require"dap".repl.run_last()<CR>', { desc = "DAP: run last" })

-- telescope-dap
vim.keymap.set(
  "n",
  "<leader>dcc",
  '<cmd>lua require"telescope".extensions.dap.commands{}<CR>',
  { desc = "DAP: show commands" }
)
vim.keymap.set(
  "n",
  "<leader>dco",
  '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>',
  { desc = "DAP: configurations" }
)
vim.keymap.set(
  "n",
  "<leader>dlb",
  '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>',
  { desc = "DAP: list breakpoints" }
)
vim.keymap.set(
  "n",
  "<leader>dv",
  '<cmd>lua require"telescope".extensions.dap.variables{}<CR>',
  { desc = "DAP: variables" }
)
vim.keymap.set("n", "<leader>df", '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', { desc = "DAP: frames" })
