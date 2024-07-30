---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        spelllang = "en",
        signcolumn = "auto",
        wrap = false,
        linebreak = true,
        softtabstop = 2,
        shiftwidth = 2,
        expandtab = true,
        cmdheight = 1,

        -- NEOVIDE SPECIFIC CONFIG
        guifont = "UbuntuMono Nerd Font:h15:#e-subpixelantialias",
      },
      g = {
        mapleader = " ",
        autoformat_enabled = false,
        cmp_enabled = true,
        autopairs_enabled = true,
        diagnostics_enabled = true,
        status_diagnostics_enabled = true,
        icons_enabled = true,
        ui_notifications_enabled = true,

        -- NEOVIDE SPECIFIC CONFIG
        neovide_cursor_vfx_mode = "",
        neovide_cursor_trail_size = 0.1,
      },
    },

    mappings = {
      n = {
        -- tmux navigator integration
        ["<C-h>"] = { ":TmuxNavigateLeft<CR>", desc = "window left" },
        ["<C-l>"] = { ":TmuxNavigateRight<CR>", desc = "window right" },
        ["<C-j>"] = { ":TmuxNavigateDown<CR>", desc = "window down" },
        ["<C-k>"] = { ":TmuxNavigateUp<CR>", desc = "window up" },

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },

        -- remap arrow keys
        ["<Up>"] = { "gk" },
        ["<Down>"] = { "gj" },

        ["<Leader>fs"] = {
          function() require("telescope.builtin").current_buffer_fuzzy_find() end,
          desc = "Find in current buffer",
        },
        ["<Leader>r"] = { ":set rnu!<CR>", desc = "Toggle relativenumber" },
        ["\\"] = { ":ToggleTerm direction=float<CR>" },
        ["<Leader>W"] = { ":SudaWrite<CR>:e %<CR>", desc = "Save as sudo" },
        ["<C-s>"] = { function() vim.api.nvim_command "write" end, desc = "Save File" },
        ["<Leader>uz"] = { ":ZenMode<CR>", desc = "Toggle Zen mode" },
        ["<Leader>ul"] = {
          function()
            if vim.o.background == "dark" then
              vim.o.background = "light"
            else
              vim.o.background = "dark"
            end
          end,
          desc = "Toggle light mode",
        },
        ["<Leader>uI"] = { ":GuessIndent<CR>", desc = "Guess indentation" },
        ["<Leader>D"] = { "<cmd>DBUIToggle<cr>", desc = "Toggle DBUI" },

        ["<Leader>dl"] = { ":DapLoadLaunchJSON", desc = "Load launch.json" },
      },
      i = {
        ["jj"] = { "<ESC>l" },
        ["<C-s>"] = { function() vim.api.nvim_command "write" end, desc = "Save File" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
