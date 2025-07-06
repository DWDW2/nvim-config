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
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99 
vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
  pattern = "*",
  callback = function()
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldlevel = 99
  end,
})
vim.api.nvim_set_hl(0, "@text.regex.go", { link = "String" })
require("zhansar")

