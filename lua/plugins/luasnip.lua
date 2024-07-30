-- NOTE: See https://github.com/l3mon4d3/luasnip/blob/master/DOC.md#loaders
return {
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    -- load defaults
    require "astronvim.plugins.configs.luasnip"(plugin, opts)

    local loader_config = {
      paths = { vim.fn.stdpath "config" .. "/snippets" },
    }
    require("luasnip.loaders.from_lua").lazy_load(loader_config)
    require("luasnip.loaders.from_vscode").lazy_load(loader_config)
  end,
}
