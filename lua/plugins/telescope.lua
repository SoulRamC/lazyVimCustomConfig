return {
  "nvim-telescope/telescope.nvim",
  defaults = {
    file_ignore_patterns = { "node_modules" },
  },
  keys = {
    {
      "<leader>ff",
      false,
    },
    {
      -- change a keymap
      ";f",
      function()
        require("telescope.builtin").find_files({})
      end,
      desc = "Find Files",
    },
    -- display the last used search via telescope:
    {
      ";;",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "find in current buffer",
    },
    -- display the buffers via telescope:
    {
      "<leader><leader>",
      function()
        require("telescope.builtin").buffers({})
      end,
      desc = "find buffers",
    },
    -- add a keymap to browse plugin files
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
      end,
      desc = "Find Plugin File",
    },
  },
}
