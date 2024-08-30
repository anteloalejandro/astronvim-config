---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- colorscheme
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },

  -- language support
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.godot" },

  -- sql tools
  { import = "astrocommunity.pack.full-dadbod" },

  -- editing tools
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- docs
  { import = "astrocommunity.editing-support.nvim-devdocs" },
}
