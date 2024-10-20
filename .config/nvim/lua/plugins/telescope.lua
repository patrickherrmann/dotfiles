return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        pickers = {
          lsp_references = { show_line = false },
        },
      })

      telescope.load_extension("fzf")
      telescope.load_extension("ui-select")

      builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>p", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>;", builtin.buffers, { desc = "Find buffers" })
    end,
  },
}
