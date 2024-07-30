---@type LazySpec
return {
  {
    "folke/zen-mode.nvim",
    name = "zen-mode",
    lazy = false,
  },
  {
    "nvim-treesitter/playground",
    name = "tsplayground",
    lazy = false,
  },
  {
    "lambdalisue/suda.vim",
    name = "suda",
    lazy = false,
  },
  {
    "wuelnerdotexe/vim-astro",
    name = "vim-astro",
    lazy = false,
  },
  {
    "chrisbra/NrrwRgn",
    name = "NarrowRegion",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    name = "tmux-navigator",
    lazy = false,
  },
  {
    "gpanders/nvim-parinfer",
    lazy = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "quickgd", priority = 750 }, -- NOTE: quickgd support
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 20,
      },
    },
  },
}
