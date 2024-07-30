---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- extra null-ls formatting sources
    config.sources = {}
    return config
  end,
}
