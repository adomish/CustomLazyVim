return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      { "<leader>fs", "<cmd>Telescope file_browser<cr>", desc = "FileBrowser" },
    },

    opts = function()
      require("config.test")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    build = "make",
  },
  {
    "nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-cmdline",
    },
    config = function()
      local cmp = require("cmp")

      -- コマンドラインの補完
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })

      -- ヘルプ、パスの補完
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
    end,
  },
}
