---@type LazySpec
return {
  "kawre/leetcode.nvim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        autocmds = {
          -- disable leetcode on startup
          leetcode_autostart = {}
        },
      }
    }
  },
  opts = {
    ---@type lc.lang
    lang = "rust",
    injector = {
      ["rust"] = {
        before = {
          "#[allow(dead_code)]",
          "fn main(){}",
          "",
          "#[allow(dead_code)]",
          "struct Solution;"
        },
      }
    },
    hooks = {
      ---@type fun(question: lc.ui.Question)[]
      ["question_enter"] = {
        function(question)
          local problem_dir = require("leetcode.config").user.storage.home
          -- Setup Cargo.toml to make rust-analyzer work properly.
          if question.lang == "rust" then
            local config_path = problem_dir .. "/Cargo.toml"
            local content = [[
              [package]
              name = "leetcode"
              edition = "2024"

              [lib]
              name = "%s"
              path = "%s"

              [dependencies]
              rand = "0.8"
              regex = "1"
              itertools = "0.14.0"
            ]]

            local file = io.open(config_path, "w")
            if file then
              local formatted = (content:gsub(" +", "")):format(question.q.frontend_id, question:path())
              file:write(formatted)
              file:close()
            else
              vim.notify("Failed to open file: " .. config_path, vim.log.levels.ERROR)
            end
          end
        end,
      },
    }
  },
}
