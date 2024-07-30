return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  config = function()
    local neoscroll = require('neoscroll')
    neoscroll.setup({
      -- All other easing functions will use the default
      easing = "sine",
    })

    local t = {}
    -- Syntax: t[keys] = {function, {function arguments}}
    t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '105'}}
    t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '105'}}

    require('neoscroll.config').set_mappings(t)
  end
}
