return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        {
          name = "melange",
          colorscheme = "melange",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "ashen",
          colorscheme = "ashen",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "citrus",
          colorscheme = "citruszest",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "jellybeans",
          colorscheme = "jellybeans",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "mellifluous.nvim",
          colorscheme = "mellifluous",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "posterpole",
          colorscheme = "posterpole",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "posterterm",
          colorscheme = "posterpole-term",
          before = [[
            vim.opt.background = "dark"
            require("notify").setup({
              background_colour = "#000000",
            })
          ]]
        },
        {
          name = "rakis",
          colorscheme = "rakis",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "ubaryd",
          colorscheme = "ubaryd"
        },
        {
          name = "kanagawa wave",
          colorscheme = "kanagawa-wave"
        },
        {
          name = "kanagawa dragon",
          colorscheme = "kanagawa-dragon"
        },
        {
          name = "bamboo",
          colorscheme = "bamboo"
        },
        {
          name = "ares",
          colorscheme = "ares"
        },
        {
          name = "gruvbox baby",
          colorscheme = "gruvbox-baby"
        },
        {
          name = "gruvbox material",
          colorscheme = "gruvbox-material",
          before = [[
            vim.g.gruvbox_material_enable_italic = true
          ]]
        },
        {
          name = "alduin",
          colorscheme = "alduin"
        },
        {
          name = "oxocarbon",
          colorscheme = "oxocarbon",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "no clown fiesta",
          colorscheme = "no-clown-fiesta"
        },
        {
          name = "everforest",
          colorscheme = "everforest",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "doom miramare",
          colorscheme = "doom-miramare",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "miasma",
          colorscheme = "miasma",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "chocolatier",
          colorscheme = "chocolatier",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "coffee",
          colorscheme = "coffee",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "espresso",
          colorscheme = "espresso",
          before = [[
            vim.opt.background = "dark"
          ]]
        },
        {
          name = "kanagawa lotus",
          colorscheme = "kanagawa-lotus"
        },
        {
          name = "doom gruvbox light",
          colorscheme = "doom-gruvbox",
          before = [[
            vim.opt.background = "light"
          ]]
        },
        {
          name = "rakis light",
          colorscheme = "rakis",
          before = [[
            vim.opt.background = "light"
          ]]
        },
      }
    })
  end
}
