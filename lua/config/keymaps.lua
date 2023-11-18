vim.keymap.set("n", "<S-v>", "v$", { desc = "Select till the end of line" })
vim.keymap.set("n", "vv", "0v$", { desc = "Select whole line" })
vim.keymap.set({"i", "v"}, "jk", "<ESC>", { desc = "More convenient way to escape" })
vim.keymap.set({"i", "v"}, "kj", "<ESC>", { desc = "More convenient way to escape" })

-- harpoon
vim.keymap.set("n", "<leader>ho", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Harpoon: open menu" })
vim.keymap.set("n", "<leader>hm", function() require("harpoon.mark").add_file() end, { desc = "Harpoon: mark file" })
vim.keymap.set("n", "<leader>hf", function() require("harpoon.ui").nav_next() end, { desc = "Harpoon: go to next file" })
vim.keymap.set("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end, { desc = "Harpoon: go to previous file" })
vim.keymap.set("n", "<leader>ht", function() require("harpoon.term").gotoTerminal(1) end, { desc = "Harpoon: open terminal 1" })

local function nav_file(id)
  local function wrapper()
    require("harpoon.ui").nav_file(id)
  end
  return wrapper
end
for i = 1, 10 do
  vim.keymap.set("n", string.format("<leader>h%d", i), nav_file(i), { desc = "Harpoon: navigate to file {id}" })
end

-- hop.nvim
-- place this in one of your configuration file(s)
-- local directions = require('hop.hint').HintDirection
local hop = require('hop')
vim.keymap.set("n", "fa", hop.hint_anywhere, { desc = "Hop: Jump anywhere" })
vim.keymap.set("n", "f", hop.hint_char1, { desc = "Hop: Jump anywhere" })

-- vim.keyvim.keymap.set.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {revim.keymap.set=true})
