return {
  "xiyaowong/transparent.nvim",
  lazy = false,   -- load at startup
  opts = {
    -- this will clear all the defaults *plus* these extra groups:
    extra_groups   = { "NormalFloat", "NormalNC", "SignColumn", "LineNr" },
    -- nothing is excluded
    exclude_groups = {},
  },
  config = function(_, opts)
    -- 1) install the plugin
    require("transparent").setup(opts)  -- :contentReference[oaicite:0]{index=0}

    -- 2) clear *right now* (in case your colorscheme already ran)
    vim.cmd("TransparentEnable")

    -- 3) re‑apply every time a colorscheme is (re)loaded
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      command = "TransparentEnable",   -- :contentReference[oaicite:1]{index=1}
    })
  end,
}
