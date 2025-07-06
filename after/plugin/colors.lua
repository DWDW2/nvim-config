function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)
    vim.opt.background = "dark"
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#5c5c5c"})
    vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "SpecialKey", { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
end

require("tokyonight").setup({
    transparent = false,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
    },
    sidebars = { "qf", "help", "vista_kind", "terminal", "packer" },
    day_brightness = 0.3,
    hide_inactive_statusline = false,
    dim_inactive = false,
    lualine_bold = false,
})

require("rose-pine").setup({
    variant = "main", -- main, moon, dawn
    dark_variant = "main",
    dim_inactive_windows = false,
    extend_background_behind_borders = true,
    styles = {
        bold = false,
        italic = false,
        transparency = true,
    },
    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",
        error = "love",
        hint = "iris",
        info = "foam",
        warn = "gold",
    },
    highlight_groups = {
        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "base" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeSelection = { fg = "text", bg = "base" },
        TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
    },
})

ColorMyPencils("rose-pine")


