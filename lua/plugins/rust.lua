---@type LazySpec
return {
  {
    'cordx56/rustowl',
    version = '*', -- Latest stable version
    build = 'cargo binstall rustowl',
    lazy = false, -- This plugin is already lazy
    enabled = false, -- do not enable this plugin for the time being
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
  },
  { -- add tree-sitter syntax highlighting for the leptos view macro
    "rayliwell/tree-sitter-rstml",
    config = function ()
      require("tree-sitter-rstml").setup()
    end
  },
  {
    "mrxiaozhuox/dioxus.nvim",
    enabled = false,
    opts = {
      format = {
        split_line_attributes = true,
      },
    },
    ft = "rust",
  },
}
