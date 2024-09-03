-- return {
--   "rebelot/kanagawa.nvim",
--   config = function()
--     -- vim.cmd.colorscheme('kanagawa-lotus')
--     -- vim.cmd.colorscheme('kanagawa-dragon')
--     vim.cmd.colorscheme('kanagawa')
--   end
-- }
-- return {
--   "xero/miasma.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme miasma")
--   end,
-- }

-- return {
--   'rktjmp/lush.nvim',
--   {'ab-dx/ares.nvim', 
--     config = function()
--       vim.cmd("colorscheme ares")
--     end,
--     name='ares', priority=1000},
-- }
return {
  'luisiacc/gruvbox-baby',
  branch = 'main',
  config = function()
    vim.cmd[[colorscheme gruvbox-baby]]
  end
}

-- return {
--     'sainnhe/gruvbox-material',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       -- Optionally configure and load the colorscheme
--       -- directly inside the plugin declaration.
--       vim.g.gruvbox_material_enable_italic = true
--       vim.cmd.colorscheme('gruvbox-material')
--     end
--   }
