if not vim.g.neovide then return {} end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        guifont = "UbuntuMono Nerd Font:h15:#e-subpixelantialias",
      },
      g = {
        neovide_cursor_vfx_mode = "",
        neovide_cursor_trail_size = 0.1,
      },
    },
  },
}
