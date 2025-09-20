-- lua/config/lspconfig.lua
local lspconfig = require("lspconfig")

-- Updated ltex configuration with reduced verbosity
lspconfig.ltex.setup({
  -- Disable progress messages
  handlers = {
    ["$/progress"] = function() end, -- Completely disable progress messages for ltex
  },
  settings = {
    ltex = {
      language = "auto",
      -- Reduce verbosity
      trace = {
        server = "off", -- Turn off server tracing
      },
      -- Add checkFrequency to reduce how often it checks
      checkFrequency = "save", -- Only check on save, not on every change
      additionalRules = {
        enablePickyRules = true,
        motherTongue = "en-US",
      },
      dictionary = {
        ["en-US"] = {},
        ["uk"] = {},
        ["ru"] = {},
      },
      disabledRules = {
        ["en-US"] = {},
        ["uk"] = {},
        ["ru"] = {},
      },
    },
  },
})

-- Python Language Server
lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "basic",
      },
    },
  },
})

-- TypeScript/JavaScript Language Server
lspconfig.ts_ls.setup({
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  },
})

-- HTML Language Server
lspconfig.html.setup({
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = true,
        },
      },
    },
  },
  settings = {
    html = {
      format = {
        templating = true,
        wrapLineLength = 120,
        wrapAttributes = "auto",
      },
      hover = {
        documentation = true,
        references = true,
      },
    },
  },
})

-- CSS Language Server
lspconfig.cssls.setup({
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = true,
        },
      },
    },
  },
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    less = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
})

-- AST-grep Language Server (C/C++)
lspconfig.ast_grep.setup({
  filetypes = { "c", "cpp", "h", "hpp" },
  settings = {
    astGrep = {
      -- Add your ast-grep specific settings here
    },
  },
})
