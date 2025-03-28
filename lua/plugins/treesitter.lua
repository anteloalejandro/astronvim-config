---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
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
    }
  }
}
