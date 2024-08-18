return {
  -- oil nvim for file navigation
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  },
}
