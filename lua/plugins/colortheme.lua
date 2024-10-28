-- Define all available themes
local themes = {
  kanagawa = {
    module = "rebelot/kanagawa.nvim",
    setup = function()
      vim.cmd.colorscheme('kanagawa-lotus')
    end
  },
  bamboo = {
    module = "ribru17/bamboo.nvim",
    setup = function()
      local status_ok, bamboo = pcall(require, 'bamboo')
      if not status_ok then
        vim.notify('bamboo.nvim not found', vim.log.levels.ERROR)
        return
      end
      bamboo.setup {}
      bamboo.load()
    end,
  },
  ares = {
    module = 'ab-dx/ares.nvim',
    setup = function()
      local status_ok, _ = pcall(require, 'lush')
      if not status_ok then
        vim.notify('Lush not found. Required for Ares theme.', vim.log.levels.ERROR)
        return
      end
      vim.cmd("colorscheme ares")
    end
  },
  gruvbox_baby = {
    module = 'luisiacc/gruvbox-baby',
    branch = 'main',
    setup = function()
      vim.cmd[[colorscheme gruvbox-baby]]
    end
  },
  gruvbox_material = {
    module = 'sainnhe/gruvbox-material',
    setup = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme('gruvbox-material')
    end
  }
}

-- Function to load theme preference
local function load_theme_preference()
  local file = io.open(vim.fn.stdpath('config') .. '/theme_preference.txt', 'r')
  if file then
    local theme = file:read()
    file:close()
    return theme
  end
  return 'gruvbox_baby'  -- Default theme
end

-- Function to save theme preference
local function save_theme_preference(theme_name)
  local file = io.open(vim.fn.stdpath('config') .. '/theme_preference.txt', 'w')
  if file then
    file:write(theme_name)
    file:close()
  end
end

-- Function to switch theme
local function switch_theme(theme_name)
  if themes[theme_name] then
    local status_ok = pcall(themes[theme_name].setup)
    if status_ok then
      save_theme_preference(theme_name)
      vim.notify('Switched to ' .. theme_name .. ' theme', vim.log.levels.INFO)
    else
      vim.notify('Failed to load ' .. theme_name .. ' theme', vim.log.levels.ERROR)
    end
  else
    vim.notify('Theme ' .. theme_name .. ' not found', vim.log.levels.ERROR)
  end
end

-- Create command to switch themes
vim.api.nvim_create_user_command('ThemeSelect', function(opts)
  switch_theme(opts.args)
end, {
  nargs = 1,
  complete = function()
    return vim.tbl_keys(themes)
  end
})

-- Return multiple plugin configurations
return {
  -- Kanagawa theme
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Bamboo theme
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Lush (required for Ares)
  {
    "rktjmp/lush.nvim",
    lazy = false,
    priority = 1001,  -- Load before Ares
  },
  -- Ares theme
  {
    'ab-dx/ares.nvim',
    dependencies = { "rktjmp/lush.nvim" },
    lazy = false,
    priority = 1000,
  },
  -- Gruvbox Baby theme
  {
    'luisiacc/gruvbox-baby',
    branch = 'main',
    lazy = false,
    priority = 1000,
  },
  -- Gruvbox Material theme
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the saved theme preference
      local preferred_theme = load_theme_preference()
      if themes[preferred_theme] then
        themes[preferred_theme].setup()
      else
        -- Fallback to default theme if saved preference is invalid
        themes['gruvbox_baby'].setup()
      end

      -- Set up autocmd to ensure theme is applied after UI loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- Re-apply your theme-specific settings here if needed
          vim.cmd("redraw")
        end,
      })
    end,
  }
}
