return {
  {
    "zenbones-theme/zenbones.nvim",
    priority=1000,
    lazy=false
  },
  {
    "rockerBOO/boo-colorscheme-nvim",
    priority=1000,
    lazy=false
  },
  {
    "ilof2/posterpole.nvim",
    priority=1000,
    lazy=false
  },
  {
    "sample-usr/rakis.nvim",
    priority=1000,
    lazy=false
  },
  {
    'Donearm/Ubaryd',
    priority=1000,
    lazy = false
  },
  {
    'coffee-theme/coffee.vim',
    priority = 1000,
    lazy=false
  },
  {
    "doums/espresso.nvim",
    priority = 1000,
    lazy = false
  },
  {
    "xero/miasma.nvim",
    priority = 1000,
    lazy = false
  },
  {
    "qaptoR-nvim/chocolatier.nvim",
    priority = 1000,
    lazy = false
  },
  {
    "gustavoprietop/doom-themes.nvim",
    priority = 1000,
    lazy = false,
  },
  -- Kanagawa theme
    {
    "AlessandroYorba/Alduin",
    priority = 1000,
    lazy = false
  },
  {
    "neanias/everforest-nvim",
    priority = 1000,
    lazy = false
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    priority = 1000,
    lazy = false
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    lazy = false
  },
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
  }
}
