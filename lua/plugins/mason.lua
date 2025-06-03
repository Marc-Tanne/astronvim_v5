-- Customize Mason

---@type LazySpec
return {
  {
    "williamboman/mason.nvim",
    opts = {
      pip = {
        upgrade_pip = true,
      },
    },
  },
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "jedi-language-server",
        "bash-language-server",
        "eslint-lsp",
        "terraform-ls",
        "yaml-language-server",
        "typescript-language-server",

        -- install formatters
        "stylua",
        "ruff",
        "eslint_d",
        "markdownlint",
        "shellcheck",
        "tflint",
        "yamllint",
        "prettier",
        "prettierd",

        -- install debuggers
        "debugpy",
        "bash-debug-adapter",
        "js-debug-adapter",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
