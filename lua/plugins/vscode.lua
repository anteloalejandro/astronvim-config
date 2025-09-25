if not vim.g.vscode then return {} end

---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-h>"] = false,
          ["<C-l>"] = false,
          ["<C-j>"] = false,
          ["<C-k>"] = false,
          ["<Leader>uZ"] = "<CMD>call VSCodeNotify('workbench.action.toggleZenMode')<CR>",
        },
      },
    },
  },
  { "AstroNvim/astroui", opts = { colorscheme = false } },
}
