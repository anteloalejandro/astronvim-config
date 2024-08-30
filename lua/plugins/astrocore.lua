---@type LazySpec
-- NOTE: docs at :h astrocore
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      -- set global limits for large files for disabling features like treesitter
      large_buf = { size = 1024 * 500, lines = 10000 },
      -- (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      diagnostics_mode = 3,

      autopairs = true,
      cmp = true,
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
      update_in_insert = true,
    },
    -- vim options, NOTE: see :h lua-vim-variables
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
        suda_smart_edit = 1,
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

        -- remap arrow keys
        ["<Up>"] = { "gk" },
        ["<Down>"] = { "gj" },

        -- quick keymaps
        ["<Leader>r"] = { ":set rnu!<CR>", desc = "Toggle relativenumber" },
        ["\\"] = { ":ToggleTerm direction=float<CR>" },
        ["<C-s>"] = { function() vim.api.nvim_command "write" end, desc = "Save File" },

        -- extend Buffer keymaps
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },

        -- extend Debugger keymaps
        ["<Leader>dl"] = { ":DapLoadLaunchJSON<CR>", desc = "Load launch.json" },

        -- extend Find keymaps
        ["<Leader>fs"] = {
          function() require("telescope.builtin").current_buffer_fuzzy_find() end,
          desc = "Find in current buffer",
        },

        -- extend UI/UX keymaps
        ["<Leader>uq"] = { ":DBUIToggle<CR>", desc = "Toggle DBUI" },
        ["<Leader>uI"] = { ":GuessIndent<CR>", desc = "Guess indentation" },
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

        -- docs keymaps
        ["<Leader>D"] = { desc = "󰦨 Docs" },
        ["<Leader>Di"] = { ":DevdocsFetch<CR>:DevdocsInstall<CR>", desc = "Installer" },
        ["<Leader>Du"] = { ":DevdocsFetch<CR>:DevdocsUpdate<CR>", desc = "Update" },
        ["<Leader>DU"] = { ":DevdocsFetch<CR>:DevdocsUpdateAll<CR>", desc = "Update All" },
        ["<Leader>Do"] = { ":DevdocsOpenCurrentFloat<CR>", desc = "Open docs for current filetype" },
        ["<Leader>DO"] = { ":DevdocsOpenFloat<CR>", desc = "Open all docs" },
        ["<Leader>Db"] = { ":DevdocsOpenCurrent<CR>", desc = "Open docs for current filetype (new buffer)" },
        ["<Leader>DB"] = { ":DevdocsOpen<CR>", desc = "Open all docs (new buffer)" },
        ["<Leader>Dt"] = { ":DevdocsToggle<CR>", desc = "Toggle docs window" },
      },
      i = {
        ["jj"] = { "<ESC>l" },
        ["<C-s>"] = { function() vim.api.nvim_command "write" end, desc = "Save File" },
      },
      t = {},
      v = {
        -- Narrow Region
        ["<Leader>n"] = { desc = "Narrow Region" },
        ["<Leader>ns"] = { "<Plug>NrrwrgnDo", desc = "To split" },
        ["<Leader>nb"] = { "<Plug>NrrwrgnBangDo", desc = "To buffer" },
      },
    },
  },
}
