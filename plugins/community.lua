return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity/color/transparent-nvim" },
    { import = "astrocommunity/git/git-blame-nvim" },
    { import = "astrocommunity/git/blame-nvim" },
    { import = "astrocommunity/motion/leap-nvim" },

    { -- further customize the options set by the community
      "catppuccin",
      opts = {
        integrations = {
          sandwich = false,
          noice = true,
          mini = true,
          leap = true,
          markdown = true,
          neotest = true,
          cmp = true,
          overseer = true,
          lsp_trouble = true,
          rainbow_delimiters = true,
        },
      },
    },
    { import = "astrocommunity.completion.copilot-lua" },
    { -- further customize the options set by the community
      "zbirenbaum/copilot.lua",
      opts = {
        suggestion = {
          keymap = {
            accept = "<C-l>",
            accept_word = false,
            accept_line = false,
            next = "<C-.>",
            prev = "<C-,>",
            dismiss = "<C/>",
          },
        },
      },
    },
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
