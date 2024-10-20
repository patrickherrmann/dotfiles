return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme nord]])
    end,
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_b = { "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_y = {},
      },
    },
  },
}
