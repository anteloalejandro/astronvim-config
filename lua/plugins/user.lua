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
  {
    'cordx56/rustowl',
    version = '*', -- Latest stable version
    build = 'cargo binstall rustowl',
    lazy = false, -- This plugin is already lazy
    opts = {
      highlight_style = 'underline',
      colors = {
        lifetime = '#ebdbb2',
        imm_borrow = '#458588',
        mut_borrow = '#b16286',
        move = '#b8bb26',
        call = '#b8bb26',
        outlive = '#fb4934'
      },
      client = {
        on_attach = function(_, buffer)
          vim.keymap.set('n', '<leader>Ero', function()
            require('rustowl').toggle(buffer)
          end, { buffer = buffer, desc = 'Toggle RustOwl' })
          vim.keymap.set('n', '<leader>Ere', function()
            require('rustowl').enable(buffer)
          end, { buffer = buffer, desc = 'Enable RustOwl' })
          vim.keymap.set('n', '<leader>Erd', function()
            require('rustowl').disable(buffer)
          end, { buffer = buffer, desc = 'Disable RustOwl' })
        end
      },
    },
  }
}
