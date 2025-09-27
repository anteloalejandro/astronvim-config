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
        neovide_hide_mouse_when_typing = true,
        neovide_padding_top = 8,
        neovide_padding_bottom = 8,
        neovide_padding_right = 8,
        neovide_padding_left = 8,
      },
    },
  },
}
