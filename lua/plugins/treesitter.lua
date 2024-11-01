---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "vim",
      "hyprlang",
      "c",
      "yaml",
      "toml",
      "json",
      "markdown",
      "scss",
      "yuck",
      "sql",
      "bash",
      "regex",
      "kotlin",
      "groovy",

      "html", -- INFO: required for DevDocs, though it should be installed already
    })
  end,
}
