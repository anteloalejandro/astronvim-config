if vim.g.neovide then
  -- NEOVIDE ZOOM
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-+>", function()
    if vim.g.neovide_scale_factor < 2.0 then
      change_scale_factor(1.25)
    end
  end)
  vim.keymap.set("n", "<C-->", function()
    if vim.g.neovide_scale_factor > 0.5 then
      change_scale_factor(1/1.25)
    end
  end)
end
