-- NOTE: Originally found somewhere on the astronvim v3 docs
local function has_words_before()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

return {
  "Saghen/blink.cmp",
  opts = {
    sources = {
      default = {
        "lsp",
        "quickgd",
        "path",
        "snippets",
        "buffer",
      },
    },

    -- INFO: Use Tab to cycle options and Enter to insert them
    -- see :h blink-cmp-config-keymap
    keymap = {
      preset = 'default',
      -- If completion hasn't been triggered yet, insert the first suggestion; if it has, cycle to the next suggestion.
      ['<Tab>'] = {
        function(cmp)
          if cmp.is_menu_visible() then
            return cmp.select_next()
          elseif has_words_before() then
            return cmp.show()
          end
        end,
        'fallback',
      },
      -- Navigate to the previous suggestion or cancel completion if currently on the first one.
      ['<S-Tab>'] = {
        function(cmp)
          if cmp.is_menu_visible() then
            return cmp.select_prev()
          end
        end,
        'fallback',
      },
    },
  }
}
