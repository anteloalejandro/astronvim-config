local is_incompatible_if_not_kitty =
  vim.fn.system("which", "ueberzugpp") == "ueberzugpp not found" or
  vim.fn.system("which", "magick") == "magick not found"

local is_kitty =
  vim.fn.getenv("TERM") == "xterm-kitty" or
  vim.fn.getenv("TERM") == "xterm-ghostty"

if not is_kitty and is_incompatible_if_not_kitty then return {} end

local backend = is_kitty and "kitty" or "ueberzug"

return {
  "3rd/image.nvim",
  event = "VeryLazy",
  opts = {
    backend = backend,
    processor = "magick_cli",
  }
}
