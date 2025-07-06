require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "typescript", "javascript", "rust", "go", "gomod", "gowork", "gosum"},
  sync_install = false,
  auto_install = true,
	highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, 
  },
  indent = { enable = true },
  disable = function(lang, buf)
    if lang == "go" then
      return false
    end
	end
}
