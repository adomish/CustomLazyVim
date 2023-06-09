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
      local telescope = require("telescope")
      telescope.load_extension("fzf")
      telescope.load_extension("file_browser")
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
    opts = function()
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
