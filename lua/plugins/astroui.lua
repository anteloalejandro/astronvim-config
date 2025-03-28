---@type LazySpec
--- NOTE: see :h astroui
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "gruvbox-baby",
    highlights = {
      -- overwrite colors in all themes
      init = {},
      -- overwrite gruvbox theme colors
      gruvbox = {},
      -- check your theme's lua/<theme_name>.lua to learn what to edit
    },
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
