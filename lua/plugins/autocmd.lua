return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      autocmds = {
        selective_wrap = {
          {
            event = "FileType",
            desc = "Set wrap for certain filetypes only",
            callback = function (ev)
              local filetype = ev.match
              local wrap_allowed = { "markdown", "typst" }
              if vim.tbl_contains(wrap_allowed, filetype) then
                vim.opt_local.wrap = true
              end
            end
          }
        }
      }
    }
  }
}
