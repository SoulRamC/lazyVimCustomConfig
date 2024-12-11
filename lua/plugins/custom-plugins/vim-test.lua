return {
  "vim-test/vim-test",
  dependencies = { "preservim/vimux" },
  keys = {
    { "<leader>tt", "<cmd>TestNearest<cr>", desc = "Test Nearest" },
    { "<leader>tf", "<cmd>TestFile<cr>", desc = "Test File" },
    { "<leader>ta", "<cmd>TestSuite<cr>", desc = "Test Suite" },
    { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test Last" },
    { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Test Visit" },
  },
  config = function()
    -- Use vimux strategy for tests
    vim.cmd("let test#strategy = 'vimux'")

    -- Set Vimux to split the tmux pane vertically
    vim.g.VimuxOrientation = "h" -- 'v' for vertical split
    vim.g.VimuxHeight = "40" -- Optional: set height/width percentage
  end,
}
