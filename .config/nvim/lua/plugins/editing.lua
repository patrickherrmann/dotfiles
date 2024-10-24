return {
  { "echasnovski/mini.surround", version = false, opts = {} },
  { "echasnovski/mini.operators", version = false, opts = {} },
  {
    "echasnovski/mini.ai",
    version = false,
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
      local mini_ai = require("mini.ai")
      local spec_treesitter = mini_ai.gen_spec.treesitter
      require("mini.ai").setup({
        custom_textobjects = {
          F = mini_ai.gen_spec.function_call(),
          f = spec_treesitter({ a = "@function.outer", i = "@function.inner" }),
          c = spec_treesitter({
            a = { "@conditional.outer", "@loop.outer" },
            i = { "@conditional.inner", "@loop.inner" },
          }),
          e = function() -- "entire" buffer
            local from = { line = 1, col = 1 }
            local to = {
              line = vim.fn.line("$"),
              col = math.max(vim.fn.getline("$"):len(), 1),
            }
            return { from = from, to = to }
          end,
        },
      })
    end,
  },
  { "lewis6991/gitsigns.nvim", opts = {} },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  "patrickherrmann/vim-system-copy",
  { "windwp/nvim-autopairs", opts = {} },
  { "windwp/nvim-ts-autotag", opts = {} },
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },
}
