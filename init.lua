vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.backup = false
vim.opt.cmdheight = 0
vim.opt.scrolloff = 10
vim.opt.backspace = {"start", "eol", "indent"}
vim.opt.wildignore:append({'*/node_modules/*'})
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.formatoptions:append({'r'})
vim.opt.clipboard = "unnamedplus"


require("zhansar")

