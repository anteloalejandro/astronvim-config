---@type LazySpec
return {
  "kawre/leetcode.nvim",
  {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        -- disable leetcode on startup
        leetcode_autostart = {}
      }
    }
  }
}
