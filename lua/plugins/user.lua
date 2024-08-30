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
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 20,
      },
    },
  },
}
