return {
  "tpope/vim-commentary",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-eunuch",
  {
    "kana/vim-textobj-entire",
    dependencies = { "kana/vim-textobj-user" },
  },
  {
    "kana/vim-textobj-line",
    dependencies = { "kana/vim-textobj-user" },
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
  "vim-scripts/ReplaceWithRegister",
  { "windwp/nvim-autopairs", opts = {} },
  { "windwp/nvim-ts-autotag", opts = {} },
}
