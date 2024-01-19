return {
  {
    "jellydn/CopilotChat.nvim",
    branch = "canary",
    opts = {},
    config = function()
      vim.defer_fn(function()
        vim.cmd("UpdateRemotePlugins")
        vim.notify("CopilotChat - Updated remote plugins. Please restart Neovim.")
      end, 3000)
    end,
    event = "VeryLazy",
    keys = {
      { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
      { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    },
  },
  {
    "tzachar/local-highlight.nvim",
    event = "BufRead",
    config = function()
        require('local-highlight').setup({
          file_types = {'php', 'js'}, -- If this is given only attach to this
          -- OR attach to every filetype except:
          disable_file_types = {'tex'},
          hlgroup = 'Search',
          cw_hlgroup = nil,
          -- Whether to display highlights in INSERT mode or not
          insert_mode = false,
      })
    end
  },
  {
   "lewis6991/gitsigns.nvim" 
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
