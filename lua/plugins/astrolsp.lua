---@type LazySpec
--- NOTE: see :h astrolsp
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = false, -- do not format on start, will be done on save
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = { },
        ignore_filetypes = {
          "html",
          "css",
        },
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
        single_file_support = true,
        filetypes = {
          "typescriptreact",
          "javascriptreact",
          "xml",
          "html",
          "html.handlebars",
          "jst",
          "aspx",
          "mason",
        },
      },
      html = {
        single_file_support = true,
        filetypes = { "html", "html.handlebars", "blade" },
        init_options = {
          configurationSection = { "html", "css", "javascript" },
          embeddedLanguages = {
            css = true,
            javascript = true,
          },
          provideFormatter = true,
        },
      },
      sqlls = {
        single_file_support = true,
      },
      --[[ astro = {
        single_file_support = true,
        filetypes = { 'astro', 'html' },
        root_dir = function() return vim.loop.cwd() end
      }, ]]
    },
    -- customize how language servers are attached
    handlers = { },
    -- Configure buffer local auto commands to add when attaching a language server
    autocmds = {
      -- highlight tokens matching the token behind the cursor
      lsp_document_highlight = {
        cond = "textDocument/documentHighlight",
        {
          event = { "CursorHold", "CursorHoldI" },
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },
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
