---@type LazySpec
return {
  {
    "nvim-treesitter/playground",
    name = "tsplayground",
    cmd = "TSPlaygroundToggle",
  },
  {
    "lambdalisue/suda.vim",
    name = "suda",
  },
  {
    "christoomey/vim-tmux-navigator",
    name = "tmux-navigator",
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
