return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
          root_dir = require("lspconfig.util").root_pattern("angular.json", "project.json"),
        },
        html = {
          filetypes = { "html", "htmlangular" },
        },
        -- Configure vtsls (LazyVim uses this, not ts_ls)
        vtsls = {
          settings = {
            typescript = {
              suggest = {
                completeFunctionCalls = true,
                includeCompletionsForModuleExports = true,
                includeAutomaticOptionalChainCompletions = true,
              },
              preferences = {
                includeCompletionsForImportStatements = true,
                includeCompletionsWithSnippetText = true,
                quotePreference = "single",
              },
            },
            javascript = {
              suggest = {
                completeFunctionCalls = true,
              },
            },
          },
        },
        emmet_ls = {
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "htmlangular" },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = true,
              },
            },
          },
        },
      },
    },
  },
 }
