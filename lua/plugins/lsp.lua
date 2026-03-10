return {
  -- Tailwind: detect classes in common utility functions
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          settings = {
            tailwindCSS = {
              lint = {
                cssConflict = "ignore",
                invalidApply = "ignore",
                invalidConfigPath = "ignore",
                invalidScreen = "ignore",
                invalidTailwindDirective = "ignore",
                invalidVariant = "ignore",
                recommendedVariantOrder = "ignore",
              },
              experimental = {
                classRegex = {
                  { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "twMerge\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "twJoin\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "twx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "twx(?:\\.[a-z]+)?(?:\\([^)]*\\))?`([^`]*)`" },
                  { "twx\\.[a-z]+`([^`]*)`" },
                  { "twx(?:\\.[a-z]+)?(?:\\([^)]*\\))?(?:<[^>]*>)?\\(([\\s\\S]*?)\\);", "(?:'|\"|`)([^'\"`]*)(?:'|\"|`)" },
                  { "tv\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                },
              },
            },
          },
        },
      },
    },
  },

  -- Trigger tailwind completions inside strings
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        providers = {
          lsp = {
            override = {
              get_trigger_characters = function(self)
                local trigger_characters = self:get_trigger_characters()
                vim.list_extend(trigger_characters, { " ", '"', "'", "`" })
                return trigger_characters
              end,
            },
          },
        },
      },
    },
  },
}
