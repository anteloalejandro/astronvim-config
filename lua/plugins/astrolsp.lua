---@type LazySpec
--- NOTE: see :h astrolsp
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = false,
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = false,
        allow_filetypes = {},
      },
      timeout_ms = 1000,
    },
    -- servers installed without mason
    servers = {
      "gdscript",
    },
    -- lspconfig configuration
    ---@diagnostic disable: missing-fields
    config = {
      emmet_ls = {
        filetypes = {
          "typescriptreact",
          "javascriptreact",
          "markdown.mdx",
          "xml",
          "html",
          "html.handlebars",
          "jst",
          "aspx",
        },
      },
      html = {
        filetypes = { "html", "html.handlebars", "blade" },
      },
      -- sqls = {
      --   -- on_attach = function () end,
      --   settings = {
      --     -- sqls = {
      --     --   -- NOTE: connections can be found on ~/.config/sqls/config.yml
      --     --
      --     --   connections = {
      --     --     {
      --     --       driver = "mysql",
      --     --       host = "localhost",
      --     --       port = 3306,
      --     --       user = "blog_admin",
      --     --       passwd = "blog_admin",
      --     --       dbName = "blog",
      --     --       proto = "tcp"
      --     --     },
      --     --   }
      --     -- }
      --   }
      -- },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            rustfmt = {
              -- use leptosfmt instead of rustfmt to support leptos view! macro formatting
              overrideCommand = { "leptosfmt", "--stdin", "--rustfmt" }
            },
            procMacro = {
              ignored = {
                leptos_macro = {
                  -- the #[server] macro does not transform the body of the function
                  "server"
                }
              }
            },
            -- cargo = {
            --   features = "all" -- asume all features of every crate are enabled
            -- }
          }
        }
      }
    },
    -- customize how language servers are attached
    handlers = {},
    -- Configure buffer local auto commands to add when attaching a language server
    autocmds = {},
    -- mappings to be set up on attaching of a language server
    mappings = {
      n = {
        gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
        },
      },
    },
    -- runs after attaching the LSP. See :h lspconfig-setup
    -- on_attach = function(client, bufnr) end,
  },
}
