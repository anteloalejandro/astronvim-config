-- NOTE: ideally, all of these should be 8 lines tall.
-- Also, ALL lines in each header should have the same length
local headers = {
  {
    "                     d8               ",
    "                    `8P               ",
    "                                      ",
    "  88bd88b ?88   d8P  88b  88bd8b,d88b ",
    "  88P' ?8bd88  d8P'  88P  88P'`?8P'?8b",
    " d88   88P?8b ,88'  d88  d88  d88  88P",
    "d88'   88b`?888P'  d88' d88' d88'  88b",
    "",
  },
  {
    [[                        88                   ]],
    [[                        ""                   ]],
    [[                                             ]],
    [[8b,dPPYba,  8b       d8 88 88,dPYba,,adPYba, ]],
    [[88P'   `"8a `8b     d8' 88 88P'   "88"    "8a]],
    [[88       88  `8b   d8'  88 88      88      88]],
    [[88       88   `8b,d8'   88 88      88      88]],
    [[88       88     "8"     88 88      88      88]],
  },
  {
    [[                         o8o                   ]],
    [[                         `"'                   ]],
    [[ooo. .oo.   oooo    ooo oooo  ooo. .oo.  .oo.  ]],
    [[`888P"Y88b   `88.  .8'  `888  `888P"Y88bP"Y88b ]],
    [[ 888   888    `88..8'    888   888   888   888 ]],
    [[ 888   888     `888'     888   888   888   888 ]],
    [[o888o o888o     `8'     o888o o888o o888o o888o]],
    [[]]
  },
  {
    "                               ",
    "                  oo           ",
    "                               ",
    "88d888b. dP   .dP dP 88d8b.d8b.",
    "88'  `88 88   d8' 88 88'`88'`88",
    "88    88 88 .88'  88 88  88  88",
    "dP    dP 8888P'   dP dP  dP  dP",
    "                               "
  },
  {
    "                   ██            ",
    "                  ░░             ",
    " ███████  ██    ██ ██ ██████████ ",
    "░░██░░░██░██   ░██░██░░██░░██░░██",
    " ░██  ░██░░██ ░██ ░██ ░██ ░██ ░██",
    " ░██  ░██ ░░████  ░██ ░██ ░██ ░██",
    " ███  ░██  ░░██   ░██ ███ ░██ ░██",
    "░░░   ░░    ░░    ░░ ░░░  ░░  ░░ ",
  }
}

math.randomseed(os.time())

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat(headers[math.random(#headers)], "\n"),
      }
    }
  }
}
