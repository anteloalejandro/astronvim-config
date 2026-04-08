return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    handlers = {
      js = function(config)
        local dap = require "dap"

        dap.adapters.node = {
          type = "executable",
          command = "/usr/bin/node",
          args = {
            "--inspect",
            "--inspect-port=9229",
          }
        }

        dap.adapters.chrome = {
          type = "executable",
          command = "/usr/bin/chromium",
          -- args = { "--remote-debugging-port=9222" }
        }
      end,
    },
  }
}
