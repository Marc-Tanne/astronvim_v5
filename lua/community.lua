-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { "sindrets/diffview.nvim" },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { 
        enabled = true,
        win = 0,
        buf = 0,
        bo = {
          bufhidden = "wipe",
          buftype = "nofile",
          buflisted = false,
          filetype = "snacks_dashboard",
          swapfile = false,
          undofile = false,
        },
      },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      notify = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { 
        enabled = true,
        duration = { step = 5, total = 50 },
      },
      statuscolumn = {
        enabled = true,
        left = { "mark", "sign" },
        right = { "fold", "git" },
      },
      util = { enabled = true },
      win = { enabled = true },
      words = { enabled = true },
    },
  },
}
